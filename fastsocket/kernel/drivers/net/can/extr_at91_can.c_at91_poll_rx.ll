; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_poll_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at91_priv = type { i32 }

@AT91_SR = common dso_local global i32 0, align 4
@AT91_MB_RX_LOW_LAST = common dso_local global i32 0, align 4
@AT91_MB_RX_LOW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"order of incoming frames cannot be guaranteed\0A\00", align 1
@AT91_MB_RX_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @at91_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_poll_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at91_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.at91_priv* %11, %struct.at91_priv** %5, align 8
  %12 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %13 = load i32, i32* @AT91_SR, align 4
  %14 = call i32 @at91_read(%struct.at91_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = bitcast i32* %6 to i64*
  store i64* %15, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %17 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AT91_MB_RX_LOW_LAST, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AT91_MB_RX_LOW_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %26, %21, %2
  br label %33

33:                                               ; preds = %97, %32
  %34 = load i64*, i64** %7, align 8
  %35 = load i32, i32* @AT91_MB_RX_NUM, align 4
  %36 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %37 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @find_next_bit(i64* %34, i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %73, %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AT91_MB_RX_NUM, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %84

49:                                               ; preds = %47
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @at91_read_msg(%struct.net_device* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @AT91_MB_RX_LOW_LAST, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %58 = call i32 @at91_activate_rx_low(%struct.at91_priv* %57)
  br label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AT91_MB_RX_LOW_LAST, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @at91_activate_rx_mb(%struct.at91_priv* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %75 = load i32, i32* @AT91_SR, align 4
  %76 = call i32 @at91_read(%struct.at91_priv* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i64*, i64** %7, align 8
  %78 = load i32, i32* @AT91_MB_RX_NUM, align 4
  %79 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %80 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = call i32 @find_next_bit(i64* %77, i32 %78, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %40

84:                                               ; preds = %47
  %85 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %86 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AT91_MB_RX_LOW_LAST, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @AT91_MB_RX_NUM, align 4
  %96 = icmp uge i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %99 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %33

100:                                              ; preds = %93, %90, %84
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @at91_read_msg(%struct.net_device*, i32) #1

declare dso_local i32 @at91_activate_rx_low(%struct.at91_priv*) #1

declare dso_local i32 @at91_activate_rx_mb(%struct.at91_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
