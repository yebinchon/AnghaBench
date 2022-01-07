; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_internal.h_sas_phy_set_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_internal.h_sas_phy_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { %struct.sas_phy* }
%struct.sas_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.domain_device = type { i64, i32 }

@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_sas_phy*, %struct.domain_device*)* @sas_phy_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phy_set_target(%struct.asd_sas_phy* %0, %struct.domain_device* %1) #0 {
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.sas_phy*, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  store %struct.domain_device* %1, %struct.domain_device** %4, align 8
  %6 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %7 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %6, i32 0, i32 0
  %8 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  store %struct.sas_phy* %8, %struct.sas_phy** %5, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = icmp ne %struct.domain_device* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %13 = call i64 @dev_is_sata(%struct.domain_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @SAS_END_DEVICE, align 4
  %17 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %18 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  br label %27

20:                                               ; preds = %11
  %21 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %22 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %25 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %32 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %42

34:                                               ; preds = %2
  %35 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %36 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %37 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %40 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %27
  ret void
}

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
