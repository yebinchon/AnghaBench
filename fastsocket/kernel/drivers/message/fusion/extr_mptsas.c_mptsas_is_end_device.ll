; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_is_end_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_is_end_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsas_devinfo = type { i32, i64 }

@MPI_SAS_DEVICE_INFO_END_DEVICE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_STP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mptsas_devinfo*)* @mptsas_is_end_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_is_end_device(%struct.mptsas_devinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mptsas_devinfo*, align 8
  store %struct.mptsas_devinfo* %0, %struct.mptsas_devinfo** %3, align 8
  %4 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %3, align 8
  %5 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %3, align 8
  %10 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MPI_SAS_DEVICE_INFO_END_DEVICE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %3, align 8
  %17 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MPI_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %3, align 8
  %22 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MPI_SAS_DEVICE_INFO_STP_TARGET, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %20, %25
  %27 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %3, align 8
  %28 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %15, %8, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
