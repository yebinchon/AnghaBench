; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { %struct.ioc3* }
%struct.ioc3 = type { i32 }

@EISR_RXTIMERINT = common dso_local global i32 0, align 4
@EISR_RXOFLO = common dso_local global i32 0, align 4
@EISR_RXBUFOFLO = common dso_local global i32 0, align 4
@EISR_RXMEMERR = common dso_local global i32 0, align 4
@EISR_RXPARERR = common dso_local global i32 0, align 4
@EISR_TXBUFUFLO = common dso_local global i32 0, align 4
@EISR_TXEXPLICIT = common dso_local global i32 0, align 4
@EISR_TXMEMERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ioc3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ioc3_private*, align 8
  %7 = alloca %struct.ioc3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %12)
  store %struct.ioc3_private* %13, %struct.ioc3_private** %6, align 8
  %14 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %15 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %14, i32 0, i32 0
  %16 = load %struct.ioc3*, %struct.ioc3** %15, align 8
  store %struct.ioc3* %16, %struct.ioc3** %7, align 8
  %17 = load i32, i32* @EISR_RXTIMERINT, align 4
  %18 = load i32, i32* @EISR_RXOFLO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EISR_RXBUFOFLO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EISR_RXMEMERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @EISR_RXPARERR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @EISR_TXBUFUFLO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @EISR_TXEXPLICIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @EISR_TXMEMERR, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = call i32 (...) @ioc3_r_eisr()
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ioc3_w_eisr(i32 %35)
  %37 = call i32 (...) @ioc3_r_eisr()
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @EISR_RXOFLO, align 4
  %40 = load i32, i32* @EISR_RXBUFOFLO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EISR_RXMEMERR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @EISR_RXPARERR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @EISR_TXBUFUFLO, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @EISR_TXMEMERR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %38, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ioc3_error(%struct.ioc3_private* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @EISR_RXTIMERINT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %63 = call i32 @ioc3_rx(%struct.ioc3_private* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @EISR_TXEXPLICIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.ioc3_private*, %struct.ioc3_private** %6, align 8
  %71 = call i32 @ioc3_tx(%struct.ioc3_private* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioc3_r_eisr(...) #1

declare dso_local i32 @ioc3_w_eisr(i32) #1

declare dso_local i32 @ioc3_error(%struct.ioc3_private*, i32) #1

declare dso_local i32 @ioc3_rx(%struct.ioc3_private*) #1

declare dso_local i32 @ioc3_tx(%struct.ioc3_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
