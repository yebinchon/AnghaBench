; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { i32, i32, i64 }

@VIA_CRDR_PCICLKGATT = common dso_local global i64 0, align 8
@MMC_VDD_165_195 = common dso_local global i32 0, align 4
@VIA_CRDR_PCICLKGATT_3V3 = common dso_local global i32 0, align 4
@VIA_CRDR_PCICLKGATT_PAD_PWRON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*, i16, i32)* @via_sdc_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_set_power(%struct.via_crdr_mmc_host* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.via_crdr_mmc_host*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %10 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %9, i32 0, i32 1
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = shl i32 1, %14
  %16 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VIA_CRDR_PCICLKGATT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %25 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MMC_VDD_165_195, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @VIA_CRDR_PCICLKGATT_3V3, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @VIA_CRDR_PCICLKGATT_3V3, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @VIA_CRDR_PCICLKGATT_PAD_PWRON, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @VIA_CRDR_PCICLKGATT_PAD_PWRON, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %53 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VIA_CRDR_PCICLKGATT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i32 %51, i64 %56)
  %58 = call i32 (...) @mmiowb()
  %59 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %60 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %59, i32 0, i32 1
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %4, align 8
  %64 = call i32 @via_pwron_sleep(%struct.via_crdr_mmc_host* %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @via_pwron_sleep(%struct.via_crdr_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
