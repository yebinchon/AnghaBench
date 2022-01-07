; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_relationship.c_relationship_thread_entrance.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_relationship.c_relationship_thread_entrance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@g_continue_flag = common dso_local global i64 0, align 8
@g_tracker_servers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@g_last_tracker_servers = common dso_local global i32* null, align 8
@MAX_SLEEP_SECONDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @relationship_thread_entrance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @relationship_thread_entrance(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i64, i64* @g_continue_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  store i32 1, i32* %4, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 1), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 0), align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = call i64 (...) @relationship_select_leader()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = call i64 (...) @rand()
  %19 = sitofp i64 %18 to double
  %20 = fmul double %19, 1.000000e+01
  %21 = load double, double* @RAND_MAX, align 8
  %22 = fdiv double %20, %21
  %23 = fptosi double %22 to i32
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %14
  br label %38

26:                                               ; preds = %11
  %27 = call i64 (...) @relationship_ping_leader()
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sge i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i32*, i32** @g_last_tracker_servers, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i32 (...) @tracker_mem_file_lock()
  %44 = load i32*, i32** @g_last_tracker_servers, align 8
  %45 = call i32 @free(i32* %44)
  store i32* null, i32** @g_last_tracker_servers, align 8
  %46 = call i32 (...) @tracker_mem_file_unlock()
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @sleep(i32 %48)
  br label %5

50:                                               ; preds = %5
  ret i8* null
}

declare dso_local i64 @relationship_select_leader(...) #1

declare dso_local i64 @rand(...) #1

declare dso_local i64 @relationship_ping_leader(...) #1

declare dso_local i32 @tracker_mem_file_lock(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @tracker_mem_file_unlock(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
