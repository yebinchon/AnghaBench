; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32, %struct.asd_ascb* }
%struct.asd_ascb = type { i32*, i64 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"task not done, clearing nexus\0A\00", align 1
@AIC94XX_SCB_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"came back from clear nexus\0A\00", align 1
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @asd_clear_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_clear_nexus(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ascb*, align 8
  %6 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %7 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %9 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %8, i32 0, i32 2
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %9, align 8
  store %struct.asd_ascb* %10, %struct.asd_ascb** %5, align 8
  %11 = load i32, i32* @completion, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  %13 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %14 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %13, i32 0, i32 0
  store i32* @completion, i32** %14, align 8
  %15 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %17 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %22 = call i32 @asd_clear_nexus_tag(%struct.sas_task* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %25 = call i32 @asd_clear_nexus_index(%struct.sas_task* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @AIC94XX_SCB_TIMEOUT, align 4
  %28 = call i32 @wait_for_completion_timeout(i32* @completion, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %30 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %42 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %51 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @asd_clear_nexus_tag(%struct.sas_task*) #1

declare dso_local i32 @asd_clear_nexus_index(%struct.sas_task*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
