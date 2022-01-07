; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@de600_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"de600_interrupt (%02X)\0A\00", align 1
@RX_GOOD = common dso_local global i32 0, align 4
@RX_BUSY = common dso_local global i32 0, align 4
@RX_ENABLE = common dso_local global i32 0, align 4
@free_tx_pages = common dso_local global i64 0, align 8
@TX_PAGES = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @de600_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de600_interrupt(i32 %0, i8* %1) #0 {
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
  %11 = call i32 @spin_lock(i32* @de600_lock)
  %12 = call i32 (...) @select_nic()
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @de600_read_status(%struct.net_device* %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %60, %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RX_GOOD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @de600_rx_intr(%struct.net_device* %23)
  br label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RX_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @RX_ENABLE, align 4
  %32 = call i32 @de600_put_command(i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i64, i64* @free_tx_pages, align 8
  %36 = load i64, i64* @TX_PAGES, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @de600_tx_intr(%struct.net_device* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @de600_read_status(%struct.net_device* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RX_GOOD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = icmp slt i32 %53, 100
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br label %60

60:                                               ; preds = %58, %46
  %61 = phi i1 [ true, %46 ], [ %59, %58 ]
  br i1 %61, label %15, label %62

62:                                               ; preds = %60
  %63 = call i32 (...) @select_prn()
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @trigger_interrupt(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = call i32 @spin_unlock(i32* @de600_lock)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @select_nic(...) #1

declare dso_local i32 @de600_read_status(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @de600_rx_intr(%struct.net_device*) #1

declare dso_local i32 @de600_put_command(i32) #1

declare dso_local i32 @de600_tx_intr(%struct.net_device*, i32) #1

declare dso_local i32 @select_prn(...) #1

declare dso_local i32 @trigger_interrupt(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
