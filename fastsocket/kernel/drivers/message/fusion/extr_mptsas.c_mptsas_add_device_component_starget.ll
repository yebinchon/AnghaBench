; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_add_device_component_starget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_add_device_component_starget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sas_rphy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mptsas_phyinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mptsas_enclosure = type { i32 }

@MPI_SAS_ENCLOS_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_ENCLOS_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.scsi_target*)* @mptsas_add_device_component_starget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_add_device_component_starget(i32* %0, %struct.scsi_target* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sas_rphy*, align 8
  %7 = alloca %struct.mptsas_phyinfo*, align 8
  %8 = alloca %struct.mptsas_enclosure, align 4
  store i32* %0, i32** %3, align 8
  store %struct.scsi_target* %1, %struct.scsi_target** %4, align 8
  store %struct.mptsas_phyinfo* null, %struct.mptsas_phyinfo** %7, align 8
  %9 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sas_rphy* @dev_to_rphy(i32 %12)
  store %struct.sas_rphy* %13, %struct.sas_rphy** %6, align 8
  %14 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %19 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(i32* %17, i32 %21)
  store %struct.mptsas_phyinfo* %22, %struct.mptsas_phyinfo** %7, align 8
  %23 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %24 = icmp ne %struct.mptsas_phyinfo* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %61

26:                                               ; preds = %2
  %27 = call i32 @memset(%struct.mptsas_enclosure* %8, i32 0, i32 4)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @MPI_SAS_ENCLOS_PGAD_FORM_HANDLE, align 4
  %30 = load i32, i32* @MPI_SAS_ENCLOS_PGAD_FORM_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %33 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mptsas_sas_enclosure_pg0(i32* %28, %struct.mptsas_enclosure* %8, i32 %31, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %39 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %43 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %47 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %51 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %7, align 8
  %55 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mptsas_enclosure, %struct.mptsas_enclosure* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mptsas_add_device_component(i32* %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(i32*, i32) #1

declare dso_local i32 @memset(%struct.mptsas_enclosure*, i32, i32) #1

declare dso_local i32 @mptsas_sas_enclosure_pg0(i32*, %struct.mptsas_enclosure*, i32, i32) #1

declare dso_local i32 @mptsas_add_device_component(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
