; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reconfigure_mac_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reconfigure_mac_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_link_state }
%struct.efx_link_state = type { i32, i32 }

@FRF_AB_MAC_XOFF_VAL = common dso_local global i32 0, align 4
@FRF_AB_MAC_BCAD_ACPT = common dso_local global i32 0, align 4
@FRF_AB_MAC_UC_PROM = common dso_local global i32 0, align 4
@FRF_AB_MAC_LINK_STATUS = common dso_local global i32 0, align 4
@FRF_AB_MAC_SPEED = common dso_local global i32 0, align 4
@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FRF_BB_TXFIFO_DRAIN_EN = common dso_local global i32 0, align 4
@FR_AB_MAC_CTRL = common dso_local global i32 0, align 4
@FR_AZ_RX_CFG = common dso_local global i32 0, align 4
@FRF_AZ_RX_XOFF_MAC_EN = common dso_local global i32 0, align 4
@FRF_BZ_RX_INGR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @falcon_reconfigure_mac_wrapper(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_link_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 2
  store %struct.efx_link_state* %8, %struct.efx_link_state** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ACCESS_ONCE(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.efx_link_state*, %struct.efx_link_state** %3, align 8
  %18 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 10000, label %20
    i32 1000, label %21
    i32 100, label %22
  ]

20:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  br label %24

21:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  br label %24

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %22, %21, %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FRF_AB_MAC_XOFF_VAL, align 4
  %27 = load i32, i32* @FRF_AB_MAC_BCAD_ACPT, align 4
  %28 = load i32, i32* @FRF_AB_MAC_UC_PROM, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FRF_AB_MAC_LINK_STATUS, align 4
  %33 = load i32, i32* @FRF_AB_MAC_SPEED, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @EFX_POPULATE_OWORD_5(i32 %25, i32 %26, i32 65535, i32 %27, i32 1, i32 %28, i32 %31, i32 %32, i32 1, i32 %33, i32 %34)
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = call i64 @efx_nic_rev(%struct.efx_nic* %36)
  %38 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FRF_BB_TXFIFO_DRAIN_EN, align 4
  %43 = load %struct.efx_link_state*, %struct.efx_link_state** %3, align 8
  %44 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i1 [ true, %40 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @EFX_SET_OWORD_FIELD(i32 %41, i32 %42, i32 %52)
  br label %54

54:                                               ; preds = %50, %24
  %55 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %56 = load i32, i32* @FR_AB_MAC_CTRL, align 4
  %57 = call i32 @efx_writeo(%struct.efx_nic* %55, i32* %4, i32 %56)
  %58 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %59 = call i32 @falcon_push_multicast_hash(%struct.efx_nic* %58)
  %60 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %61 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %62 = call i32 @efx_reado(%struct.efx_nic* %60, i32* %4, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FRF_AZ_RX_XOFF_MAC_EN, align 4
  %65 = call i32 @EFX_SET_OWORD_FIELD(i32 %63, i32 %64, i32 1)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %67 = call i64 @efx_nic_rev(%struct.efx_nic* %66)
  %68 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @FRF_BZ_RX_INGR_EN, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @EFX_SET_OWORD_FIELD(i32 %71, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %54
  %79 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %80 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %81 = call i32 @efx_writeo(%struct.efx_nic* %79, i32* %4, i32 %80)
  ret void
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @falcon_push_multicast_hash(%struct.efx_nic*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
