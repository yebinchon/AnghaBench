; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_add_device_component_by_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_add_device_component_by_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsas_devinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.mptsas_enclosure = type { i32 }

@MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@MPI_SAS_ENCLOS_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_ENCLOS_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @mptsas_add_device_component_by_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_add_device_component_by_fw(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mptsas_devinfo, align 4
  %8 = alloca %struct.mptsas_enclosure, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID, align 4
  %12 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @mptsas_sas_device_pg0(i32* %10, %struct.mptsas_devinfo* %7, i32 %13, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %45

22:                                               ; preds = %3
  %23 = call i32 @memset(%struct.mptsas_enclosure* %8, i32 0, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @MPI_SAS_ENCLOS_PGAD_FORM_HANDLE, align 4
  %26 = load i32, i32* @MPI_SAS_ENCLOS_PGAD_FORM_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mptsas_sas_enclosure_pg0(i32* %24, %struct.mptsas_enclosure* %8, i32 %27, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mptsas_add_device_component(i32* %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @mptsas_sas_device_pg0(i32*, %struct.mptsas_devinfo*, i32, i32) #1

declare dso_local i32 @memset(%struct.mptsas_enclosure*, i32, i32) #1

declare dso_local i32 @mptsas_sas_enclosure_pg0(i32*, %struct.mptsas_enclosure*, i32, i32) #1

declare dso_local i32 @mptsas_add_device_component(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
