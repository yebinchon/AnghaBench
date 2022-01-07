; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_is_end_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_is_end_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPI2_SAS_DEVICE_INFO_END_DEVICE = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_STP_TARGET = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_scsih_is_end_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_is_end_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MPI2_SAS_DEVICE_INFO_END_DEVICE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MPI2_SAS_DEVICE_INFO_STP_TARGET, align 4
  %14 = and i32 %12, %13
  %15 = or i32 %11, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %18 = and i32 %16, %17
  %19 = or i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
