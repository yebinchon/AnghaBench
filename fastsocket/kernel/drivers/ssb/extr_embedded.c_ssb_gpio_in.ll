; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_embedded.c_ssb_gpio_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_embedded.c_ssb_gpio_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_gpio_in(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 2
  %13 = call i64 @ssb_chipco_available(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ssb_chipco_gpio_in(i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %21, i32 0, i32 1
  %23 = call i64 @ssb_extif_available(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %27 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %26, i32 0, i32 1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ssb_extif_gpio_in(i32* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %20
  %31 = call i32 @SSB_WARN_ON(i32 1)
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %35 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_chipco_gpio_in(i32*, i32) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_gpio_in(i32*, i32) #1

declare dso_local i32 @SSB_WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
