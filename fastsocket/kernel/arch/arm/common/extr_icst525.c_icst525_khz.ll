; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_icst525.c_icst525_khz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_icst525.c_icst525_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icst525_params = type { i32 }
%struct.icst525_vco = type { i32, i32, i64 }

@s2div = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @icst525_khz(%struct.icst525_params* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.icst525_vco, align 8
  %5 = alloca %struct.icst525_params*, align 8
  %6 = bitcast %struct.icst525_vco* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %struct.icst525_params* %0, %struct.icst525_params** %5, align 8
  %9 = load %struct.icst525_params*, %struct.icst525_params** %5, align 8
  %10 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  %13 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 8
  %16 = mul nsw i32 %12, %15
  %17 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 2
  %20 = load i32*, i32** @s2div, align 8
  %21 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  %26 = sdiv i32 %16, %25
  %27 = sext i32 %26 to i64
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
