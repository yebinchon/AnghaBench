; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_niccy_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_niccy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NICCY_IRQ_CTRL_REG = common dso_local global i32 0, align 4
@NICCY_IRQ_BIT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@irqloops = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @niccy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niccy_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inf_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.inf_hw*
  store %struct.inf_hw* %9, %struct.inf_hw** %6, align 8
  %10 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %11 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %14 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @NICCY_IRQ_CTRL_REG, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @inl(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NICCY_IRQ_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %27 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %33 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @NICCY_IRQ_CTRL_REG, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @outl(i32 %31, i32 %38)
  %40 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %41 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %45 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %44, i32 0, i32 1
  %46 = load i32, i32* @irqloops, align 4
  %47 = call i32 @mISDNipac_irq(i32* %45, i32 %46)
  %48 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %49 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %30, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @mISDNipac_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
