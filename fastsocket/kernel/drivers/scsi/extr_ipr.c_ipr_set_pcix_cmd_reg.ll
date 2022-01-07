; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_set_pcix_cmd_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_set_pcix_cmd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_CMD = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to setup PCI-X command register\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*)* @ipr_set_pcix_cmd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_set_pcix_cmd_reg(%struct.ipr_ioa_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  %5 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %6 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %9 = call i32 @pci_find_capability(%struct.TYPE_3__* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @PCI_X_CMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @pci_write_config_word(%struct.TYPE_3__* %15, i64 %19, i32 %22)
  %24 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pci_find_capability(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @pci_write_config_word(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
