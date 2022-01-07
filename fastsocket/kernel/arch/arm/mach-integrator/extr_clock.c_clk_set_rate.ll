; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 (%struct.clk*, i32)*, i32 }
%struct.icst525_vco = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icst525_vco, align 4
  %7 = alloca %struct.icst525_vco, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.clk*, i32)* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.clk*, %struct.clk** %3, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = udiv i64 %18, 1000
  %20 = call i32 @icst525_khz_to_vco(i32 %17, i64 %19)
  %21 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.icst525_vco* %6 to i8*
  %23 = bitcast %struct.icst525_vco* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @icst525_khz(i32 %26, i32 %28)
  %30 = mul nsw i32 %29, 1000
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 1
  %35 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %34, align 8
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(%struct.clk* %36, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %14, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @icst525_khz_to_vco(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icst525_khz(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
