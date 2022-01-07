; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_get_sys_files.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_mem.c_tracker_mem_get_sys_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACKER_SYS_FILE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tracker_mem_get_sys_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracker_mem_get_sys_files(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @fdfs_server_sock_reset(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @tracker_connect_server(i32* %9, i32* %5)
  store i32* %10, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @tracker_get_sys_files_start(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @tracker_close_connection_ex(i32* %19, i32 1)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TRACKER_SYS_FILE_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @tracker_mem_get_one_sys_file(i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %33, %23
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @tracker_get_sys_files_end(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @tracker_close_connection_ex(i32* %41, i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %18, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32* @tracker_connect_server(i32*, i32*) #1

declare dso_local i32 @tracker_get_sys_files_start(i32*) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

declare dso_local i32 @tracker_mem_get_one_sys_file(i32*, i32) #1

declare dso_local i32 @tracker_get_sys_files_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
