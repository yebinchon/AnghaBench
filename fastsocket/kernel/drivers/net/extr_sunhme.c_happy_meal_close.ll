; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_happy_meal_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.happy_meal = type { i32, i32, i32, i32 }

@HFLAG_QUATTRO = common dso_local global i32 0, align 4
@HFLAG_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @happy_meal_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @happy_meal_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.happy_meal*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %4)
  store %struct.happy_meal* %5, %struct.happy_meal** %3, align 8
  %6 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %7 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %10 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %11 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @happy_meal_stop(%struct.happy_meal* %9, i32 %12)
  %14 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %15 = call i32 @happy_meal_clean_rings(%struct.happy_meal* %14)
  %16 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %17 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %16, i32 0, i32 2
  %18 = call i32 @del_timer(i32* %17)
  %19 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %20 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %23 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HFLAG_QUATTRO, align 4
  %26 = load i32, i32* @HFLAG_PCI, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @HFLAG_QUATTRO, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.net_device* %35)
  br label %37

37:                                               ; preds = %31, %1
  ret i32 0
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @happy_meal_stop(%struct.happy_meal*, i32) #1

declare dso_local i32 @happy_meal_clean_rings(%struct.happy_meal*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
