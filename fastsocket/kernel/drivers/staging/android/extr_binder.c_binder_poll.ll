; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.binder_proc* }
%struct.binder_proc = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.binder_thread = type { i64, i32, i32, i32* }

@binder_lock = common dso_local global i32 0, align 4
@BR_OK = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @binder_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.binder_proc*, align 8
  %7 = alloca %struct.binder_thread*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  store %struct.binder_proc* %11, %struct.binder_proc** %6, align 8
  store %struct.binder_thread* null, %struct.binder_thread** %7, align 8
  %12 = call i32 @mutex_lock(i32* @binder_lock)
  %13 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %14 = call %struct.binder_thread* @binder_get_thread(%struct.binder_proc* %13)
  store %struct.binder_thread* %14, %struct.binder_thread** %7, align 8
  %15 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %16 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %21 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %20, i32 0, i32 2
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %26 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BR_OK, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %19, %2
  %31 = phi i1 [ false, %19 ], [ false, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = call i32 @mutex_unlock(i32* @binder_lock)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %38 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %39 = call i64 @binder_has_proc_work(%struct.binder_proc* %37, %struct.binder_thread* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @POLLIN, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %36
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %46 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %45, i32 0, i32 0
  %47 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %48 = call i32 @poll_wait(%struct.file* %44, i32* %46, %struct.poll_table_struct* %47)
  %49 = load %struct.binder_proc*, %struct.binder_proc** %6, align 8
  %50 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %51 = call i64 @binder_has_proc_work(%struct.binder_proc* %49, %struct.binder_thread* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @POLLIN, align 4
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %43
  br label %74

56:                                               ; preds = %30
  %57 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %58 = call i64 @binder_has_thread_work(%struct.binder_thread* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @POLLIN, align 4
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %56
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %65 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %64, i32 0, i32 1
  %66 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %67 = call i32 @poll_wait(%struct.file* %63, i32* %65, %struct.poll_table_struct* %66)
  %68 = load %struct.binder_thread*, %struct.binder_thread** %7, align 8
  %69 = call i64 @binder_has_thread_work(%struct.binder_thread* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @POLLIN, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %55
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %60, %53, %41
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.binder_thread* @binder_get_thread(%struct.binder_proc*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @binder_has_proc_work(%struct.binder_proc*, %struct.binder_thread*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i64 @binder_has_thread_work(%struct.binder_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
