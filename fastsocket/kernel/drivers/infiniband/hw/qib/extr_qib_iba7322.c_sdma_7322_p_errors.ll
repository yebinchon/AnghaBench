; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_p_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_p_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_2__, i32, %struct.qib_devdata* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_devdata = type { i32 }

@QIB_E_P_SDMAERRS = common dso_local global i32 0, align 4
@QIB_E_P_SDMAUNEXPDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IB%u:%u SDmaUnexpData\0A\00", align 1
@QIB_E_P_SDMAHALT = common dso_local global i32 0, align 4
@qib_sdma_event_e20_hw_started = common dso_local global i32 0, align 4
@qib_sdma_event_e50_hw_cleaned = common dso_local global i32 0, align 4
@qib_sdma_event_e60_hw_halted = common dso_local global i32 0, align 4
@qib_sdma_event_e7322_err_halted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @sdma_7322_p_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_7322_p_errors(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 3
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  store %struct.qib_devdata* %9, %struct.qib_devdata** %6, align 8
  %10 = load i32, i32* @QIB_E_P_SDMAERRS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @QIB_E_P_SDMAUNEXPDATA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @qib_dev_err(%struct.qib_devdata* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %75 [
    i32 134, label %35
    i32 133, label %36
    i32 132, label %46
    i32 131, label %47
    i32 130, label %48
    i32 129, label %58
    i32 128, label %68
  ]

35:                                               ; preds = %26
  br label %75

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %43 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %44 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  br label %75

46:                                               ; preds = %26
  br label %75

47:                                               ; preds = %26
  br label %75

48:                                               ; preds = %26
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = load i32, i32* @qib_sdma_event_e50_hw_cleaned, align 4
  %56 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %75

58:                                               ; preds = %26
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @QIB_E_P_SDMAHALT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %65 = load i32, i32* @qib_sdma_event_e60_hw_halted, align 4
  %66 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %75

68:                                               ; preds = %26
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %70 = load i32, i32* @qib_sdma_event_e7322_err_halted, align 4
  %71 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %69, i32 %70)
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %73 = load i32, i32* @qib_sdma_event_e60_hw_halted, align 4
  %74 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %72, i32 %73)
  br label %75

75:                                               ; preds = %26, %68, %67, %57, %47, %46, %45, %35
  %76 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %77 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %76, i32 0, i32 0
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  ret void
}

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
