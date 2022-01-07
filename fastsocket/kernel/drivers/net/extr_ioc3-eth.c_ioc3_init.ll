; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { i32, i32, i32, i32, %struct.ioc3* }
%struct.ioc3 = type { i32 }

@EMCR_RST = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@EMCR_RXOFF_SHIFT = common dso_local global i32 0, align 4
@EMCR_TXDMAEN = common dso_local global i32 0, align 4
@EMCR_TXEN = common dso_local global i32 0, align 4
@EMCR_RXDMAEN = common dso_local global i32 0, align 4
@EMCR_RXEN = common dso_local global i32 0, align 4
@EMCR_PADEN = common dso_local global i32 0, align 4
@EISR_RXTIMERINT = common dso_local global i32 0, align 4
@EISR_RXOFLO = common dso_local global i32 0, align 4
@EISR_RXBUFOFLO = common dso_local global i32 0, align 4
@EISR_RXMEMERR = common dso_local global i32 0, align 4
@EISR_RXPARERR = common dso_local global i32 0, align 4
@EISR_TXBUFUFLO = common dso_local global i32 0, align 4
@EISR_TXEXPLICIT = common dso_local global i32 0, align 4
@EISR_TXMEMERR = common dso_local global i32 0, align 4
@PCI64_ATTR_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ioc3_private* %6, %struct.ioc3_private** %3, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 4
  %9 = load %struct.ioc3*, %struct.ioc3** %8, align 8
  store %struct.ioc3* %9, %struct.ioc3** %4, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 3
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load i32, i32* @EMCR_RST, align 4
  %14 = call i32 @ioc3_w_emcr(i32 %13)
  %15 = call i32 (...) @ioc3_r_emcr()
  %16 = call i32 @udelay(i32 4)
  %17 = call i32 @ioc3_w_emcr(i32 0)
  %18 = call i32 (...) @ioc3_r_emcr()
  %19 = call i32 @ioc3_w_erbar(i32 0)
  %20 = call i32 (...) @ioc3_r_etcdc()
  %21 = call i32 @ioc3_w_ercsr(i32 15)
  %22 = call i32 @ioc3_w_ertr(i32 0)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @__ioc3_set_mac_address(%struct.net_device* %23)
  %25 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %26 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ioc3_w_ehar_h(i32 %27)
  %29 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %30 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ioc3_w_ehar_l(i32 %31)
  %33 = call i32 @ioc3_w_ersr(i32 42)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @ioc3_init_rings(%struct.net_device* %34)
  %36 = load i32, i32* @RX_OFFSET, align 4
  %37 = sdiv i32 %36, 2
  %38 = load i32, i32* @EMCR_RXOFF_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @EMCR_TXDMAEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EMCR_TXEN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @EMCR_RXDMAEN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @EMCR_RXEN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @EMCR_PADEN, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %51 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %55 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ioc3_w_emcr(i32 %56)
  %58 = load i32, i32* @EISR_RXTIMERINT, align 4
  %59 = load i32, i32* @EISR_RXOFLO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EISR_RXBUFOFLO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @EISR_RXMEMERR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @EISR_RXPARERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EISR_TXBUFUFLO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EISR_TXEXPLICIT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EISR_TXMEMERR, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ioc3_w_eier(i32 %72)
  %74 = call i32 (...) @ioc3_r_eier()
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ioc3_w_emcr(i32) #1

declare dso_local i32 @ioc3_r_emcr(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ioc3_w_erbar(i32) #1

declare dso_local i32 @ioc3_r_etcdc(...) #1

declare dso_local i32 @ioc3_w_ercsr(i32) #1

declare dso_local i32 @ioc3_w_ertr(i32) #1

declare dso_local i32 @__ioc3_set_mac_address(%struct.net_device*) #1

declare dso_local i32 @ioc3_w_ehar_h(i32) #1

declare dso_local i32 @ioc3_w_ehar_l(i32) #1

declare dso_local i32 @ioc3_w_ersr(i32) #1

declare dso_local i32 @ioc3_init_rings(%struct.net_device*) #1

declare dso_local i32 @ioc3_w_eier(i32) #1

declare dso_local i32 @ioc3_r_eier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
