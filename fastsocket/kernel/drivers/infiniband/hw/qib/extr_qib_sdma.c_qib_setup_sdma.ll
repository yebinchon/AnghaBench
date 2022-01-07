; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sdma.c_qib_setup_sdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sdma.c_qib_setup_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__, i32, %struct.qib_devdata* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qib_devdata = type { {}*, {}* }

@qib_sdma_state_s00_hw_down = common dso_local global i32 0, align 4
@sdma_sw_clean_up_task = common dso_local global i32 0, align 4
@qib_sdma_event_e10_go_hw_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_setup_sdma(%struct.qib_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = call i32 @alloc_sdma(%struct.qib_pportdata* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = bitcast {}** %19 to i32 (%struct.qib_pportdata*)**
  %21 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %20, align 8
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = call i32 %21(%struct.qib_pportdata* %22)
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 7
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %29 = load i32, i32* @qib_sdma_state_s00_hw_down, align 4
  %30 = call i32 @sdma_set_state(%struct.qib_pportdata* %28, i32 %29)
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 7
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @kref_init(i32* %37)
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %44 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %48 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %50 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 0
  %56 = load i32, i32* @sdma_sw_clean_up_task, align 4
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %58 = ptrtoint %struct.qib_pportdata* %57 to i64
  %59 = call i32 @tasklet_init(i32* %55, i32 %56, i64 %58)
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.qib_pportdata*)**
  %63 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %62, align 8
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %65 = call i32 %63(%struct.qib_pportdata* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %15
  br label %73

69:                                               ; preds = %15
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %71 = load i32, i32* @qib_sdma_event_e10_go_hw_start, align 4
  %72 = call i32 @qib_sdma_process_event(%struct.qib_pportdata* %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %78

73:                                               ; preds = %68
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = call i32 @qib_teardown_sdma(%struct.qib_pportdata* %74)
  br label %76

76:                                               ; preds = %73, %14
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @alloc_sdma(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdma_set_state(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_teardown_sdma(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
