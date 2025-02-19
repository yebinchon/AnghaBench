; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_asic_assign_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_asic_assign_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_asic = type { i32* }

@gsc_asic_interrupt_type = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_asic_assign_irq(%struct.gsc_asic* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gsc_asic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.gsc_asic* %0, %struct.gsc_asic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.gsc_asic*, %struct.gsc_asic** %4, align 8
  %9 = getelementptr inbounds %struct.gsc_asic, %struct.gsc_asic* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.gsc_asic*, %struct.gsc_asic** %4, align 8
  %19 = call i32 @gsc_assign_irq(i32* @gsc_asic_interrupt_type, %struct.gsc_asic* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NO_IRQ, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %35

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.gsc_asic*, %struct.gsc_asic** %4, align 8
  %27 = getelementptr inbounds %struct.gsc_asic, %struct.gsc_asic* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @gsc_assign_irq(i32*, %struct.gsc_asic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
