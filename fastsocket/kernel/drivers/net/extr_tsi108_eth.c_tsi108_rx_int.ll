; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_rx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32 }

@TSI108_EC_INTMASK = common dso_local global i32 0, align 4
@TSI108_INT_RXQUEUE0 = common dso_local global i32 0, align 4
@TSI108_INT_RXTHRESH = common dso_local global i32 0, align 4
@TSI108_INT_RXOVERRUN = common dso_local global i32 0, align 4
@TSI108_INT_RXERROR = common dso_local global i32 0, align 4
@TSI108_INT_RXWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tsi108_rx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_rx_int(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %4)
  store %struct.tsi108_prv_data* %5, %struct.tsi108_prv_data** %3, align 8
  %6 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %6, i32 0, i32 0
  %8 = call i64 @napi_schedule_prep(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %12 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %13 = call i32 @TSI_READ(i32 %12)
  %14 = load i32, i32* @TSI108_INT_RXQUEUE0, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TSI108_INT_RXTHRESH, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TSI108_INT_RXOVERRUN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TSI108_INT_RXERROR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TSI108_INT_RXWAIT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @TSI_WRITE(i32 %11, i32 %23)
  %25 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %26 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %25, i32 0, i32 0
  %27 = call i32 @__napi_schedule(i32* %26)
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %34 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %35 = call i32 @TSI_READ(i32 %34)
  %36 = load i32, i32* @TSI108_INT_RXQUEUE0, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TSI108_INT_RXTHRESH, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TSI108_INT_RXOVERRUN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TSI108_INT_RXERROR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TSI108_INT_RXWAIT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @TSI_WRITE(i32 %33, i32 %45)
  br label %47

47:                                               ; preds = %32, %28
  br label %48

48:                                               ; preds = %47, %10
  ret void
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
