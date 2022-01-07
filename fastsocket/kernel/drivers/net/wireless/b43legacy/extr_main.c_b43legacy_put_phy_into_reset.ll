; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_put_phy_into_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_put_phy_into_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }

@SSB_TMSLOW = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_PHYRESET = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_put_phy_into_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_put_phy_into_reset(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 0
  %7 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  store %struct.ssb_device* %7, %struct.ssb_device** %3, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %9 = load i32, i32* @SSB_TMSLOW, align 4
  %10 = call i32 @ssb_read32(%struct.ssb_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @B43legacy_TMSLOW_PHYRESET, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %22 = load i32, i32* @SSB_TMSLOW, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ssb_write32(%struct.ssb_device* %21, i32 %22, i32 %23)
  %25 = call i32 @msleep(i32 1)
  %26 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %27 = load i32, i32* @SSB_TMSLOW, align 4
  %28 = call i32 @ssb_read32(%struct.ssb_device* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @B43legacy_TMSLOW_PHYRESET, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %37 = load i32, i32* @SSB_TMSLOW, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ssb_write32(%struct.ssb_device* %36, i32 %37, i32 %38)
  %40 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
