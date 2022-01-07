; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i64 }

@I2C_CR = common dso_local global i64 0, align 8
@I2C_CR_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stu300_dev*)* @stu300_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stu300_irq_disable(%struct.stu300_dev* %0) #0 {
  %2 = alloca %struct.stu300_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %2, align 8
  %4 = load %struct.stu300_dev*, %struct.stu300_dev** %2, align 8
  %5 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @I2C_CR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @stu300_r8(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @I2C_CR_INTERRUPT_ENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.stu300_dev*, %struct.stu300_dev** %2, align 8
  %16 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I2C_CR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @stu300_wr8(i32 %14, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.stu300_dev*, %struct.stu300_dev** %2, align 8
  %23 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I2C_CR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @stu300_wr8(i32 %21, i64 %26)
  ret void
}

declare dso_local i32 @stu300_r8(i64) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
