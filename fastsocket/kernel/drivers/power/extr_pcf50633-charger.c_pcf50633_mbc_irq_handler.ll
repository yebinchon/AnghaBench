; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633_mbc = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_5__*, i32)* }

@PCF50633_IRQ_USBINS = common dso_local global i32 0, align 4
@PCF50633_IRQ_USBREM = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADPINS = common dso_local global i32 0, align 4
@PCF50633_IRQ_ADPREM = common dso_local global i32 0, align 4
@PCF50633_IRQ_BATFULL = common dso_local global i32 0, align 4
@PCF50633_IRQ_USBLIMON = common dso_local global i32 0, align 4
@PCF50633_IRQ_USBLIMOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pcf50633_mbc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_mbc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633_mbc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pcf50633_mbc*
  store %struct.pcf50633_mbc* %8, %struct.pcf50633_mbc** %5, align 8
  %9 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %10 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PCF50633_IRQ_USBINS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %21 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PCF50633_IRQ_USBREM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %28 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %30 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %32 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @pcf50633_mbc_usb_curlim_set(%struct.TYPE_5__* %33, i32 0)
  %35 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %36 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %35, i32 0, i32 7
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  br label %38

38:                                               ; preds = %26, %22
  br label %39

39:                                               ; preds = %38, %19
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PCF50633_IRQ_ADPINS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %45 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %47 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  br label %58

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PCF50633_IRQ_ADPREM, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %54 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %56 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PCF50633_IRQ_BATFULL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %64 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %66 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %71 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %70, i32 0, i32 7
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @schedule_delayed_work(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  br label %91

75:                                               ; preds = %58
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @PCF50633_IRQ_USBLIMON, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %81 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %90

82:                                               ; preds = %75
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @PCF50633_IRQ_USBLIMOFF, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %88 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %93 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %92, i32 0, i32 6
  %94 = call i32 @power_supply_changed(i32* %93)
  %95 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %96 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %95, i32 0, i32 5
  %97 = call i32 @power_supply_changed(i32* %96)
  %98 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %99 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %98, i32 0, i32 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_5__*, i32)* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %91
  %107 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %108 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %112, align 8
  %114 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %115 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %114, i32 0, i32 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 %113(%struct.TYPE_5__* %116, i32 %117)
  br label %119

119:                                              ; preds = %106, %91
  ret void
}

declare dso_local i32 @pcf50633_mbc_usb_curlim_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @power_supply_changed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
