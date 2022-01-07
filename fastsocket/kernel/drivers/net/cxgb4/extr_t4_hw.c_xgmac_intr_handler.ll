; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_xgmac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_xgmac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@XGMAC_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@TXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@RXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XGMAC %d Tx FIFO parity error\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"XGMAC %d Rx FIFO parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @xgmac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_intr_handler(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @XGMAC_PORT_INT_CAUSE, align 4
  %9 = call i32 @PORT_REG(i32 %7, i32 %8)
  %10 = call i32 @t4_read_reg(%struct.adapter* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @TXFIFO_PRTY_ERR, align 4
  %12 = load i32, i32* @RXFIFO_PRTY_ERR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TXFIFO_PRTY_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_alert(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RXFIFO_PRTY_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_alert(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @XGMAC_PORT_INT_CAUSE, align 4
  %45 = call i32 @PORT_REG(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @t4_write_reg(%struct.adapter* %42, i32 %45, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = call i32 @t4_fatal_err(%struct.adapter* %48)
  br label %50

50:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @PORT_REG(i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
