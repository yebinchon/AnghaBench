; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@MacMode = common dso_local global i32 0, align 4
@MacModeClear = common dso_local global i32 0, align 4
@RxRingAddr = common dso_local global i32 0, align 4
@TxRingAddr = common dso_local global i32 0, align 4
@DE_RX_RING_SIZE = common dso_local global i32 0, align 4
@RxTx = common dso_local global i32 0, align 4
@RxMissed = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@de_intr_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*)* @de_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_init_hw(%struct.de_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  %7 = load %struct.de_private*, %struct.de_private** %3, align 8
  %8 = getelementptr inbounds %struct.de_private, %struct.de_private* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.de_private*, %struct.de_private** %3, align 8
  %11 = call i32 @de_adapter_wake(%struct.de_private* %10)
  %12 = load i32, i32* @MacMode, align 4
  %13 = call i32 @dr32(i32 %12)
  %14 = load i32, i32* @MacModeClear, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.de_private*, %struct.de_private** %3, align 8
  %18 = call i32 @de_reset_mac(%struct.de_private* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.de_private*, %struct.de_private** %3, align 8
  %25 = call i32 @de_set_media(%struct.de_private* %24)
  %26 = load i32, i32* @RxRingAddr, align 4
  %27 = load %struct.de_private*, %struct.de_private** %3, align 8
  %28 = getelementptr inbounds %struct.de_private, %struct.de_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dw32(i32 %26, i32 %29)
  %31 = load i32, i32* @TxRingAddr, align 4
  %32 = load %struct.de_private*, %struct.de_private** %3, align 8
  %33 = getelementptr inbounds %struct.de_private, %struct.de_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dw32(i32 %31, i32 %40)
  %42 = load i32, i32* @MacMode, align 4
  %43 = load i32, i32* @RxTx, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @dw32(i32 %42, i32 %45)
  %47 = load i32, i32* @RxMissed, align 4
  %48 = call i32 @dr32(i32 %47)
  %49 = load i32, i32* @IntrMask, align 4
  %50 = load i32, i32* @de_intr_mask, align 4
  %51 = call i32 @dw32(i32 %49, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @de_set_rx_mode(%struct.net_device* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %23, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @de_adapter_wake(%struct.de_private*) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @de_reset_mac(%struct.de_private*) #1

declare dso_local i32 @de_set_media(%struct.de_private*) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @de_set_rx_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
