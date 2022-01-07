; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gpio_bank = type { i32 }

@IH_MPUIO_BASE = common dso_local global i32 0, align 4
@IH_GPIO_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.TYPE_2__* null, align 8
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @cpu_class_is_omap2()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IH_MPUIO_BASE, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IH_MPUIO_BASE, align 4
  %19 = sub i32 %17, %18
  %20 = call i32 @OMAP_MPUIO(i32 %19)
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %12, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IH_GPIO_BASE, align 4
  %24 = sub i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @check_gpio(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %115

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %115

41:                                               ; preds = %32
  %42 = call i32 (...) @cpu_class_is_omap2()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %47 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %115

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %4, align 4
  %56 = call %struct.gpio_bank* @get_irq_chip_data(i32 %55)
  store %struct.gpio_bank* %56, %struct.gpio_bank** %6, align 8
  %57 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %58 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %57, i32 0, i32 0
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @get_gpio_index(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @_set_gpio_triggering(%struct.gpio_bank* %61, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %54
  %69 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_desc, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %78
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %68, %54
  %87 = load %struct.gpio_bank*, %struct.gpio_bank** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %87, i32 0, i32 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %93 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @handle_level_irq, align 4
  %100 = call i32 @__set_irq_handler_unlocked(i32 %98, i32 %99)
  br label %113

101:                                              ; preds = %86
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %104 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @handle_edge_irq, align 4
  %111 = call i32 @__set_irq_handler_unlocked(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %101
  br label %113

113:                                              ; preds = %112, %97
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %51, %38, %29
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @cpu_class_is_omap2(...) #1

declare dso_local i32 @OMAP_MPUIO(i32) #1

declare dso_local i64 @check_gpio(i32) #1

declare dso_local %struct.gpio_bank* @get_irq_chip_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_set_gpio_triggering(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @get_gpio_index(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__set_irq_handler_unlocked(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
