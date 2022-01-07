; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_probe_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_probe_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsas_devinfo = type { i32, i32, i32 }
%struct.mptsas_phyinfo = type { i32 }

@MPI_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_STP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mptsas_probe_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_probe_devices(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mptsas_devinfo, align 4
  %5 = alloca %struct.mptsas_phyinfo*, align 8
  store i32* %0, i32** %2, align 8
  store i32 65535, i32* %3, align 4
  br label %6

6:                                                ; preds = %50, %49, %44, %38, %25, %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @mptsas_sas_device_pg0(i32* %7, %struct.mptsas_devinfo* %4, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %54

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MPI_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %19 = load i32, i32* @MPI_SAS_DEVICE_INFO_STP_TARGET, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %6

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %4, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %26
  br label %6

39:                                               ; preds = %32
  %40 = load i32*, i32** %2, align 8
  %41 = call %struct.mptsas_phyinfo* @mptsas_refreshing_device_handles(i32* %40, %struct.mptsas_devinfo* %4)
  store %struct.mptsas_phyinfo* %41, %struct.mptsas_phyinfo** %5, align 8
  %42 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %43 = icmp ne %struct.mptsas_phyinfo* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %6

45:                                               ; preds = %39
  %46 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %47 = call i64 @mptsas_get_rphy(%struct.mptsas_phyinfo* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %6

50:                                               ; preds = %45
  %51 = load i32*, i32** %2, align 8
  %52 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %5, align 8
  %53 = call i32 @mptsas_add_end_device(i32* %51, %struct.mptsas_phyinfo* %52)
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mptsas_sas_device_pg0(i32*, %struct.mptsas_devinfo*, i32, i32) #1

declare dso_local %struct.mptsas_phyinfo* @mptsas_refreshing_device_handles(i32*, %struct.mptsas_devinfo*) #1

declare dso_local i64 @mptsas_get_rphy(%struct.mptsas_phyinfo*) #1

declare dso_local i32 @mptsas_add_end_device(i32*, %struct.mptsas_phyinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
