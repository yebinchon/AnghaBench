; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i64)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_RAH_AV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.2*
  %14 = call i64 %11(%struct.e1000_hw.2* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %110

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %19, i64* %5)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %101

24:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %95, %24
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 4
  %32 = icmp slt i64 %26, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @RAL(i64 %34)
  %36 = call i32 @er32(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.1*
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @BM_RAR_L(i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 65535
  %48 = sext i32 %47 to i64
  %49 = call i32 %41(%struct.e1000_hw.1* %43, i32 %45, i64 %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.1*
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @BM_RAR_M(i64 %57)
  %59 = load i32, i32* %3, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 65535
  %62 = sext i32 %61 to i64
  %63 = call i32 %54(%struct.e1000_hw.1* %56, i32 %58, i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @RAH(i64 %64)
  %66 = call i32 @er32(i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.1*
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @BM_RAR_H(i64 %74)
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, 65535
  %78 = sext i32 %77 to i64
  %79 = call i32 %71(%struct.e1000_hw.1* %73, i32 %75, i64 %78)
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.1*
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @BM_RAR_CTRL(i64 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @E1000_RAH_AV, align 4
  %91 = and i32 %89, %90
  %92 = ashr i32 %91, 16
  %93 = sext i32 %92 to i64
  %94 = call i32 %84(%struct.e1000_hw.1* %86, i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %33
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %4, align 8
  br label %25

98:                                               ; preds = %25
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %100 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %99, i64* %5)
  br label %101

101:                                              ; preds = %98, %23
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.0*
  %109 = call i32 %106(%struct.e1000_hw.0* %108)
  br label %110

110:                                              ; preds = %101, %17
  ret void
}

declare dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RAL(i64) #1

declare dso_local i32 @BM_RAR_L(i64) #1

declare dso_local i32 @BM_RAR_M(i64) #1

declare dso_local i32 @RAH(i64) #1

declare dso_local i32 @BM_RAR_H(i64) #1

declare dso_local i32 @BM_RAR_CTRL(i64) #1

declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
