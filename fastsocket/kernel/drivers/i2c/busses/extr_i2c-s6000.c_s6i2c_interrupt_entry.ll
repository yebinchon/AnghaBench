; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_interrupt_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s6000.c_s6i2c_interrupt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6i2c_if = type { i32, i32 }

@S6_I2C_STATUS = common dso_local global i32 0, align 4
@S6_I2C_INTR_RXUNDER = common dso_local global i32 0, align 4
@S6_I2C_INTR_RXOVER = common dso_local global i32 0, align 4
@S6_I2C_INTR_RXFULL = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXOVER = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXEMPTY = common dso_local global i32 0, align 4
@S6_I2C_INTR_RDREQ = common dso_local global i32 0, align 4
@S6_I2C_INTR_TXABRT = common dso_local global i32 0, align 4
@S6_I2C_INTR_RXDONE = common dso_local global i32 0, align 4
@S6_I2C_INTR_ACTIVITY = common dso_local global i32 0, align 4
@S6_I2C_INTR_STOPDET = common dso_local global i32 0, align 4
@S6_I2C_INTR_STARTDET = common dso_local global i32 0, align 4
@S6_I2C_INTR_GENCALL = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s6i2c_interrupt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6i2c_interrupt_entry(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s6i2c_if*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.s6i2c_if*
  store %struct.s6i2c_if* %8, %struct.s6i2c_if** %6, align 8
  %9 = load %struct.s6i2c_if*, %struct.s6i2c_if** %6, align 8
  %10 = load i32, i32* @S6_I2C_STATUS, align 4
  %11 = call i32 @i2c_rd16(%struct.s6i2c_if* %9, i32 %10)
  %12 = load i32, i32* @S6_I2C_INTR_RXUNDER, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @S6_I2C_INTR_RXOVER, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @S6_I2C_INTR_RXFULL, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @S6_I2C_INTR_TXOVER, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @S6_I2C_INTR_TXEMPTY, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @S6_I2C_INTR_RDREQ, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @S6_I2C_INTR_TXABRT, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @S6_I2C_INTR_RXDONE, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @S6_I2C_INTR_ACTIVITY, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @S6_I2C_INTR_STOPDET, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @S6_I2C_INTR_STARTDET, align 4
  %42 = shl i32 1, %41
  %43 = or i32 %40, %42
  %44 = load i32, i32* @S6_I2C_INTR_GENCALL, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = and i32 %11, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* @IRQ_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %2
  %52 = load %struct.s6i2c_if*, %struct.s6i2c_if** %6, align 8
  %53 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.s6i2c_if*, %struct.s6i2c_if** %6, align 8
  %56 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %55, i32 0, i32 1
  %57 = call i32 @del_timer(i32* %56)
  %58 = load %struct.s6i2c_if*, %struct.s6i2c_if** %6, align 8
  %59 = call i32 @s6i2c_handle_interrupt(%struct.s6i2c_if* %58)
  %60 = load %struct.s6i2c_if*, %struct.s6i2c_if** %6, align 8
  %61 = getelementptr inbounds %struct.s6i2c_if, %struct.s6i2c_if* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %51, %49
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @i2c_rd16(%struct.s6i2c_if*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @s6i2c_handle_interrupt(%struct.s6i2c_if*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
