; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_check_started_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_check_started_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i64, i32, i8* }

@smcVersion = common dso_local global i32 0, align 4
@SMC_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Bad shared memory version %d expected %d\0A\00", align 1
@FST_BADVERSION = common dso_local global i8* null, align 8
@endOfSmcSignature = common dso_local global i32 0, align 4
@END_SIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing shared memory signature\0A\00", align 1
@taskStatus = common dso_local global i32 0, align 4
@FST_RUNNING = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Firmware initialisation failed. Card halted\0A\00", align 1
@FST_HALTED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Unknown firmware status 0x%x\0A\00", align 1
@numberOfPorts = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Port count mismatch on card %d. Firmware thinks %d we say %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @check_started_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_started_ok(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %4 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %5 = load i32, i32* @smcVersion, align 4
  %6 = call i64 @FST_RDW(%struct.fst_card_info* %4, i32 %5)
  %7 = load i64, i64* @SMC_VERSION, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %11 = load i32, i32* @smcVersion, align 4
  %12 = call i64 @FST_RDW(%struct.fst_card_info* %10, i32 %11)
  %13 = load i64, i64* @SMC_VERSION, align 8
  %14 = call i32 (i8*, ...) @printk_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i8*, i8** @FST_BADVERSION, align 8
  %16 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %17 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %20 = load i32, i32* @endOfSmcSignature, align 4
  %21 = call i64 @FST_RDL(%struct.fst_card_info* %19, i32 %20)
  %22 = load i64, i64* @END_SIG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @printk_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** @FST_BADVERSION, align 8
  %27 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %28 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  br label %76

29:                                               ; preds = %18
  %30 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %31 = load i32, i32* @taskStatus, align 4
  %32 = call i32 @FST_RDB(%struct.fst_card_info* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** @FST_RUNNING, align 8
  %36 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %37 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %57

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printk_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** @FST_HALTED, align 8
  %44 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %45 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %76

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, ...) @printk_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** @FST_HALTED, align 8
  %53 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %54 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %76

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %59 = load i32, i32* @numberOfPorts, align 4
  %60 = call i64 @FST_RDL(%struct.fst_card_info* %58, i32 %59)
  %61 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %62 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %67 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %70 = load i32, i32* @numberOfPorts, align 4
  %71 = call i64 @FST_RDL(%struct.fst_card_info* %69, i32 %70)
  %72 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %73 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @printk_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %68, i64 %71, i64 %74)
  br label %76

76:                                               ; preds = %9, %24, %41, %49, %65, %57
  ret void
}

declare dso_local i64 @FST_RDW(%struct.fst_card_info*, i32) #1

declare dso_local i32 @printk_err(i8*, ...) #1

declare dso_local i64 @FST_RDL(%struct.fst_card_info*, i32) #1

declare dso_local i32 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i32 @printk_warn(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
