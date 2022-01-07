; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mi1_wr_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mi1_wr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_MI1_CFG = common dso_local global i32 0, align 4
@M_ST = common dso_local global i32 0, align 4
@A_MI1_ADDR = common dso_local global i32 0, align 4
@A_MI1_DATA = common dso_local global i32 0, align 4
@A_MI1_OP = common dso_local global i32 0, align 4
@F_BUSY = common dso_local global i32 0, align 4
@MDIO_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32)* @mi1_wr_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi1_wr_addr(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @V_REGADDR(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @V_PHYADDR(i32 %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = load i32, i32* @A_MI1_CFG, align 4
  %17 = load i32, i32* @M_ST, align 4
  %18 = call i32 @V_ST(i32 %17)
  %19 = call i32 @t3_set_reg_field(%struct.adapter* %15, i32 %16, i32 %18, i32 0)
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i32, i32* @A_MI1_ADDR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @t3_write_reg(%struct.adapter* %20, i32 %21, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = load i32, i32* @A_MI1_DATA, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @t3_write_reg(%struct.adapter* %24, i32 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = load i32, i32* @A_MI1_OP, align 4
  %30 = call i32 @V_MDI_OP(i32 0)
  %31 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* @A_MI1_OP, align 4
  %34 = load i32, i32* @F_BUSY, align 4
  %35 = load i32, i32* @MDIO_ATTEMPTS, align 4
  %36 = call i32 @t3_wait_op_done(%struct.adapter* %32, i32 %33, i32 %34, i32 0, i32 %35, i32 10)
  ret i32 %36
}

declare dso_local i32 @V_REGADDR(i32) #1

declare dso_local i32 @V_PHYADDR(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @V_ST(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_MDI_OP(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
