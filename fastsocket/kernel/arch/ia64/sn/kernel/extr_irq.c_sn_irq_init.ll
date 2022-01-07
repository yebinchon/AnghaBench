; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32* }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IA64_SN2_FIRST_DEVICE_VECTOR = common dso_local global i32 0, align 4
@ia64_first_device_vector = common dso_local global i32 0, align 4
@IA64_SN2_LAST_DEVICE_VECTOR = common dso_local global i32 0, align 4
@ia64_last_device_vector = common dso_local global i32 0, align 4
@NR_IRQS = common dso_local global i32 0, align 4
@no_irq_chip = common dso_local global i32 0, align 4
@irq_type_sn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_irq_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.irq_desc*, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  store %struct.irq_desc* %3, %struct.irq_desc** %2, align 8
  %4 = load i32, i32* @IA64_SN2_FIRST_DEVICE_VECTOR, align 4
  store i32 %4, i32* @ia64_first_device_vector, align 4
  %5 = load i32, i32* @IA64_SN2_LAST_DEVICE_VECTOR, align 4
  store i32 %5, i32* @ia64_last_device_vector, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @NR_IRQS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i64 %13
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @no_irq_chip
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i64 %21
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  store i32* @irq_type_sn, i32** %23, align 8
  br label %24

24:                                               ; preds = %18, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %6

28:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
