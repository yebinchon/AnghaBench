; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_cache_ring_sriov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_cache_ring_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__**, %struct.ixgbe_ring_feature* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_ring_feature = type { i32, i32, i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@RING_F_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_cache_ring_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_cache_ring_sriov(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring_feature*, align 8
  %5 = alloca %struct.ixgbe_ring_feature*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 5
  %10 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %9, align 8
  %11 = load i64, i64* @RING_F_VMDQ, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %10, i64 %11
  store %struct.ixgbe_ring_feature* %12, %struct.ixgbe_ring_feature** %4, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 5
  %15 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %14, align 8
  %16 = load i64, i64* @RING_F_RSS, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %15, i64 %16
  store %struct.ixgbe_ring_feature* %17, %struct.ixgbe_ring_feature** %5, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @__ALIGN_MASK(i32 1, i32 %32)
  %34 = mul nsw i32 %28, %33
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %69, %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %44 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = call i32 @__ALIGN_MASK(i32 %53, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %41
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %76 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @__ALIGN_MASK(i32 1, i32 %81)
  %83 = mul nsw i32 %77, %82
  store i32 %83, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %117, %74
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %93 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %97 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, -1
  %106 = call i32 @__ALIGN_MASK(i32 %101, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %100, %90
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %111, i64 %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %108, i32* %116, align 4
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %84

122:                                              ; preds = %84
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @__ALIGN_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
