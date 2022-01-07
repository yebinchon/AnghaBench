; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reset_sram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_reset_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@FR_AB_GPIO_CTL = common dso_local global i32 0, align 4
@FRF_AB_GPIO1_OEN = common dso_local global i32 0, align 4
@FRF_AB_GPIO1_OUT = common dso_local global i32 0, align 4
@FRF_AZ_SRM_INIT_EN = common dso_local global i32 0, align 4
@FRF_AZ_SRM_NB_SZ = common dso_local global i32 0, align 4
@FR_AZ_SRM_CFG = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"waiting for SRAM reset (attempt %d)...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SRAM reset complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"timed out waiting for SRAM reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_reset_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_reset_sram(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* @FR_AB_GPIO_CTL, align 4
  %9 = call i32 @efx_reado(%struct.efx_nic* %7, i32* %5, i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FRF_AB_GPIO1_OEN, align 4
  %12 = call i32 @EFX_SET_OWORD_FIELD(i32 %10, i32 %11, i32 1)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FRF_AB_GPIO1_OUT, align 4
  %15 = call i32 @EFX_SET_OWORD_FIELD(i32 %13, i32 %14, i32 1)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = load i32, i32* @FR_AB_GPIO_CTL, align 4
  %18 = call i32 @efx_writeo(%struct.efx_nic* %16, i32* %5, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @FRF_AZ_SRM_INIT_EN, align 4
  %21 = load i32, i32* @FRF_AZ_SRM_NB_SZ, align 4
  %22 = call i32 @EFX_POPULATE_OWORD_2(i32 %19, i32 %20, i32 1, i32 %21, i32 0)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32, i32* @FR_AZ_SRM_CFG, align 4
  %25 = call i32 @efx_writeo(%struct.efx_nic* %23, i32* %4, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %52, %1
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = load i32, i32* @hw, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 50
  %36 = call i32 @schedule_timeout_uninterruptible(i32 %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = load i32, i32* @FR_AZ_SRM_CFG, align 4
  %39 = call i32 @efx_reado(%struct.efx_nic* %37, i32* %4, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FRF_AZ_SRM_INIT_EN, align 4
  %42 = call i32 @EFX_OWORD_FIELD(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %26
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = load i32, i32* @hw, align 4
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = icmp slt i32 %54, 20
  br i1 %55, label %26, label %56

56:                                               ; preds = %52
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = load i32, i32* @hw, align 4
  %59 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @netif_err(%struct.efx_nic* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %56, %44
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
