; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_xmit_wait_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_xmit_wait_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32, i32)* }

@IB_PMA_CONG_HW_CONTROL_SAMPLE = common dso_local global i64 0, align 8
@QIBPORTCNTR_PSSTAT = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@IB_PMA_CONG_HW_CONTROL_TIMER = common dso_local global i64 0, align 8
@QIB_CONG_TIMER_PSINTERVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xmit_wait_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmit_wait_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.qib_pportdata*
  store %struct.qib_pportdata* %8, %struct.qib_pportdata** %3, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = call %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %9)
  store %struct.qib_devdata* %10, %struct.qib_devdata** %4, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_SAMPLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  %25 = load i64 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32)** %24, align 8
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %27 = load i32, i32* @QIBPORTCNTR_PSSTAT, align 4
  %28 = call i64 %25(%struct.qib_pportdata* %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %34 = call i32 @cache_hw_sample_counters(%struct.qib_pportdata* %33)
  %35 = load i64, i64* @IB_PMA_CONG_HW_CONTROL_TIMER, align 8
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %40

39:                                               ; preds = %22
  br label %53

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %43 = call i32 @xmit_wait_get_value_delta(%struct.qib_pportdata* %42)
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 1
  %49 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %48, align 8
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %51 = load i32, i32* @QIB_CONG_TIMER_PSINTERVAL, align 4
  %52 = call i32 %49(%struct.qib_pportdata* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %41, %39
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %60 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* @HZ, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @mod_timer(i32* %61, i64 %64)
  ret void
}

declare dso_local %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cache_hw_sample_counters(%struct.qib_pportdata*) #1

declare dso_local i32 @xmit_wait_get_value_delta(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
