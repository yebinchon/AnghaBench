; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64, i32, i32, i32, i32 }

@ENE_HW_C = common dso_local global i64 0, align 8
@ENEB_IRQ = common dso_local global i32 0, align 4
@ENEB_IRQ_UNK1 = common dso_local global i32 0, align 4
@ENE_IRQ = common dso_local global i32 0, align 4
@ENE_IRQ_UNK_EN = common dso_local global i32 0, align 4
@ENE_IRQ_STATUS = common dso_local global i32 0, align 4
@ENE_IRQ_MASK = common dso_local global i32 0, align 4
@ENE_FW1 = common dso_local global i32 0, align 4
@ENE_FW1_ENABLE = common dso_local global i32 0, align 4
@ENE_FW1_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_rx_enable(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %4 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %5 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ENE_HW_C, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %11 = load i32, i32* @ENEB_IRQ, align 4
  %12 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %13 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 1
  %16 = call i32 @ene_write_reg(%struct.ene_device* %10, i32 %11, i32 %15)
  %17 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %18 = load i32, i32* @ENEB_IRQ_UNK1, align 4
  %19 = call i32 @ene_write_reg(%struct.ene_device* %17, i32 %18, i32 1)
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %22 = load i32, i32* @ENE_IRQ, align 4
  %23 = call i32 @ene_read_reg(%struct.ene_device* %21, i32 %22)
  %24 = and i32 %23, 240
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @ENE_IRQ_UNK_EN, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @ENE_IRQ_STATUS, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %33 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ENE_IRQ_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %40 = load i32, i32* @ENE_IRQ, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ene_write_reg(%struct.ene_device* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %20, %9
  %44 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %45 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %46 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ene_rx_enable_fan_input(%struct.ene_device* %44, i32 %47)
  %49 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %50 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %51 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @ene_rx_enable_cir_engine(%struct.ene_device* %49, i32 %55)
  %57 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %58 = call i32 @ene_irq_status(%struct.ene_device* %57)
  %59 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %60 = load i32, i32* @ENE_FW1, align 4
  %61 = load i32, i32* @ENE_FW1_ENABLE, align 4
  %62 = load i32, i32* @ENE_FW1_IRQ, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ene_set_reg_mask(%struct.ene_device* %59, i32 %60, i32 %63)
  %65 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %66 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ir_raw_event_set_idle(i32 %67, i32 1)
  %69 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %70 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  ret void
}

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_rx_enable_fan_input(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_rx_enable_cir_engine(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_irq_status(%struct.ene_device*) #1

declare dso_local i32 @ene_set_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ir_raw_event_set_idle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
