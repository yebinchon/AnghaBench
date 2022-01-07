; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_get_suggested_start_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_get_suggested_start_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }

@SCIC_SDS_SIGNATURE_FIS_TIMEOUT = common dso_local global i64 0, align 8
@SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT = common dso_local global i64 0, align 8
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.isci_host*)* @sci_controller_get_suggested_start_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sci_controller_get_suggested_start_timeout(%struct.isci_host* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.isci_host*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %4 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %5 = icmp ne %struct.isci_host* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %17

7:                                                ; preds = %1
  %8 = load i64, i64* @SCIC_SDS_SIGNATURE_FIS_TIMEOUT, align 8
  %9 = load i64, i64* @SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @SCI_MAX_PHYS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i64, i64* %2, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
