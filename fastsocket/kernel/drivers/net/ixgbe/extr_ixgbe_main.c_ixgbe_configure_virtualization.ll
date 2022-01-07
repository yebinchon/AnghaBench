; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_virtualization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_virtualization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i64, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_VT_CTL = common dso_local global i32 0, align 4
@IXGBE_VMD_CTL_VMDQ_EN = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_POOL_MASK = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_POOL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_REPLEN = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC_VT_LBEN = common dso_local global i32 0, align 4
@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_GCR_EXT_VT_MODE_16 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT_VT_MODE_32 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT_VT_MODE_64 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_configure_virtualization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_virtualization(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 4
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %125

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_VT_CTL, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @IXGBE_VMD_CTL_VMDQ_EN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @IXGBE_VT_CTL_POOL_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = call i32 @VMDQ_P(i32 0)
  %29 = load i32, i32* @IXGBE_VT_CTL_POOL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @IXGBE_VT_CTL_REPLEN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = load i32, i32* @IXGBE_VT_CTL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %37, i32 %38)
  %40 = call i32 @VMDQ_P(i32 0)
  %41 = srem i32 %40, 32
  store i32 %41, i32* %5, align 4
  %42 = call i32 @VMDQ_P(i32 0)
  %43 = icmp sge i32 %42, 32
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %4, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @IXGBE_VFRE(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 -1, %49
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %48, i32 %50)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = xor i32 %53, 1
  %55 = call i32 @IXGBE_VFRE(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i32 %55, i32 %57)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @IXGBE_VFTE(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 -1, %62
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %61, i32 %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = xor i32 %66, 1
  %68 = call i32 @IXGBE_VFTE(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i32 %68, i32 %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %74 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.1*
  %83 = call i32 @VMDQ_P(i32 0)
  %84 = call i32 %80(%struct.ixgbe_hw.1* %82, i32 0, i32 %83)
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* @RING_F_VMDQ, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %96 [
    i32 128, label %92
    i32 129, label %94
  ]

92:                                               ; preds = %17
  %93 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_16, align 4
  store i32 %93, i32* %6, align 4
  br label %98

94:                                               ; preds = %17
  %95 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_32, align 4
  store i32 %95, i32* %6, align 4
  br label %98

96:                                               ; preds = %17
  %97 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_64, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %94, %92
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = load i32, i32* @IXGBE_GCR_EXT, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %105 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %106 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i64)** %110, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = bitcast %struct.ixgbe_hw* %112 to %struct.ixgbe_hw.0*
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 %111(%struct.ixgbe_hw.0* %113, i32 %118, i64 %123)
  br label %125

125:                                              ; preds = %98, %16
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFRE(i32) #1

declare dso_local i32 @IXGBE_VFTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
