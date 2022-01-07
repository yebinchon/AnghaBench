; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reset_xaui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_xmac.c_falcon_reset_xaui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i64 }

@FRF_AB_XX_RST_XX_EN = common dso_local global i32 0, align 4
@FR_AB_XX_PWR_RST = common dso_local global i32 0, align 4
@FRF_AB_XX_SD_RST_ACT = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timed out waiting for XAUI/XGXS reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_reset_xaui(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %8, align 8
  store %struct.falcon_nic_data* %9, %struct.falcon_nic_data** %4, align 8
  %10 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %11 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FRF_AB_XX_RST_XX_EN, align 4
  %18 = call i32 @EFX_POPULATE_OWORD_1(i32 %16, i32 %17, i32 1)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load i32, i32* @FR_AB_XX_PWR_RST, align 4
  %21 = call i32 @efx_writeo(%struct.efx_nic* %19, i32* %5, i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = load i32, i32* @FR_AB_XX_PWR_RST, align 4
  %28 = call i32 @efx_reado(%struct.efx_nic* %26, i32* %5, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FRF_AB_XX_RST_XX_EN, align 4
  %31 = call i64 @EFX_OWORD_FIELD(i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @FRF_AB_XX_SD_RST_ACT, align 4
  %36 = call i64 @EFX_OWORD_FIELD(i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = call i32 @falcon_setup_xaui(%struct.efx_nic* %39)
  store i32 0, i32* %2, align 4
  br label %55

41:                                               ; preds = %33, %25
  %42 = call i32 @udelay(i32 10)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = load i32, i32* @hw, align 4
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_err(%struct.efx_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %38
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @falcon_setup_xaui(%struct.efx_nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
