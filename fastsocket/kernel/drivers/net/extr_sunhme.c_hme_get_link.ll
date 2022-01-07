; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.happy_meal = type { i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hme_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_get_link(%struct.net_device* %0) #0 {
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
  %11 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = call i32 @happy_meal_tcvr_read(%struct.happy_meal* %9, i32 %12, i32 %13)
  %15 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %16 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %18 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load %struct.happy_meal*, %struct.happy_meal** %3, align 8
  %21 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BMSR_LSTATUS, align 4
  %24 = and i32 %22, %23
  ret i32 %24
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @happy_meal_tcvr_read(%struct.happy_meal*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
