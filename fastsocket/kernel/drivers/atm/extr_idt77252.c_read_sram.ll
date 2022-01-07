; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_read_sram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_read_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }

@SAR_CMD_READ_SRAM = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@SAR_REG_DR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, i64)* @read_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sram(%struct.idt77252_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i64, i64* @SAR_CMD_READ_SRAM, align 8
  %12 = load i64, i64* %4, align 8
  %13 = shl i64 %12, 2
  %14 = or i64 %11, %13
  %15 = load i32, i32* @SAR_REG_CMD, align 4
  %16 = call i32 @writel(i64 %14, i32 %15)
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %18 = call i32 @waitfor_idle(%struct.idt77252_dev* %17)
  %19 = load i32, i32* @SAR_REG_DR0, align 4
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
