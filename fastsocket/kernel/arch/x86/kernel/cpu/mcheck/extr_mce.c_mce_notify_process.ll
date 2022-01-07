; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_notify_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_notify_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce_info = type { i64, i32 }

@MF_ACTION_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Lost physical address for unconsumed uncorrectable error\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TIF_MCE_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Uncorrected hardware memory error in user-access at %llx\00", align 1
@MF_MUST_KILL = common dso_local global i32 0, align 4
@MCE_VECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Memory error not recovered\00", align 1
@SIGBUS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mce_notify_process() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.mce_info*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.mce_info* (...) @mce_find_info()
  store %struct.mce_info* %4, %struct.mce_info** %2, align 8
  %5 = load i32, i32* @MF_ACTION_REQUIRED, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %7 = icmp ne %struct.mce_info* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @mce_panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  br label %10

10:                                               ; preds = %8, %0
  %11 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %12 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %1, align 8
  %16 = load i32, i32* @TIF_MCE_NOTIFY, align 4
  %17 = call i32 @clear_thread_flag(i32 %16)
  %18 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %19 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %23 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %10
  %27 = load i32, i32* @MF_MUST_KILL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %10
  %31 = load i64, i64* %1, align 8
  %32 = load i32, i32* @MCE_VECTOR, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @memory_failure(i64 %31, i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @SIGBUS, align 4
  %39 = load i32, i32* @current, align 4
  %40 = call i32 @force_sig(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %43 = call i32 @mce_clear_info(%struct.mce_info* %42)
  ret void
}

declare dso_local %struct.mce_info* @mce_find_info(...) #1

declare dso_local i32 @mce_panic(i8*, i32*, i32*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @memory_failure(i64, i32, i32) #1

declare dso_local i32 @force_sig(i32, i32) #1

declare dso_local i32 @mce_clear_info(%struct.mce_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
