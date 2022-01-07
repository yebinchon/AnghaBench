; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_func.c_storage_get_group_name_from_tracker.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_func.c_storage_get_group_name_from_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@g_tracker_group = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @storage_get_group_name_from_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_get_group_name_from_tracker() #0 {
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

13:                                               ; preds = %42, %0
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @memcpy(i32* %5, i32* %18, i32 4)
  %20 = call i32 @fdfs_server_sock_reset(i32* %5)
  %21 = call i32* @tracker_connect_server(i32* %5, i32* %6)
  store i32* %21, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %42

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @storage_do_get_group_name(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @tracker_close_connection_ex(i32* %27, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %47

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %2, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32* @tracker_connect_server(i32*, i32*) #1

declare dso_local i32 @storage_do_get_group_name(i32*) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
