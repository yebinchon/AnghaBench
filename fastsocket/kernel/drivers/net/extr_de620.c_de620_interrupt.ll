; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@de620_lock = common dso_local global i32 0, align 4
@R_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"de620_interrupt (%2.2X)\0A\00", align 1
@RXGOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"again=%d\0A\00", align 1
@TXBF0 = common dso_local global i32 0, align 4
@TXBF1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @de620_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de620_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 @spin_lock(i32* @de620_lock)
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load i32, i32* @R_STS, align 4
  %14 = call i32 @de620_get_register(%struct.net_device* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RXGOOD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %34, %21
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @de620_rx_intr(%struct.net_device* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = icmp slt i32 %32, 100
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %22, label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @de620_tx_buffs(%struct.net_device* %38)
  %40 = load i32, i32* @TXBF0, align 4
  %41 = load i32, i32* @TXBF1, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_wake_queue(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = call i32 @spin_unlock(i32* @de620_lock)
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @de620_get_register(%struct.net_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @de620_rx_intr(%struct.net_device*) #1

declare dso_local i32 @de620_tx_buffs(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
