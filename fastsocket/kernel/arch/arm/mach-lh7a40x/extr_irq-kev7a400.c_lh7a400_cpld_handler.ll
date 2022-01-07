; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_irq-kev7a400.c_lh7a400_cpld_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_irq-kev7a400.c_lh7a400_cpld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 (i32, %struct.irq_desc*)* }

@CPLD_LATCHED_INTS = common dso_local global i32 0, align 4
@IRQ_KEV_7A400_CPLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @lh7a400_cpld_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lh7a400_cpld_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %6 = load i32, i32* @CPLD_LATCHED_INTS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @IRQ_KEV_7A400_CPLD, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i64 %18
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %24 = call i32 %21(i32 %22, %struct.irq_desc* %23)
  br label %25

25:                                               ; preds = %15, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

31:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
