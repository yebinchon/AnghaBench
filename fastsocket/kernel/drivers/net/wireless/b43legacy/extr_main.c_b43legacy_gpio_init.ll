; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.ssb_bus* }
%struct.TYPE_7__ = type { i32 }
%struct.ssb_bus = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MMIO_GPIO_MASK = common dso_local global i32 0, align 4
@B43legacy_BFL_PACTRL = common dso_local global i32 0, align 4
@B43legacy_GPIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_gpio_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca %struct.ssb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %4, align 8
  store %struct.ssb_device* null, %struct.ssb_device** %6, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %17 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %18 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %16, i32 %17)
  %19 = and i32 %18, -49153
  %20 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %14, i32 %15, i32 %19)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = load i32, i32* @B43legacy_MMIO_GPIO_MASK, align 4
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %24 = load i32, i32* @B43legacy_MMIO_GPIO_MASK, align 4
  %25 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %23, i32 %24)
  %26 = or i32 %25, 15
  %27 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %21, i32 %22, i32 %26)
  store i32 31, i32* %7, align 4
  store i32 15, i32* %8, align 4
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %31, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 17153
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 96
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 96
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %43 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.ssb_bus*, %struct.ssb_bus** %45, align 8
  %47 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @B43legacy_BFL_PACTRL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %55 = load i32, i32* @B43legacy_MMIO_GPIO_MASK, align 4
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = load i32, i32* @B43legacy_MMIO_GPIO_MASK, align 4
  %58 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %56, i32 %57)
  %59 = or i32 %58, 512
  %60 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %54, i32 %55, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 512
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 512
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %53, %41
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %67 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, 16
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %78 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = inttoptr i64 %80 to %struct.ssb_device*
  br label %86

84:                                               ; preds = %76
  %85 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi %struct.ssb_device* [ %83, %82 ], [ %85, %84 ]
  store %struct.ssb_device* %87, %struct.ssb_device** %5, align 8
  %88 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %89 = icmp ne %struct.ssb_device* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %103

91:                                               ; preds = %86
  %92 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %93 = load i32, i32* @B43legacy_GPIO_CONTROL, align 4
  %94 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %95 = load i32, i32* @B43legacy_GPIO_CONTROL, align 4
  %96 = call i32 @ssb_read32(%struct.ssb_device* %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @ssb_write32(%struct.ssb_device* %92, i32 %93, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %91, %90
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
