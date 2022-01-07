; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_4__, i32, %struct.pmcraid_instance* }
%struct.TYPE_4__ = type { i64, void (i64)*, i64 }
%struct.pmcraid_instance = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PMCRAID_RESET_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PMCRAID_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@pmcraid_reset_alert_done = common dso_local global i64 0, align 8
@DOORBELL_IOA_RESET_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"doorbells after reset alert: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PCI config is not accessible starting BIST\0A\00", align 1
@IOA_STATE_IN_HARD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_reset_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reset_alert(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %7 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %7, i32 0, i32 2
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %8, align 8
  store %struct.pmcraid_instance* %9, %struct.pmcraid_instance** %3, align 8
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_COMMAND, align 4
  %14 = call i32 @pci_read_config_word(i32 %12, i32 %13, i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load i32, i32* @PMCRAID_RESET_TIMEOUT, align 4
  %25 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %28 = ptrtoint %struct.pmcraid_cmd* %27 to i64
  %29 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @PMCRAID_CHECK_FOR_RESET_TIMEOUT, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* @pmcraid_reset_alert_done, align 8
  %39 = inttoptr i64 %38 to void (i64)*
  %40 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store void (i64)* %39, void (i64)** %42, align 8
  %43 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %43, i32 0, i32 0
  %45 = call i32 @add_timer(%struct.TYPE_4__* %44)
  %46 = load i32, i32* @DOORBELL_IOA_RESET_ALERT, align 4
  %47 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %48 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iowrite32(i32 %46, i32 %50)
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %53 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ioread32(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %66

59:                                               ; preds = %18, %1
  %60 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @IOA_STATE_IN_HARD_RESET, align 4
  %62 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %63 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %65 = call i32 @pmcraid_start_bist(%struct.pmcraid_cmd* %64)
  br label %66

66:                                               ; preds = %59, %23
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_info(i8*, ...) #1

declare dso_local i32 @pmcraid_start_bist(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
