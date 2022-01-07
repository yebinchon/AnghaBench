; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sdma.c_sdma_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sdma.c_sdma_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__*, %struct.qib_sdma_state }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32)* }
%struct.qib_sdma_state = type { i32, i32, i32, i32, i32, %struct.sdma_set_state_action* }
%struct.sdma_set_state_action = type { i64, i64, i64, i64, i64, i64 }

@QIB_SDMA_SENDCTRL_OP_ENABLE = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_INTENABLE = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_HALT = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @sdma_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_set_state(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_sdma_state*, align 8
  %6 = alloca %struct.sdma_set_state_action*, align 8
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 1
  store %struct.qib_sdma_state* %9, %struct.qib_sdma_state** %5, align 8
  %10 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %11 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %10, i32 0, i32 5
  %12 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %11, align 8
  store %struct.sdma_set_state_action* %12, %struct.sdma_set_state_action** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %14 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %17 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %19 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %22 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %25 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %26, i64 %28
  %30 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_ENABLE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %38, i64 %40
  %42 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_INTENABLE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %50, i64 %52
  %54 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_HALT, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %62, i64 %64
  %66 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_DRAIN, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %74, i64 %76
  %78 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %83 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %82, i32 0, i32 4
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %85, i64 %87
  %89 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %94 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %93, i32 0, i32 4
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %84
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %98 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %100 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %102, align 8
  %104 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %105 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %5, align 8
  %106 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %103(%struct.qib_pportdata* %104, i32 %107)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
