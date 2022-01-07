; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_configure_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_configure_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_ring*, %struct.e1000_ring*, %struct.e1000_hw }
%struct.e1000_ring = type { i32, i32, i64 }
%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82574 = common dso_local global i64 0, align 8
@RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_ACK_DIS = common dso_local global i32 0, align 4
@E1000_IMS_RXQ0 = common dso_local global i32 0, align 4
@E1000_IVAR_INT_ALLOC_VALID = common dso_local global i32 0, align 4
@E1000_IMS_TXQ0 = common dso_local global i32 0, align 4
@IVAR = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PBA_CLR = common dso_local global i32 0, align 4
@IAM = common dso_local global i32 0, align 4
@E1000_EIAC_MASK_82574 = common dso_local global i32 0, align 4
@E1000_IMS_OTHER = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EIAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure_msix(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.e1000_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 3
  store %struct.e1000_hw* %11, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 2
  %14 = load %struct.e1000_ring*, %struct.e1000_ring** %13, align 8
  store %struct.e1000_ring* %14, %struct.e1000_ring** %4, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 1
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %16, align 8
  store %struct.e1000_ring* %17, %struct.e1000_ring** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_82574, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i32, i32* @RFCTL, align 4
  %28 = call i32 @er32(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @E1000_RFCTL_ACK_DIS, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @RFCTL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load i32, i32* @E1000_IMS_RXQ0, align 4
  %37 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %35
  %51 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 256
  %55 = sdiv i32 1000000000, %54
  %56 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @writel(i32 %55, i64 %58)
  br label %65

60:                                               ; preds = %35
  %61 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @writel(i32 1, i64 %63)
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* @E1000_IVAR_INT_ALLOC_VALID, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @E1000_IMS_TXQ0, align 4
  %70 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %71 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %75 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %65
  %79 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 256
  %83 = sdiv i32 1000000000, %82
  %84 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %85 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @writel(i32 %83, i64 %86)
  br label %93

88:                                               ; preds = %65
  %89 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %90 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @writel(i32 1, i64 %91)
  br label %93

93:                                               ; preds = %88, %78
  %94 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  %95 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @E1000_IVAR_INT_ALLOC_VALID, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %101, %102
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @E1000_IVAR_INT_ALLOC_VALID, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %109, %110
  %112 = shl i32 %111, 16
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %116 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %93
  %120 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 256
  %124 = sdiv i32 1000000000, %123
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @E1000_EITR_82574(i32 %128)
  %130 = add nsw i64 %127, %129
  %131 = call i32 @writel(i32 %124, i64 %130)
  br label %140

132:                                              ; preds = %93
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @E1000_EITR_82574(i32 %136)
  %138 = add nsw i64 %135, %137
  %139 = call i32 @writel(i32 1, i64 %138)
  br label %140

140:                                              ; preds = %132, %119
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, -2147483648
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* @IVAR, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @ew32(i32 %143, i32 %144)
  %146 = load i32, i32* @CTRL_EXT, align 4
  %147 = call i32 @er32(i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @E1000_CTRL_EXT_PBA_CLR, align 4
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* @IAM, align 4
  %152 = load i32, i32* @E1000_EIAC_MASK_82574, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* @E1000_IMS_OTHER, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @ew32(i32 %151, i32 %155)
  %157 = load i32, i32* @E1000_CTRL_EXT_EIAME, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* @CTRL_EXT, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @ew32(i32 %160, i32 %161)
  %163 = call i32 (...) @e1e_flush()
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @E1000_EITR_82574(i32) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
