; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@B43legacy_TMSLOW_PHYCLKEN = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_PHYRESET = common dso_local global i32 0, align 4
@SSB_TMSLOW = common dso_local global i32 0, align 4
@SSB_TMSLOW_FGC = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4
@B43legacy_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @B43legacy_TMSLOW_PHYCLKEN, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @B43legacy_TMSLOW_PHYRESET, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ssb_device_enable(i32 %15, i32 %16)
  %18 = call i32 @msleep(i32 2)
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SSB_TMSLOW, align 4
  %23 = call i32 @ssb_read32(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @B43legacy_TMSLOW_PHYRESET, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SSB_TMSLOW, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ssb_write32(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SSB_TMSLOW, align 4
  %41 = call i32 @ssb_read32(i32 %39, i32 %40)
  %42 = call i32 @msleep(i32 1)
  %43 = load i32, i32* @SSB_TMSLOW_FGC, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %48 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SSB_TMSLOW, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ssb_write32(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %54 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SSB_TMSLOW, align 4
  %57 = call i32 @ssb_read32(i32 %55, i32 %56)
  %58 = call i32 @msleep(i32 1)
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %60 = call i32 @b43legacy_switch_analog(%struct.b43legacy_wldev* %59, i32 1)
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %62 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %63 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @B43legacy_MACCTL_GMODE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %2
  %73 = load i32, i32* @B43legacy_MACCTL_GMODE, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %77 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %83

79:                                               ; preds = %2
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %81 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* @B43legacy_MACCTL_IHR_ENABLED, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %88 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @ssb_device_enable(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ssb_read32(i32, i32) #1

declare dso_local i32 @ssb_write32(i32, i32, i32) #1

declare dso_local i32 @b43legacy_switch_analog(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
