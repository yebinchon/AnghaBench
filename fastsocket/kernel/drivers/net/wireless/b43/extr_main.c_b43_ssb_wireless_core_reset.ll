; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_ssb_wireless_core_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_ssb_wireless_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }

@B43_TMSLOW_GMODE = common dso_local global i32 0, align 4
@B43_TMSLOW_PHYCLKEN = common dso_local global i32 0, align 4
@B43_TMSLOW_PHYRESET = common dso_local global i32 0, align 4
@B43_PHYTYPE_N = common dso_local global i64 0, align 8
@B43_TMSLOW_PHY_BANDWIDTH_20MHZ = common dso_local global i32 0, align 4
@SSB_TMSLOW = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_ssb_wireless_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_ssb_wireless_core_reset(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ssb_device*, %struct.ssb_device** %11, align 8
  store %struct.ssb_device* %12, %struct.ssb_device** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @B43_TMSLOW_GMODE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @B43_TMSLOW_PHYCLKEN, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @B43_TMSLOW_PHYRESET, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @B43_PHYTYPE_N, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i32, i32* @B43_TMSLOW_PHY_BANDWIDTH_20MHZ, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %19
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @b43_device_enable(%struct.b43_wldev* %37, i32 %38)
  %40 = call i32 @msleep(i32 2)
  %41 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %42 = load i32, i32* @SSB_TMSLOW, align 4
  %43 = call i32 @ssb_read32(%struct.ssb_device* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @B43_TMSLOW_PHYRESET, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %52 = load i32, i32* @SSB_TMSLOW, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ssb_write32(%struct.ssb_device* %51, i32 %52, i32 %53)
  %55 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %56 = load i32, i32* @SSB_TMSLOW, align 4
  %57 = call i32 @ssb_read32(%struct.ssb_device* %55, i32 %56)
  %58 = call i32 @msleep(i32 1)
  %59 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %64 = load i32, i32* @SSB_TMSLOW, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ssb_write32(%struct.ssb_device* %63, i32 %64, i32 %65)
  %67 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %68 = load i32, i32* @SSB_TMSLOW, align 4
  %69 = call i32 @ssb_read32(%struct.ssb_device* %67, i32 %68)
  %70 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @b43_device_enable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
