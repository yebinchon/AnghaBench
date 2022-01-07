; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_stop_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_stop_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_stop_interrupts(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = call i32 @phy_disable_interrupts(%struct.phy_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = call i32 @phy_error(%struct.phy_device* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.phy_device* %15)
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 2
  %19 = call i32 @cancel_work_sync(i32* %18)
  br label %20

20:                                               ; preds = %25, %11
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = call i64 @atomic_dec_return(i32* %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @enable_irq(i32 %28)
  br label %20

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @phy_disable_interrupts(%struct.phy_device*) #1

declare dso_local i32 @phy_error(%struct.phy_device*) #1

declare dso_local i32 @free_irq(i32, %struct.phy_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
