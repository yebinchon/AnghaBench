; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@MENELAUS_INT_MASK2 = common dso_local global i32 0, align 4
@MENELAUS_INT_MASK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @menelaus_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menelaus_enable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 7
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @MENELAUS_INT_MASK2, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @menelaus_write_reg(i32 %16, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @MENELAUS_INT_MASK1, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @menelaus_write_reg(i32 %29, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
