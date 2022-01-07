; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_eh_target_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_eh_target_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Doing target reset due to an I/O command timeout.\0A\00", align 1
@PMCRAID_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@RESET_DEVICE_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @pmcraid_eh_target_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_eh_target_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %3 = load i32, i32* @KERN_INFO, align 4
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = call i32 @scmd_printk(i32 %3, %struct.scsi_cmnd* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = load i32, i32* @PMCRAID_INTERNAL_TIMEOUT, align 4
  %8 = load i32, i32* @RESET_DEVICE_TARGET, align 4
  %9 = call i32 @pmcraid_reset_device(%struct.scsi_cmnd* %6, i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @pmcraid_reset_device(%struct.scsi_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
