; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_phy_is_wideport_member.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_port.c_phy_is_wideport_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32, i32 }
%struct.asd_sas_phy = type { i32, i32, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_sas_port*, %struct.asd_sas_phy*)* @phy_is_wideport_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_is_wideport_member(%struct.asd_sas_port* %0, %struct.asd_sas_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_port*, align 8
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca %struct.sas_ha_struct*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %4, align 8
  store %struct.asd_sas_phy* %1, %struct.asd_sas_phy** %5, align 8
  %7 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %8 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %7, i32 0, i32 2
  %9 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %6, align 8
  %10 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %11 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %17 = call i64 @memcmp(i32 %12, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %6, align 8
  %21 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %26 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %32 = call i64 @memcmp(i32 %27, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %24, %19
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
