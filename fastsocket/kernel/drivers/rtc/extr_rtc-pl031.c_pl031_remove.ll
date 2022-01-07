; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, i32 }
%struct.pl031_local = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl031_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.pl031_local*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %4 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %5 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %4, i32 0, i32 1
  %6 = call %struct.pl031_local* @dev_get_drvdata(i32* %5)
  store %struct.pl031_local* %6, %struct.pl031_local** %3, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %8 = call i32 @amba_set_drvdata(%struct.amba_device* %7, i32* null)
  %9 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %10 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pl031_local*, %struct.pl031_local** %3, align 8
  %15 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free_irq(i32 %13, i32 %16)
  %18 = load %struct.pl031_local*, %struct.pl031_local** %3, align 8
  %19 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rtc_device_unregister(i32 %20)
  %22 = load %struct.pl031_local*, %struct.pl031_local** %3, align 8
  %23 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.pl031_local*, %struct.pl031_local** %3, align 8
  %27 = call i32 @kfree(%struct.pl031_local* %26)
  %28 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %29 = call i32 @amba_release_regions(%struct.amba_device* %28)
  ret i32 0
}

declare dso_local %struct.pl031_local* @dev_get_drvdata(i32*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, i32*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @rtc_device_unregister(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.pl031_local*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
