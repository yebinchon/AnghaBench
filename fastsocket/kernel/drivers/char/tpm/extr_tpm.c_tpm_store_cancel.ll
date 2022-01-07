; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_store_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_store_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.tpm_chip.0*)* }
%struct.tpm_chip.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm_store_cancel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.tpm_chip* @dev_get_drvdata(%struct.device* %11)
  store %struct.tpm_chip* %12, %struct.tpm_chip** %10, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %14 = icmp eq %struct.tpm_chip* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %25

16:                                               ; preds = %4
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %18 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tpm_chip.0*)*, i32 (%struct.tpm_chip.0*)** %19, align 8
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %22 = bitcast %struct.tpm_chip* %21 to %struct.tpm_chip.0*
  %23 = call i32 %20(%struct.tpm_chip.0* %22)
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local %struct.tpm_chip* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
