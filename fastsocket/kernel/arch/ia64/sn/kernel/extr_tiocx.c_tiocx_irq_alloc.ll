; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_tiocx_irq_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_tiocx_irq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_irq_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sn_irq_info* @tiocx_irq_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sn_irq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sn_irq_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %6, align 8
  br label %42

19:                                               ; preds = %5
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sn_irq_info* @kzalloc(i32 %20, i32 %21)
  store %struct.sn_irq_info* %22, %struct.sn_irq_info** %12, align 8
  %23 = load %struct.sn_irq_info*, %struct.sn_irq_info** %12, align 8
  %24 = icmp eq %struct.sn_irq_info* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %6, align 8
  br label %42

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sn_irq_info*, %struct.sn_irq_info** %12, align 8
  %30 = call i32 @__pa(%struct.sn_irq_info* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @tiocx_intr_alloc(i32 %27, i32 %28, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.sn_irq_info*, %struct.sn_irq_info** %12, align 8
  %39 = call i32 @kfree(%struct.sn_irq_info* %38)
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %6, align 8
  br label %42

40:                                               ; preds = %26
  %41 = load %struct.sn_irq_info*, %struct.sn_irq_info** %12, align 8
  store %struct.sn_irq_info* %41, %struct.sn_irq_info** %6, align 8
  br label %42

42:                                               ; preds = %40, %37, %25, %18
  %43 = load %struct.sn_irq_info*, %struct.sn_irq_info** %6, align 8
  ret %struct.sn_irq_info* %43
}

declare dso_local %struct.sn_irq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @tiocx_intr_alloc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__pa(%struct.sn_irq_info*) #1

declare dso_local i32 @kfree(%struct.sn_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
