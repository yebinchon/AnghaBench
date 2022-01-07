; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_next_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_next_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { %struct.TYPE_4__*, i32, %struct.__vxge_hw_channel }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.__vxge_hw_channel = type { i32 }
%struct.vxge_hw_ring_rxd_1 = type { i32, i64 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS = common dso_local global i32 0, align 4
@VXGE_HW_RING_RXD_LIST_OWN_ADAPTER = common dso_local global i32 0, align 4
@VXGE_HW_RING_T_CODE_FRM_DROP = common dso_local global i64 0, align 8
@VXGE_HW_RING_RXD_T_CODE_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_ring_rxd_next_completed(%struct.__vxge_hw_ring* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.__vxge_hw_ring*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.__vxge_hw_channel*, align 8
  %8 = alloca %struct.vxge_hw_ring_rxd_1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %13, i32 0, i32 2
  store %struct.__vxge_hw_channel* %14, %struct.__vxge_hw_channel** %7, align 8
  %15 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @vxge_hw_channel_dtr_try_complete(%struct.__vxge_hw_channel* %15, i8** %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.vxge_hw_ring_rxd_1*
  store %struct.vxge_hw_ring_rxd_1* %20, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %21 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %22 = icmp eq %struct.vxge_hw_ring_rxd_1* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS, align 4
  store i32 %24, i32* %9, align 4
  br label %101

25:                                               ; preds = %3
  %26 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %27 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VXGE_HW_RING_RXD_LIST_OWN_ADAPTER, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @VXGE_HW_RING_RXD_T_CODE_GET(i32 %32)
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VXGE_HW_RING_T_CODE_FRM_DROP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %42, %25
  %46 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %47 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @vxge_assert(i32 %50)
  %52 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %53 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %7, align 8
  %57 = call i32 @vxge_hw_channel_dtr_complete(%struct.__vxge_hw_channel* %56)
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VXGE_HW_RING_RXD_T_CODE_UNUSED, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @vxge_assert(i32 %62)
  %64 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %65 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %72 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %78 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %76, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %45
  %85 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %86 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %92 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i64 %90, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %45
  %97 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %97, i32* %9, align 4
  br label %101

98:                                               ; preds = %42, %37
  %99 = load i8**, i8*** %5, align 8
  store i8* null, i8** %99, align 8
  %100 = load i32, i32* @VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %96, %23
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @vxge_hw_channel_dtr_try_complete(%struct.__vxge_hw_channel*, i8**) #1

declare dso_local i64 @VXGE_HW_RING_RXD_T_CODE_GET(i32) #1

declare dso_local i32 @vxge_assert(i32) #1

declare dso_local i32 @vxge_hw_channel_dtr_complete(%struct.__vxge_hw_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
