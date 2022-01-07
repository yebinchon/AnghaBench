; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-irq.c_ip27_do_irq_mask1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.slice_data* }
%struct.slice_data = type { i32* }

@PI_INT_MASK1_A = common dso_local global i32 0, align 4
@PI_INT_MASK1_B = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@PI_INT_PEND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ip27_do_irq_mask1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip27_do_irq_mask1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.slice_data*, align 8
  %8 = call i64 (...) @smp_processor_id()
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @cputoslice(i64 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @PI_INT_MASK1_A, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @PI_INT_MASK1_B, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.slice_data*, %struct.slice_data** %21, align 8
  store %struct.slice_data* %22, %struct.slice_data** %7, align 8
  %23 = load i32, i32* @PI_INT_PEND1, align 4
  %24 = call i32 @LOCAL_HUB_L(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @LOCAL_HUB_L(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %49

33:                                               ; preds = %16
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ms1bit(i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load %struct.slice_data*, %struct.slice_data** %7, align 8
  %37 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @LOCAL_HUB_CLR_INTR(i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @do_IRQ(i32 %45)
  %47 = load i32, i32* @PI_INT_PEND1, align 4
  %48 = call i32 @LOCAL_HUB_L(i32 %47)
  br label %49

49:                                               ; preds = %33, %32
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @cputoslice(i64) #1

declare dso_local i32 @LOCAL_HUB_L(i32) #1

declare dso_local i32 @ms1bit(i32) #1

declare dso_local i32 @LOCAL_HUB_CLR_INTR(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
