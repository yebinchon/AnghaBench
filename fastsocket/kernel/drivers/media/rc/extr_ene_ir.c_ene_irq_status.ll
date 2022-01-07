; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_irq_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64 }

@ENE_FW2 = common dso_local global i32 0, align 4
@ENE_HW_C = common dso_local global i64 0, align 8
@ENEB_IRQ_STATUS = common dso_local global i32 0, align 4
@ENEB_IRQ_STATUS_IR = common dso_local global i32 0, align 4
@ENE_IRQ_RX = common dso_local global i32 0, align 4
@ENE_IRQ = common dso_local global i32 0, align 4
@ENE_IRQ_STATUS = common dso_local global i32 0, align 4
@ENE_FW2_RXIRQ = common dso_local global i32 0, align 4
@ENE_FW1 = common dso_local global i32 0, align 4
@ENE_FW1_TXIRQ = common dso_local global i32 0, align 4
@ENE_IRQ_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ene_device*)* @ene_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_irq_status(%struct.ene_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ene_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %9 = load i32, i32* @ENE_FW2, align 4
  %10 = call i32 @ene_read_reg(%struct.ene_device* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %12 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ENE_HW_C, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %18 = load i32, i32* @ENEB_IRQ_STATUS, align 4
  %19 = call i32 @ene_read_reg(%struct.ene_device* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ENEB_IRQ_STATUS_IR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %91

25:                                               ; preds = %16
  %26 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %27 = load i32, i32* @ENEB_IRQ_STATUS, align 4
  %28 = load i32, i32* @ENEB_IRQ_STATUS_IR, align 4
  %29 = call i32 @ene_clear_reg_mask(%struct.ene_device* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @ENE_IRQ_RX, align 4
  store i32 %30, i32* %2, align 4
  br label %91

31:                                               ; preds = %1
  %32 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %33 = load i32, i32* @ENE_IRQ, align 4
  %34 = call i32 @ene_read_reg(%struct.ene_device* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ENE_IRQ_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %91

40:                                               ; preds = %31
  %41 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %42 = load i32, i32* @ENE_IRQ, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENE_IRQ_STATUS, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @ene_write_reg(%struct.ene_device* %41, i32 %42, i32 %46)
  %48 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %49 = load i32, i32* @ENE_IRQ, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ENE_IRQ_STATUS, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @ene_write_reg(%struct.ene_device* %48, i32 %49, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ENE_FW2_RXIRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %40
  %60 = load i32, i32* @ENE_IRQ_RX, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %64 = load i32, i32* @ENE_FW2, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENE_FW2_RXIRQ, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @ene_write_reg(%struct.ene_device* %63, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %59, %40
  %71 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %72 = load i32, i32* @ENE_FW1, align 4
  %73 = call i32 @ene_read_reg(%struct.ene_device* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @ENE_FW1_TXIRQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %80 = load i32, i32* @ENE_FW1, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @ENE_FW1_TXIRQ, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @ene_write_reg(%struct.ene_device* %79, i32 %80, i32 %84)
  %86 = load i32, i32* @ENE_IRQ_TX, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %78, %70
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %39, %25, %24
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ene_read_reg(%struct.ene_device*, i32) #1

declare dso_local i32 @ene_clear_reg_mask(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
