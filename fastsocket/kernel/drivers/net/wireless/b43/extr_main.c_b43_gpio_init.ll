; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ssb_device = type { i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_GPOUTSMSK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_MASK = common dso_local global i32 0, align 4
@B43_BFL_PACTRL = common dso_local global i32 0, align 4
@B43_GPIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gpio_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %8 = load i32, i32* @B43_MACCTL_GPOUTSMSK, align 4
  %9 = xor i32 %8, -1
  %10 = call i32 @b43_maskset32(%struct.b43_wldev* %6, i32 %7, i32 %9, i32 0)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %13 = call i32 @b43_maskset16(%struct.b43_wldev* %11, i32 %12, i32 -1, i32 15)
  store i32 31, i32* %4, align 4
  store i32 15, i32* %5, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 17153
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 96
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 96
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 21332
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 2
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @B43_BFL_PACTRL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %52 = call i32 @b43_read16(%struct.b43_wldev* %50, i32 %51)
  %53 = or i32 %52, 512
  %54 = call i32 @b43_write16(%struct.b43_wldev* %48, i32 %49, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, 512
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, 512
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %47, %36
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %65 [
  ]

65:                                               ; preds = %59
  ret i32 0
}

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_maskset16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
