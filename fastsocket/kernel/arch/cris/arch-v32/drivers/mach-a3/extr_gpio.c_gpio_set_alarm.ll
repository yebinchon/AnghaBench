; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32, i32, i32 }

@gpio_lock = common dso_local global i32 0, align 4
@gio = common dso_local global i32 0, align 4
@regi_gio = common dso_local global i32 0, align 4
@rw_intr_cfg = common dso_local global i32 0, align 4
@rw_intr_pins = common dso_local global i32 0, align 4
@rw_intr_mask = common dso_local global i32 0, align 4
@I2C_INTERRUPT_BITS = common dso_local global i32 0, align 4
@GPIO_MINOR_LEDS = common dso_local global i32 0, align 4
@regk_gio_hi = common dso_local global i32 0, align 4
@wanted_interrupts = common dso_local global i32 0, align 4
@regk_gio_lo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_private*)* @gpio_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_set_alarm(%struct.gpio_private* %0) #0 {
  %2 = alloca %struct.gpio_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_private* %0, %struct.gpio_private** %2, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %10)
  %12 = load i32, i32* @gio, align 4
  %13 = load i32, i32* @regi_gio, align 4
  %14 = load i32, i32* @rw_intr_cfg, align 4
  %15 = call i32 @REG_RD_INT(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @gio, align 4
  %17 = load i32, i32* @regi_gio, align 4
  %18 = load i32, i32* @rw_intr_pins, align 4
  %19 = call i32 @REG_RD_INT(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @gio, align 4
  %21 = load i32, i32* @regi_gio, align 4
  %22 = load i32, i32* @rw_intr_mask, align 4
  %23 = call i32 @REG_RD_INT(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @I2C_INTERRUPT_BITS, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %110, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = srem i32 %30, 8
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sdiv i32 %32, 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.gpio_private*, %struct.gpio_private** %2, align 8
  %35 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GPIO_MINOR_LEDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.gpio_private*, %struct.gpio_private** %2, align 8
  %41 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.gpio_private*, %struct.gpio_private** %2, align 8
  %48 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %50, 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.gpio_private*, %struct.gpio_private** %2, align 8
  %56 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %54
  %63 = load i32, i32* @regk_gio_hi, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %64, 3
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 255
  store i32 %74, i32* @wanted_interrupts, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 4
  %78 = shl i32 %75, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %109

81:                                               ; preds = %54
  %82 = load %struct.gpio_private*, %struct.gpio_private** %2, align 8
  %83 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %3, align 4
  %86 = shl i32 1, %85
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %81
  %90 = load i32, i32* @regk_gio_lo, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 3
  %93 = shl i32 %90, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 1, %96
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 255
  store i32 %101, i32* @wanted_interrupts, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 %103, 4
  %105 = shl i32 %102, %104
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %89, %81
  br label %109

109:                                              ; preds = %108, %62
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %26

113:                                              ; preds = %26
  %114 = load i32, i32* @gio, align 4
  %115 = load i32, i32* @regi_gio, align 4
  %116 = load i32, i32* @rw_intr_cfg, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @REG_WR_INT(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @gio, align 4
  %120 = load i32, i32* @regi_gio, align 4
  %121 = load i32, i32* @rw_intr_pins, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @REG_WR_INT(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @gio, align 4
  %125 = load i32, i32* @regi_gio, align 4
  %126 = load i32, i32* @rw_intr_mask, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @REG_WR_INT(i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %129)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REG_RD_INT(i32, i32, i32) #1

declare dso_local i32 @REG_WR_INT(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
