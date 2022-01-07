; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_gate_rx_traffic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_gate_rx_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32 }

@A_XGM_RX_CFG = common dso_local global i32 0, align 4
@F_ENHASHMCAST = common dso_local global i32 0, align 4
@F_DISBCAST = common dso_local global i32 0, align 4
@F_COPYALLFRAMES = common dso_local global i32 0, align 4
@A_XGM_RX_HASH_HIGH = common dso_local global i32 0, align 4
@A_XGM_RX_HASH_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmac*, i32*, i32*, i32*)* @t3_gate_rx_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_gate_rx_traffic(%struct.cmac* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cmac* %0, %struct.cmac** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.cmac*, %struct.cmac** %5, align 8
  %10 = call i32 @t3_mac_disable_exact_filters(%struct.cmac* %9)
  %11 = load %struct.cmac*, %struct.cmac** %5, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @A_XGM_RX_CFG, align 4
  %15 = call i32 @t3_read_reg(i32 %13, i32 %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.cmac*, %struct.cmac** %5, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @A_XGM_RX_CFG, align 4
  %21 = load i32, i32* @F_ENHASHMCAST, align 4
  %22 = load i32, i32* @F_DISBCAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @F_COPYALLFRAMES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @F_DISBCAST, align 4
  %27 = call i32 @t3_set_reg_field(i32 %19, i32 %20, i32 %25, i32 %26)
  %28 = load %struct.cmac*, %struct.cmac** %5, align 8
  %29 = getelementptr inbounds %struct.cmac, %struct.cmac* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @A_XGM_RX_HASH_HIGH, align 4
  %32 = call i32 @t3_read_reg(i32 %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cmac*, %struct.cmac** %5, align 8
  %35 = getelementptr inbounds %struct.cmac, %struct.cmac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @A_XGM_RX_HASH_HIGH, align 4
  %38 = call i32 @t3_write_reg(i32 %36, i32 %37, i32 0)
  %39 = load %struct.cmac*, %struct.cmac** %5, align 8
  %40 = getelementptr inbounds %struct.cmac, %struct.cmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @A_XGM_RX_HASH_LOW, align 4
  %43 = call i32 @t3_read_reg(i32 %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.cmac*, %struct.cmac** %5, align 8
  %46 = getelementptr inbounds %struct.cmac, %struct.cmac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @A_XGM_RX_HASH_LOW, align 4
  %49 = call i32 @t3_write_reg(i32 %47, i32 %48, i32 0)
  %50 = call i32 @msleep(i32 1)
  ret void
}

declare dso_local i32 @t3_mac_disable_exact_filters(%struct.cmac*) #1

declare dso_local i32 @t3_read_reg(i32, i32) #1

declare dso_local i32 @t3_set_reg_field(i32, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
