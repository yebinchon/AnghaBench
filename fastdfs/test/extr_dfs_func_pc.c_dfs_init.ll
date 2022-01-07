; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_dfs_init.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_dfs_func_pc.c_dfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pTrackerServer = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfs_init(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @fdfs_client_init(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = call i32* (...) @tracker_get_connection()
  store i32* %13, i32** @pTrackerServer, align 8
  %14 = load i32*, i32** @pTrackerServer, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ECONNREFUSED, align 4
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i64 [ %20, %19 ], [ %23, %21 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @fdfs_client_init(i8*) #1

declare dso_local i32* @tracker_get_connection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
