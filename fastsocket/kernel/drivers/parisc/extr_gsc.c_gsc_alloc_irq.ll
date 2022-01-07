; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_alloc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_alloc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_irq = type { i32, i32, i32 }

@GSC_EIM_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cannot get irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_alloc_irq(%struct.gsc_irq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_irq*, align 8
  %4 = alloca i32, align 4
  store %struct.gsc_irq* %0, %struct.gsc_irq** %3, align 8
  %5 = load i32, i32* @GSC_EIM_WIDTH, align 4
  %6 = call i32 @txn_alloc_irq(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @txn_alloc_addr(i32 %13)
  %15 = load %struct.gsc_irq*, %struct.gsc_irq** %3, align 8
  %16 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @txn_alloc_data(i32 %17)
  %19 = load %struct.gsc_irq*, %struct.gsc_irq** %3, align 8
  %20 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.gsc_irq*, %struct.gsc_irq** %3, align 8
  %23 = getelementptr inbounds %struct.gsc_irq, %struct.gsc_irq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @txn_alloc_irq(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @txn_alloc_addr(i32) #1

declare dso_local i32 @txn_alloc_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
