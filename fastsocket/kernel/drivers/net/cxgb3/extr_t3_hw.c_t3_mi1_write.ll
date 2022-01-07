; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_mi1_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_mi1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_MI1_CFG = common dso_local global i32 0, align 4
@M_ST = common dso_local global i32 0, align 4
@A_MI1_ADDR = common dso_local global i32 0, align 4
@A_MI1_DATA = common dso_local global i32 0, align 4
@A_MI1_OP = common dso_local global i32 0, align 4
@F_BUSY = common dso_local global i32 0, align 4
@MDIO_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32)* @t3_mi1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_mi1_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.port_info* @netdev_priv(%struct.net_device* %15)
  store %struct.port_info* %16, %struct.port_info** %11, align 8
  %17 = load %struct.port_info*, %struct.port_info** %11, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @V_REGADDR(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @V_PHYADDR(i32 %22)
  %24 = or i32 %21, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.adapter*, %struct.adapter** %12, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.adapter*, %struct.adapter** %12, align 8
  %29 = load i32, i32* @A_MI1_CFG, align 4
  %30 = load i32, i32* @M_ST, align 4
  %31 = call i32 @V_ST(i32 %30)
  %32 = call i32 @V_ST(i32 1)
  %33 = call i32 @t3_set_reg_field(%struct.adapter* %28, i32 %29, i32 %31, i32 %32)
  %34 = load %struct.adapter*, %struct.adapter** %12, align 8
  %35 = load i32, i32* @A_MI1_ADDR, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @t3_write_reg(%struct.adapter* %34, i32 %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %12, align 8
  %39 = load i32, i32* @A_MI1_DATA, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @t3_write_reg(%struct.adapter* %38, i32 %39, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %12, align 8
  %43 = load i32, i32* @A_MI1_OP, align 4
  %44 = call i32 @V_MDI_OP(i32 1)
  %45 = call i32 @t3_write_reg(%struct.adapter* %42, i32 %43, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %12, align 8
  %47 = load i32, i32* @A_MI1_OP, align 4
  %48 = load i32, i32* @F_BUSY, align 4
  %49 = load i32, i32* @MDIO_ATTEMPTS, align 4
  %50 = call i32 @t3_wait_op_done(%struct.adapter* %46, i32 %47, i32 %48, i32 0, i32 %49, i32 10)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.adapter*, %struct.adapter** %12, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @V_REGADDR(i32) #1

declare dso_local i32 @V_PHYADDR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @V_ST(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_MDI_OP(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
