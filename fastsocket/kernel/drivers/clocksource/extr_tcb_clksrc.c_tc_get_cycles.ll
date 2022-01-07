; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_tcb_clksrc.c_tc_get_cycles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_tcb_clksrc.c_tc_get_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@tcaddr = common dso_local global i64 0, align 8
@CV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @tc_get_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_get_cycles(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @raw_local_irq_save(i64 %6)
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i64, i64* @tcaddr, align 8
  %10 = load i32, i32* @CV, align 4
  %11 = call i64 @ATMEL_TC_REG(i32 1, i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @__raw_readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @tcaddr, align 8
  %15 = load i32, i32* @CV, align 4
  %16 = call i64 @ATMEL_TC_REG(i32 0, i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @__raw_readl(i64 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* @tcaddr, align 8
  %22 = load i32, i32* @CV, align 4
  %23 = call i64 @ATMEL_TC_REG(i32 1, i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @__raw_readl(i64 %24)
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %8, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @raw_local_irq_restore(i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  ret i32 %33
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @ATMEL_TC_REG(i32, i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
