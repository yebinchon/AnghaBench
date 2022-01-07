; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_free_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_free_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32, i32 }
%struct.binder_thread = type { i32, i32, %struct.binder_transaction*, i32 }
%struct.binder_transaction = type { %struct.binder_transaction*, %struct.binder_thread*, %struct.binder_transaction*, %struct.TYPE_2__*, %struct.binder_thread*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@BINDER_DEBUG_DEAD_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"binder: release %d:%d transaction %d %s, still active\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@BR_DEAD_REPLY = common dso_local global i32 0, align 4
@BINDER_STAT_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_proc*, %struct.binder_thread*)* @binder_free_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_free_thread(%struct.binder_proc* %0, %struct.binder_thread* %1) #0 {
  %3 = alloca %struct.binder_proc*, align 8
  %4 = alloca %struct.binder_thread*, align 8
  %5 = alloca %struct.binder_transaction*, align 8
  %6 = alloca %struct.binder_transaction*, align 8
  %7 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %3, align 8
  store %struct.binder_thread* %1, %struct.binder_thread** %4, align 8
  store %struct.binder_transaction* null, %struct.binder_transaction** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %9 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %8, i32 0, i32 3
  %10 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %11 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %10, i32 0, i32 1
  %12 = call i32 @rb_erase(i32* %9, i32* %11)
  %13 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %14 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %13, i32 0, i32 2
  %15 = load %struct.binder_transaction*, %struct.binder_transaction** %14, align 8
  store %struct.binder_transaction* %15, %struct.binder_transaction** %5, align 8
  %16 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %17 = icmp ne %struct.binder_transaction* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %20 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %19, i32 0, i32 4
  %21 = load %struct.binder_thread*, %struct.binder_thread** %20, align 8
  %22 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %23 = icmp eq %struct.binder_thread* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  store %struct.binder_transaction* %25, %struct.binder_transaction** %6, align 8
  br label %26

26:                                               ; preds = %24, %18, %2
  br label %27

27:                                               ; preds = %91, %26
  %28 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %29 = icmp ne %struct.binder_transaction* %28, null
  br i1 %29, label %30, label %92

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @BINDER_DEBUG_DEAD_TRANSACTION, align 4
  %34 = load %struct.binder_proc*, %struct.binder_proc** %3, align 8
  %35 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %38 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %41 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %44 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %43, i32 0, i32 4
  %45 = load %struct.binder_thread*, %struct.binder_thread** %44, align 8
  %46 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %47 = icmp eq %struct.binder_thread* %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 @binder_debug(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i8* %49)
  %51 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %52 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %51, i32 0, i32 4
  %53 = load %struct.binder_thread*, %struct.binder_thread** %52, align 8
  %54 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %55 = icmp eq %struct.binder_thread* %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %30
  %57 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %58 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %60 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %59, i32 0, i32 4
  store %struct.binder_thread* null, %struct.binder_thread** %60, align 8
  %61 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %62 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %67 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %71 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %70, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %71, align 8
  br label %72

72:                                               ; preds = %65, %56
  %73 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %74 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %73, i32 0, i32 2
  %75 = load %struct.binder_transaction*, %struct.binder_transaction** %74, align 8
  store %struct.binder_transaction* %75, %struct.binder_transaction** %5, align 8
  br label %91

76:                                               ; preds = %30
  %77 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %78 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %77, i32 0, i32 1
  %79 = load %struct.binder_thread*, %struct.binder_thread** %78, align 8
  %80 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %81 = icmp eq %struct.binder_thread* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %84 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %83, i32 0, i32 1
  store %struct.binder_thread* null, %struct.binder_thread** %84, align 8
  %85 = load %struct.binder_transaction*, %struct.binder_transaction** %5, align 8
  %86 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %85, i32 0, i32 0
  %87 = load %struct.binder_transaction*, %struct.binder_transaction** %86, align 8
  store %struct.binder_transaction* %87, %struct.binder_transaction** %5, align 8
  br label %90

88:                                               ; preds = %76
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %82
  br label %91

91:                                               ; preds = %90, %72
  br label %27

92:                                               ; preds = %27
  %93 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %94 = icmp ne %struct.binder_transaction* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.binder_transaction*, %struct.binder_transaction** %6, align 8
  %97 = load i32, i32* @BR_DEAD_REPLY, align 4
  %98 = call i32 @binder_send_failed_reply(%struct.binder_transaction* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %101 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %100, i32 0, i32 0
  %102 = call i32 @binder_release_work(i32* %101)
  %103 = load %struct.binder_thread*, %struct.binder_thread** %4, align 8
  %104 = call i32 @kfree(%struct.binder_thread* %103)
  %105 = load i32, i32* @BINDER_STAT_THREAD, align 4
  %106 = call i32 @binder_stats_deleted(i32 %105)
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @binder_send_failed_reply(%struct.binder_transaction*, i32) #1

declare dso_local i32 @binder_release_work(i32*) #1

declare dso_local i32 @kfree(%struct.binder_thread*) #1

declare dso_local i32 @binder_stats_deleted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
