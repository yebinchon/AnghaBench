; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_phy_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sas_phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sas_phy*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sas_phy_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phy_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_internal*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.sas_phy* @dev_to_phy(%struct.device* %6)
  store %struct.sas_phy* %7, %struct.sas_phy** %3, align 8
  %8 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %9 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.Scsi_Host* @dev_to_shost(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sas_internal* @to_sas_internal(i32 %15)
  store %struct.sas_internal* %16, %struct.sas_internal** %5, align 8
  %17 = load %struct.sas_internal*, %struct.sas_internal** %5, align 8
  %18 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.sas_phy*)*, i32 (%struct.sas_phy*)** %20, align 8
  %22 = icmp ne i32 (%struct.sas_phy*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.sas_internal*, %struct.sas_internal** %5, align 8
  %25 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.sas_phy*)*, i32 (%struct.sas_phy*)** %27, align 8
  %29 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %30 = call i32 %28(%struct.sas_phy* %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @put_device(i32 %34)
  %36 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %37 = call i32 @kfree(%struct.sas_phy* %36)
  ret void
}

declare dso_local %struct.sas_phy* @dev_to_phy(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
