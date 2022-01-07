; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c___wm831x_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c___wm831x_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_irq_data = type { i32, i32 }
%struct.wm831x = type { i32* }

@wm831x_irqs = common dso_local global %struct.wm831x_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*, i32)* @__wm831x_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wm831x_enable_irq(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_irq_data*, align 8
  store %struct.wm831x* %0, %struct.wm831x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** @wm831x_irqs, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %6, i64 %8
  store %struct.wm831x_irq_data* %9, %struct.wm831x_irq_data** %5, align 8
  %10 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %11 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %15 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %18 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %13
  store i32 %24, i32* %22, align 4
  %25 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %26 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %27 = call i32 @irq_data_to_mask_reg(%struct.wm831x_irq_data* %26)
  %28 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %29 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %32 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wm831x_reg_write(%struct.wm831x* %25, i32 %27, i32 %37)
  ret void
}

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @irq_data_to_mask_reg(%struct.wm831x_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
