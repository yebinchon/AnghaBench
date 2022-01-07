; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_start_bist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_start_bist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_10__, %struct.ipr_ioa_cfg*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ipr_ioa_cfg = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IPR_MMIO = common dso_local global i64 0, align 8
@IPR_UPROCI_SIS64_START_BIST = common dso_local global i32 0, align 4
@PCI_BIST = common dso_local global i32 0, align 4
@PCI_BIST_START = common dso_local global i32 0, align 4
@ipr_reset_bist_done = common dso_local global i32 0, align 4
@IPR_WAIT_FOR_BIST_TIMEOUT = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_IOASC_PCI_ACCESS_ERROR = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_start_bist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_start_bist(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 1
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %3, align 8
  %8 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ENTER, align 4
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPR_MMIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @IPR_UPROCI_SIS64_START_BIST, align 4
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %20 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writel(i32 %18, i32 %22)
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %26 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PCI_BIST, align 4
  %29 = load i32, i32* @PCI_BIST_START, align 4
  %30 = call i32 @pci_write_config_byte(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* @ipr_reset_bist_done, align 4
  %37 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %38 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %40 = load i32, i32* @IPR_WAIT_FOR_BIST_TIMEOUT, align 4
  %41 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %39, i32 %40)
  %42 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %31
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %50 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %49, i32 0, i32 1
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %50, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pci_cfg_access_unlock(i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @IPR_IOASC_PCI_ACCESS_ERROR, align 4
  %59 = call i32 @cpu_to_be32(i32 %58)
  %60 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %61 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 8
  %65 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %55, %35
  %67 = load i32, i32* @LEAVE, align 4
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i32) #1

declare dso_local i32 @pci_cfg_access_unlock(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
