; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_gpio_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_gpio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ssb_device* }
%struct.ssb_device = type { i32 }

@B43legacy_GPIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_gpio_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_gpio_cleanup(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.ssb_device*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %3, align 8
  store %struct.ssb_device* null, %struct.ssb_device** %5, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = inttoptr i64 %14 to %struct.ssb_device*
  br label %20

18:                                               ; preds = %1
  %19 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi %struct.ssb_device* [ %17, %16 ], [ %19, %18 ]
  store %struct.ssb_device* %21, %struct.ssb_device** %4, align 8
  %22 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %23 = icmp ne %struct.ssb_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %27 = load i32, i32* @B43legacy_GPIO_CONTROL, align 4
  %28 = call i32 @ssb_write32(%struct.ssb_device* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
