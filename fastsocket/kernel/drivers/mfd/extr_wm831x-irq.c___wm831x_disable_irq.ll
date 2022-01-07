; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c___wm831x_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c___wm831x_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_irq_data = type { i32, i32 }
%struct.wm831x = type { i32* }

@wm831x_irqs = common dso_local global %struct.wm831x_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*, i32)* @__wm831x_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wm831x_disable_irq(%struct.wm831x* %0, i32 %1) #0 {
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
  %13 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %14 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %17 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %12
  store i32 %23, i32* %21, align 4
  %24 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %25 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %26 = call i32 @irq_data_to_mask_reg(%struct.wm831x_irq_data* %25)
  %27 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %28 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %5, align 8
  %31 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wm831x_reg_write(%struct.wm831x* %24, i32 %26, i32 %36)
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
