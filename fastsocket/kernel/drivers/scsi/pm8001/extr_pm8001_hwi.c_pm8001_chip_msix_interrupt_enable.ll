; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_msix_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_msix_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MSIX_TABLE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@MSIX_TABLE_BASE = common dso_local global i64 0, align 8
@MSIX_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@MSGU_ODCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i32)* @pm8001_chip_msix_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_chip_msix_interrupt_enable(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MSIX_TABLE_ELEMENT_SIZE, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @MSIX_TABLE_BASE, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MSIX_INTERRUPT_ENABLE, align 4
  %18 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %15, i32 0, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = load i32, i32* @MSGU_ODCR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %21, i32 0, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
