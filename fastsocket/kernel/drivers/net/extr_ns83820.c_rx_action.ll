; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_rx_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_rx_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, i64, i32 }

@ihr = common dso_local global i32 0, align 4
@IHR = common dso_local global i64 0, align 8
@ISR_RXDESC = common dso_local global i32 0, align 4
@IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rx_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_action(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ns83820*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.net_device*
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ns83820* @PRIV(%struct.net_device* %8)
  store %struct.ns83820* %9, %struct.ns83820** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @rx_irq(%struct.net_device* %10)
  %12 = load i32, i32* @ihr, align 4
  %13 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %14 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IHR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %20 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* @ISR_RXDESC, align 4
  %23 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %24 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %31 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IMR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %37 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @rx_irq(%struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @ns83820_rx_kick(%struct.net_device* %41)
  ret void
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @rx_irq(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ns83820_rx_kick(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
