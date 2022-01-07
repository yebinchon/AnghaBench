; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_enable_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_enable_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_phy* }
%struct.asd_phy = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@INT_ENABLE_2 = common dso_local global i32 0, align 4
@HOT_PLUG_DELAY = common dso_local global i32 0, align 4
@HOTPLUG_DELAY_TIMEOUT = common dso_local global i32 0, align 4
@PHY_CONTROL_0 = common dso_local global i32 0, align 4
@PHY_CONTROL_1 = common dso_local global i32 0, align 4
@PHY_CONTROL_2 = common dso_local global i32 0, align 4
@PHY_CONTROL_3 = common dso_local global i32 0, align 4
@ASD_COMINIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @asd_enable_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_enable_phy(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_phy*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  %8 = load %struct.asd_phy*, %struct.asd_phy** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %8, i64 %10
  store %struct.asd_phy* %11, %struct.asd_phy** %5, align 8
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @INT_ENABLE_2, align 4
  %15 = call i32 @LmSEQ_OOB_REG(i32 %13, i32 %14)
  %16 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %12, i32 %15, i32 0)
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HOT_PLUG_DELAY, align 4
  %20 = call i32 @LmSEQ_OOB_REG(i32 %18, i32 %19)
  %21 = load i32, i32* @HOTPLUG_DELAY_TIMEOUT, align 4
  %22 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %17, i32 %20, i32 %21)
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PHY_CONTROL_0, align 4
  %26 = call i32 @LmSEQ_OOB_REG(i32 %24, i32 %25)
  %27 = load %struct.asd_phy*, %struct.asd_phy** %5, align 8
  %28 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %23, i32 %26, i32 %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PHY_CONTROL_1, align 4
  %36 = call i32 @LmSEQ_OOB_REG(i32 %34, i32 %35)
  %37 = load %struct.asd_phy*, %struct.asd_phy** %5, align 8
  %38 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %33, i32 %36, i32 %41)
  %43 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PHY_CONTROL_2, align 4
  %46 = call i32 @LmSEQ_OOB_REG(i32 %44, i32 %45)
  %47 = load %struct.asd_phy*, %struct.asd_phy** %5, align 8
  %48 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %43, i32 %46, i32 %51)
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PHY_CONTROL_3, align 4
  %56 = call i32 @LmSEQ_OOB_REG(i32 %54, i32 %55)
  %57 = load %struct.asd_phy*, %struct.asd_phy** %5, align 8
  %58 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %53, i32 %56, i32 %61)
  %63 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @LmSEQ_TEN_MS_COMINIT_TIMEOUT(i32 %64)
  %66 = load i32, i32* @ASD_COMINIT_TIMEOUT, align 4
  %67 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %63, i32 %65, i32 %66)
  %68 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @LmSEQ_TX_ID_ADDR_FRAME(i32 %69)
  %71 = load %struct.asd_phy*, %struct.asd_phy** %5, align 8
  %72 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %68, i32 %70, i32 %75)
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @asd_control_led(%struct.asd_ha_struct* %77, i32 %78, i32 1)
  ret i32 0
}

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmSEQ_OOB_REG(i32, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmSEQ_TEN_MS_COMINIT_TIMEOUT(i32) #1

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmSEQ_TX_ID_ADDR_FRAME(i32) #1

declare dso_local i32 @asd_control_led(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
