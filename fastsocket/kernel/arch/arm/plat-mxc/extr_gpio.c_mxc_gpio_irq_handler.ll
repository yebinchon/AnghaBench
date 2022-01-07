; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_gpio.c_mxc_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_gpio.c_mxc_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, %struct.TYPE_3__*)* }
%struct.mxc_gpio_port = type { i32, i32 }

@irq_desc = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_gpio_port*, i32)* @mxc_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_gpio_irq_handler(%struct.mxc_gpio_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mxc_gpio_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxc_gpio_port* %0, %struct.mxc_gpio_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %8 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @irq_to_gpio(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %25, align 8
  %27 = icmp ne i32 (i32, %struct.TYPE_3__*)* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %32 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 31
  %36 = shl i32 1, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mxc_flip_edge(%struct.mxc_gpio_port* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.TYPE_3__*)*, i32 (i32, %struct.TYPE_3__*)** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @irq_desc, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = call i32 %49(i32 %50, %struct.TYPE_3__* %54)
  br label %56

56:                                               ; preds = %43, %19
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mxc_flip_edge(%struct.mxc_gpio_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
