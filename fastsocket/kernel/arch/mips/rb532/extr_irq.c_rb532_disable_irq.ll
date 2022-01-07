; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_irq.c_rb532_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@GROUP0_IRQ_BASE = common dso_local global i32 0, align 4
@intr_group = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_MAPPED_IRQ_GROUP = common dso_local global i32 0, align 4
@GROUP4_IRQ_BASE = common dso_local global i32 0, align 4
@GPIO_MAPPED_IRQ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rb532_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb532_disable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GROUP0_IRQ_BASE, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @disable_local_irq(i32 %14)
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 5
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 31
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_group, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @READ_MASK(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @WRITE_MASK(i32* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @GPIO_MAPPED_IRQ_GROUP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %16
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @GROUP4_IRQ_BASE, align 4
  %43 = add nsw i32 %42, 13
  %44 = icmp ule i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @GPIO_MAPPED_IRQ_BASE, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i32 @rb532_gpio_set_istat(i32 0, i64 %49)
  br label %51

51:                                               ; preds = %45, %40, %16
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_group, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %52, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @group_to_ip(i32 %61)
  %63 = call i32 @disable_local_irq(i32 %62)
  br label %64

64:                                               ; preds = %60, %51
  br label %65

65:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @disable_local_irq(i32) #1

declare dso_local i32 @READ_MASK(i32*) #1

declare dso_local i32 @WRITE_MASK(i32*, i32) #1

declare dso_local i32 @rb532_gpio_set_istat(i32, i64) #1

declare dso_local i32 @group_to_ip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
