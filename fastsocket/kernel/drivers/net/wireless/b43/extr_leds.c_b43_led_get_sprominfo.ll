; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_led_get_sprominfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_leds.c_b43_led_get_sprominfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@B43_LED_ACTIVITY = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPAQ = common dso_local global i32 0, align 4
@B43_LED_RADIO_ALL = common dso_local global i32 0, align 4
@B43_LED_RADIO_B = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ASUSTEK = common dso_local global i32 0, align 4
@B43_LED_ASSOC = common dso_local global i32 0, align 4
@B43_LED_RADIO_A = common dso_local global i32 0, align 4
@B43_LED_OFF = common dso_local global i32 0, align 4
@B43_LED_BEHAVIOUR = common dso_local global i32 0, align 4
@B43_LED_ACTIVELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32*, i32*)* @b43_led_get_sprominfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_led_get_sprominfo(%struct.b43_wldev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %90

47:                                               ; preds = %4
  %48 = load i32*, i32** %8, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %85 [
    i32 0, label %50
    i32 1, label %65
    i32 2, label %79
    i32 3, label %82
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* @B43_LED_ACTIVITY, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 1, i32* %53, align 4
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %55 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PCI_VENDOR_ID_COMPAQ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @B43_LED_RADIO_ALL, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %50
  br label %89

65:                                               ; preds = %47
  %66 = load i32, i32* @B43_LED_RADIO_B, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %69 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCI_VENDOR_ID_ASUSTEK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @B43_LED_ASSOC, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %65
  br label %89

79:                                               ; preds = %47
  %80 = load i32, i32* @B43_LED_RADIO_A, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %89

82:                                               ; preds = %47
  %83 = load i32, i32* @B43_LED_OFF, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %89

85:                                               ; preds = %47
  %86 = load i32, i32* @B43_LED_OFF, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = call i32 @B43_WARN_ON(i32 1)
  br label %109

89:                                               ; preds = %82, %79, %78, %64
  br label %109

90:                                               ; preds = %4
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @B43_LED_BEHAVIOUR, align 4
  %96 = and i32 %94, %95
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @B43_LED_ACTIVELOW, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %85, %90, %89
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
