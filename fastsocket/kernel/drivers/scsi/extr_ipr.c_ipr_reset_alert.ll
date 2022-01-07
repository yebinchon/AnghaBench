; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_alert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_4__, i32, %struct.ipr_ioa_cfg* }
%struct.TYPE_4__ = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@IPR_UPROCI_RESET_ALERT = common dso_local global i32 0, align 4
@ipr_reset_wait_to_start_bist = common dso_local global i32 0, align 4
@ipr_reset_block_config_access = common dso_local global i32 0, align 4
@IPR_WAIT_FOR_RESET_TIMEOUT = common dso_local global i32 0, align 4
@IPR_CHECK_FOR_RESET_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_alert(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 2
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %3, align 8
  %9 = load i32, i32* @ENTER, align 4
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_COMMAND, align 4
  %14 = call i32 @pci_read_config_word(i32 %12, i32 %13, i32* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %25 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %24, i32 -1)
  %26 = load i32, i32* @IPR_UPROCI_RESET_ALERT, align 4
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @writel(i32 %26, i32 %30)
  %32 = load i32, i32* @ipr_reset_wait_to_start_bist, align 4
  %33 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %34 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %18, %1
  %36 = load i32, i32* @ipr_reset_block_config_access, align 4
  %37 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %38 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32, i32* @IPR_WAIT_FOR_RESET_TIMEOUT, align 4
  %41 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %42 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %45 = load i32, i32* @IPR_CHECK_FOR_RESET_TIMEOUT, align 4
  %46 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %44, i32 %45)
  %47 = load i32, i32* @LEAVE, align 4
  %48 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  ret i32 %48
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
