; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_irq_flip_edge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_irq_flip_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asic3 = type { i32 }

@ASIC3_GPIO_EDGE_TRIGGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asic3*, i64, i32)* @asic3_irq_flip_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_irq_flip_edge(%struct.asic3* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.asic3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.asic3* %0, %struct.asic3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.asic3*, %struct.asic3** %4, align 8
  %10 = getelementptr inbounds %struct.asic3, %struct.asic3* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.asic3*, %struct.asic3** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ASIC3_GPIO_EDGE_TRIGGER, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @asic3_read_register(%struct.asic3* %13, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.asic3*, %struct.asic3** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ASIC3_GPIO_EDGE_TRIGGER, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @asic3_write_register(%struct.asic3* %21, i64 %24, i32 %25)
  %27 = load %struct.asic3*, %struct.asic3** %4, align 8
  %28 = getelementptr inbounds %struct.asic3, %struct.asic3* %27, i32 0, i32 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i64) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
