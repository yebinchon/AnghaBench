; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { i32, i32, i32, i32, i64, i32, i32, %struct.ioc3* }
%struct.ioc3 = type { i32 }

@ERPIR_ARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_init_rings(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ioc3_private* %7, %struct.ioc3_private** %3, align 8
  %8 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %9 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %8, i32 0, i32 7
  %10 = load %struct.ioc3*, %struct.ioc3** %9, align 8
  store %struct.ioc3* %10, %struct.ioc3** %4, align 8
  %11 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %12 = call i32 @ioc3_free_rings(%struct.ioc3_private* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @ioc3_alloc_rings(%struct.net_device* %13)
  %15 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %16 = call i32 @ioc3_clean_rx_ring(%struct.ioc3_private* %15)
  %17 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %18 = call i32 @ioc3_clean_tx_ring(%struct.ioc3_private* %17)
  %19 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %20 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ioc3_map(i32 %21, i32 0)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = lshr i64 %23, 32
  %25 = call i32 @ioc3_w_erbr_h(i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 4294967295
  %28 = call i32 @ioc3_w_erbr_l(i64 %27)
  %29 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %30 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 3
  %33 = call i32 @ioc3_w_ercir(i32 %32)
  %34 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %35 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 3
  %38 = load i32, i32* @ERPIR_ARM, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ioc3_w_erpir(i32 %39)
  %41 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %42 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ioc3_map(i32 %43, i32 0)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %46 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = lshr i64 %47, 32
  %49 = call i32 @ioc3_w_etbr_h(i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, 4294967295
  %52 = call i32 @ioc3_w_etbr_l(i64 %51)
  %53 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %54 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 7
  %57 = call i32 @ioc3_w_etpir(i32 %56)
  %58 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %59 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 7
  %62 = call i32 @ioc3_w_etcir(i32 %61)
  %63 = call i32 (...) @ioc3_r_etcir()
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioc3_free_rings(%struct.ioc3_private*) #1

declare dso_local i32 @ioc3_alloc_rings(%struct.net_device*) #1

declare dso_local i32 @ioc3_clean_rx_ring(%struct.ioc3_private*) #1

declare dso_local i32 @ioc3_clean_tx_ring(%struct.ioc3_private*) #1

declare dso_local i64 @ioc3_map(i32, i32) #1

declare dso_local i32 @ioc3_w_erbr_h(i64) #1

declare dso_local i32 @ioc3_w_erbr_l(i64) #1

declare dso_local i32 @ioc3_w_ercir(i32) #1

declare dso_local i32 @ioc3_w_erpir(i32) #1

declare dso_local i32 @ioc3_w_etbr_h(i64) #1

declare dso_local i32 @ioc3_w_etbr_l(i64) #1

declare dso_local i32 @ioc3_w_etpir(i32) #1

declare dso_local i32 @ioc3_w_etcir(i32) #1

declare dso_local i32 @ioc3_r_etcir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
