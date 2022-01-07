; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_early_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_early_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.adapter_info = type { i32 }

@A_I2C_CFG = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@F_GPIO0_OEN = common dso_local global i32 0, align 4
@F_GPIO0_OUT_VAL = common dso_local global i32 0, align 4
@A_MC5_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@A_SG_OCO_BASE = common dso_local global i32 0, align 4
@F_ENRGMII = common dso_local global i32 0, align 4
@A_XGM_PORT_CFG = common dso_local global i32 0, align 4
@F_CLKDIVRESET_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.adapter_info*)* @early_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_hw_init(%struct.adapter* %0, %struct.adapter_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.adapter_info*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.adapter_info* %1, %struct.adapter_info** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call i64 @is_10G(%struct.adapter* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 3, i32 2
  %11 = call i32 @V_PORTSPEED(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %14 = call i32 @mi1_init(%struct.adapter* %12, %struct.adapter_info* %13)
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = load i32, i32* @A_I2C_CFG, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 80
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @V_I2C_CLKDIV(i32 %23)
  %25 = call i32 @t3_write_reg(%struct.adapter* %15, i32 %16, i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %28 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %29 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @F_GPIO0_OEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @F_GPIO0_OUT_VAL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @t3_write_reg(%struct.adapter* %26, i32 %27, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load i32, i32* @A_MC5_DB_SERVER_INDEX, align 4
  %38 = call i32 @t3_write_reg(%struct.adapter* %36, i32 %37, i32 0)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load i32, i32* @A_SG_OCO_BASE, align 4
  %41 = call i32 @V_BASE1(i32 4095)
  %42 = call i32 @t3_write_reg(%struct.adapter* %39, i32 %40, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %2
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = call i32 @uses_xaui(%struct.adapter* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %2
  %53 = load i32, i32* @F_ENRGMII, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @t3_write_reg(%struct.adapter* %57, i32 %58, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %63 = call i32 @t3_read_reg(%struct.adapter* %61, i32 %62)
  %64 = load i32, i32* @F_CLKDIVRESET_, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @t3_write_reg(%struct.adapter* %67, i32 %68, i32 %69)
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %73 = call i32 @t3_read_reg(%struct.adapter* %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %76 = call i32 @XGM_REG(i32 %75, i32 1)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @t3_write_reg(%struct.adapter* %74, i32 %76, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = load i32, i32* @A_XGM_PORT_CFG, align 4
  %81 = call i32 @t3_read_reg(%struct.adapter* %79, i32 %80)
  ret void
}

declare dso_local i32 @V_PORTSPEED(i32) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i32 @mi1_init(%struct.adapter*, %struct.adapter_info*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_I2C_CLKDIV(i32) #1

declare dso_local i32 @V_BASE1(i32) #1

declare dso_local i32 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
