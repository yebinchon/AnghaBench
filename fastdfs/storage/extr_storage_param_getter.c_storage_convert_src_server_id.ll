; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_param_getter.c_storage_convert_src_server_id.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_param_getter.c_storage_convert_src_server_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@g_tracker_group = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_group_name = common dso_local global i32 0, align 4
@g_sync_src_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @storage_convert_src_server_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_convert_src_server_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @ENOENT, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_group, i32 0, i32 1), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_group, i32 0, i32 0), align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_group, i32 0, i32 1), align 8
  store i32* %12, i32** %2, align 8
  br label %13

13:                                               ; preds = %45, %0
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @memcpy(i32* %5, i32* %18, i32 4)
  %20 = call i32 @fdfs_server_sock_reset(i32* %5)
  %21 = call i32* @tracker_connect_server(i32* %5, i32* %6)
  store i32* %21, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %45

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @g_group_name, align 4
  %27 = load i32, i32* @g_sync_src_id, align 4
  %28 = load i32, i32* @g_sync_src_id, align 4
  %29 = call i32 @tracker_get_storage_id(i32* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = icmp ne i32 %34, %35
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @tracker_close_connection_ex(i32* %30, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %50

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %2, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32* @tracker_connect_server(i32*, i32*) #1

declare dso_local i32 @tracker_get_storage_id(i32*, i32, i32, i32) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
