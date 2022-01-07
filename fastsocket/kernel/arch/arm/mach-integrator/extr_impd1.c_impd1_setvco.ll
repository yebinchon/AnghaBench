; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1_setvco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_impd1.c_impd1_setvco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.impd1_module* }
%struct.impd1_module = type { i64, %struct.clk* }
%struct.icst525_vco = type { i32, i32, i32 }

@IMPD1_LOCK = common dso_local global i64 0, align 8
@IMPD1_OSC1 = common dso_local global i64 0, align 8
@IMPD1_OSC2 = common dso_local global i64 0, align 8
@impd1_vco_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i64, i32)* @impd1_setvco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @impd1_setvco(%struct.clk* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.icst525_vco, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.impd1_module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %11, align 4
  %12 = bitcast %struct.icst525_vco* %4 to i8*
  %13 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  store %struct.clk* %0, %struct.clk** %6, align 8
  %14 = load %struct.clk*, %struct.clk** %6, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load %struct.impd1_module*, %struct.impd1_module** %15, align 8
  store %struct.impd1_module* %16, %struct.impd1_module** %7, align 8
  %17 = load %struct.clk*, %struct.clk** %6, align 8
  %18 = load %struct.impd1_module*, %struct.impd1_module** %7, align 8
  %19 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %18, i32 0, i32 1
  %20 = load %struct.clk*, %struct.clk** %19, align 8
  %21 = ptrtoint %struct.clk* %17 to i64
  %22 = ptrtoint %struct.clk* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 9
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.impd1_module*, %struct.impd1_module** %7, align 8
  %37 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IMPD1_LOCK, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 41055, i64 %40)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %59 [
    i32 0, label %43
    i32 1, label %51
  ]

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.impd1_module*, %struct.impd1_module** %7, align 8
  %46 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IMPD1_OSC1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  br label %59

51:                                               ; preds = %3
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.impd1_module*, %struct.impd1_module** %7, align 8
  %54 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IMPD1_OSC2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %3, %51, %43
  %60 = load %struct.impd1_module*, %struct.impd1_module** %7, align 8
  %61 = getelementptr inbounds %struct.impd1_module, %struct.impd1_module* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IMPD1_LOCK, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @writel(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
