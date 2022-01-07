; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i64, %struct.TYPE_4__, %struct.pmcraid_instance* }
%struct.TYPE_4__ = type { i64, i64, void (i64)* }
%struct.pmcraid_instance = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@INTRS_CRITICAL_OP_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"critical op is reset proceeding with reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"critical op is not yet reset waiting again\0A\00", align 1
@PMCRAID_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_reset_alert_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reset_alert_done(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %6 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %6, i32 0, i32 2
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  store %struct.pmcraid_instance* %8, %struct.pmcraid_instance** %3, align 8
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %10 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ioread32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @INTRS_CRITICAL_OP_IN_PROGRESS, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17, %1
  %23 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32 %28, i64 %29)
  %31 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %32 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %31)
  %33 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %34 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32 %37, i64 %38)
  br label %64

40:                                               ; preds = %17
  %41 = call i32 @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64, i64* @PMCRAID_CHECK_FOR_RESET_TIMEOUT, align 8
  %43 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %48 = ptrtoint %struct.pmcraid_cmd* %47 to i64
  %49 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %50 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @PMCRAID_CHECK_FOR_RESET_TIMEOUT, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store void (i64)* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_reset_alert_done to void (i64)*), void (i64)** %60, align 8
  %61 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %61, i32 0, i32 1
  %63 = call i32 @add_timer(%struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
