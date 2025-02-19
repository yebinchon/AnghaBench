; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_rx_get_rxstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_rx_get_rxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@RX_FIFO_INF = common dso_local global i32 0, align 4
@RX_FIFO_INF_RXSUSED_ = common dso_local global i32 0, align 4
@RX_STATUS_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_rx_get_rxstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_rx_get_rxstatus(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %4 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %5 = load i32, i32* @RX_FIFO_INF, align 4
  %6 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %4, i32 %5)
  %7 = load i32, i32* @RX_FIFO_INF_RXSUSED_, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %13 = load i32, i32* @RX_STATUS_FIFO, align 4
  %14 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
