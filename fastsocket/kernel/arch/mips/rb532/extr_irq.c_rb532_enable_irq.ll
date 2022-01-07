; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@GROUP0_IRQ_BASE = common dso_local global i32 0, align 4
@intr_group = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rb532_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb532_enable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @GROUP0_IRQ_BASE, align 4
  %9 = sub i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @enable_local_irq(i32 %13)
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 5
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 31
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @group_to_ip(i32 %22)
  %24 = call i32 @enable_local_irq(i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_group, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @READ_MASK(i32* %32)
  %34 = load i32, i32* %5, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @WRITE_MASK(i32* %31, i32 %36)
  br label %38

38:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @enable_local_irq(i32) #1

declare dso_local i32 @group_to_ip(i32) #1

declare dso_local i32 @WRITE_MASK(i32*, i32) #1

declare dso_local i32 @READ_MASK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
