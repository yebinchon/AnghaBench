; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_irq_call_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_irq_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.wm8350*, i32, i32)* }

@.str = private unnamed_addr constant [34 x i8] c"irq %d nobody cared. now masked.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i32)* @wm8350_irq_call_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_irq_call_handler(%struct.wm8350* %0, i32 %1) #0 {
  %3 = alloca %struct.wm8350*, align 8
  %4 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %6 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %9 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.wm8350*, i32, i32)*, i32 (%struct.wm8350*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.wm8350*, i32, i32)* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %19 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.wm8350*, i32, i32)*, i32 (%struct.wm8350*, i32, i32)** %24, align 8
  %26 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %29 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %25(%struct.wm8350* %26, i32 %27, i32 %35)
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %39 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @wm8350_mask_irq(%struct.wm8350* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %17
  %47 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %48 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8350_mask_irq(%struct.wm8350*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
