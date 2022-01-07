; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_handle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_irq_data = type { i32, i32, i32 (i32, i32)* }
%struct.wm831x = type { i32 }

@wm831x_irqs = common dso_local global %struct.wm831x_irq_data* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unhandled IRQ %d, masking\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*, i32, i32)* @wm831x_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_handle_irq(%struct.wm831x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm831x_irq_data*, align 8
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** @wm831x_irqs, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %8, i64 %10
  store %struct.wm831x_irq_data* %11, %struct.wm831x_irq_data** %7, align 8
  %12 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %7, align 8
  %13 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %12, i32 0, i32 2
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %7, align 8
  %18 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %17, i32 0, i32 2
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %7, align 8
  %22 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %19(i32 %20, i32 %23)
  %25 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %26 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %7, align 8
  %27 = call i32 @irq_data_to_status_reg(%struct.wm831x_irq_data* %26)
  %28 = load %struct.wm831x_irq_data*, %struct.wm831x_irq_data** %7, align 8
  %29 = getelementptr inbounds %struct.wm831x_irq_data, %struct.wm831x_irq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wm831x_reg_write(%struct.wm831x* %25, i32 %27, i32 %30)
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %34 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @__wm831x_disable_irq(%struct.wm831x* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @irq_data_to_status_reg(%struct.wm831x_irq_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @__wm831x_disable_irq(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
