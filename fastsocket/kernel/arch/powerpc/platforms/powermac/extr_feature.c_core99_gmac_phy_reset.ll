; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_gmac_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_gmac_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_chip = type { i64 }
%struct.device_node = type { i32 }

@macio_chips = common dso_local global %struct.macio_chip* null, align 8
@macio_keylargo = common dso_local global i64 0, align 8
@macio_pangea = common dso_local global i64 0, align 8
@macio_intrepid = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@KL_GPIO_ETH_PHY_RESET = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTOUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_gmac_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_gmac_phy_reset(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.macio_chip*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.macio_chip*, %struct.macio_chip** @macio_chips, align 8
  %11 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %10, i64 0
  store %struct.macio_chip* %11, %struct.macio_chip** %9, align 8
  %12 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %13 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @macio_keylargo, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %19 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @macio_pangea, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.macio_chip*, %struct.macio_chip** %9, align 8
  %25 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @macio_intrepid, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @ENODEV, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %51

32:                                               ; preds = %23, %17, %3
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @LOCK(i64 %33)
  %35 = load i32, i32* @KL_GPIO_ETH_PHY_RESET, align 4
  %36 = load i32, i32* @KEYLARGO_GPIO_OUTPUT_ENABLE, align 4
  %37 = call i32 @MACIO_OUT8(i32 %35, i32 %36)
  %38 = load i32, i32* @KL_GPIO_ETH_PHY_RESET, align 4
  %39 = call i32 @MACIO_IN8(i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @UNLOCK(i64 %40)
  %42 = call i32 @mdelay(i32 10)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @LOCK(i64 %43)
  %45 = load i32, i32* @KL_GPIO_ETH_PHY_RESET, align 4
  %46 = load i32, i32* @KEYLARGO_GPIO_OUTOUT_DATA, align 4
  %47 = call i32 @MACIO_OUT8(i32 %45, i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @UNLOCK(i64 %48)
  %50 = call i32 @mdelay(i32 10)
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %32, %29
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
