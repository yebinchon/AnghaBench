; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc6393xb = type { i32, i32, i64 }

@SCR_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tc6393xb_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc6393xb_irq_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.tc6393xb* @get_irq_chip_data(i32 %6)
  store %struct.tc6393xb* %7, %struct.tc6393xb** %3, align 8
  %8 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %9 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCR_IMR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @tmio_ioread8(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %20 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %18, %21
  %23 = shl i32 1, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %28 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SCR_IMR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @tmio_iowrite8(i32 %26, i64 %31)
  %33 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %34 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %33, i32 0, i32 1
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local %struct.tc6393xb* @get_irq_chip_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
