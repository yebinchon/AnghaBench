; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc.c_scdrv_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc.c_scdrv_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subch_data_s = type { i32, i32, i32, i32, i32, i32 }

@SAL_IROUTER_INTR_RECV = common dso_local global i32 0, align 4
@SAL_IROUTER_INTR_XMIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @scdrv_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scdrv_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.subch_data_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.subch_data_s*
  store %struct.subch_data_s* %9, %struct.subch_data_s** %5, align 8
  %10 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %11 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %15 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %18 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %21 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ia64_sn_irtr_intr(i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SAL_IROUTER_INTR_RECV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %33 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %32, i32 0, i32 5
  %34 = call i32 @wake_up(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SAL_IROUTER_INTR_XMIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %42 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %45 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SAL_IROUTER_INTR_XMIT, align 4
  %48 = call i32 @ia64_sn_irtr_intr_disable(i32 %43, i32 %46, i32 %47)
  %49 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %50 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %49, i32 0, i32 2
  %51 = call i32 @wake_up(i32* %50)
  br label %52

52:                                               ; preds = %40, %35
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %55 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.subch_data_s*, %struct.subch_data_s** %5, align 8
  %58 = getelementptr inbounds %struct.subch_data_s, %struct.subch_data_s* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ia64_sn_irtr_intr(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ia64_sn_irtr_intr_disable(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
