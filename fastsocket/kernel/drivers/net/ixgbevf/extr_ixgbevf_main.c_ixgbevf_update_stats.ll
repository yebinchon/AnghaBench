; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.ixgbe_hw }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VFGPRC = common dso_local global i32 0, align 4
@IXGBE_VFGPTC = common dso_local global i32 0, align 4
@IXGBE_VFGORC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGORC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFMPRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_update_stats(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 3
  store %struct.ixgbe_hw* %5, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %78

11:                                               ; preds = %1
  %12 = load i32, i32* @IXGBE_VFGPRC, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %12, i32 %16, i64 %20)
  %22 = load i32, i32* @IXGBE_VFGPTC, align 4
  %23 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %22, i32 %26, i64 %30)
  %32 = load i32, i32* @IXGBE_VFGORC_LSB, align 4
  %33 = load i32, i32* @IXGBE_VFGORC_MSB, align 4
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UPDATE_VF_COUNTER_36bit(i32 %32, i32 %33, i32 %37, i32 %41)
  %43 = load i32, i32* @IXGBE_VFGOTC_LSB, align 4
  %44 = load i32, i32* @IXGBE_VFGOTC_MSB, align 4
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @UPDATE_VF_COUNTER_36bit(i32 %43, i32 %44, i32 %48, i32 %52)
  %54 = load i32, i32* @IXGBE_VFMPRC, align 4
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %54, i32 %58, i64 %62)
  %64 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %67, %71
  %73 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @UPDATE_VF_COUNTER_32bit(i32, i32, i64) #1

declare dso_local i32 @UPDATE_VF_COUNTER_36bit(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
