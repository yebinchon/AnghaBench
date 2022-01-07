; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/512x/extr_clock.c_psc_calc_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/512x/extr_clock.c_psc_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.clk = type { i64 }
%struct.device_node = type { i32 }

@sys_clk = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@clockctl = common dso_local global %struct.TYPE_12__* null, align 8
@spdif_rxclk = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ref_clk = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@psc_mclk_in = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@spdif_txclk = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32, %struct.device_node*)* @psc_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psc_calc_rate(%struct.clk* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sys_clk, i32 0, i32 0), align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @out_be32(i32* %15, i32 0)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @out_be32(i32* %22, i32 131072)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @out_be32(i32* %29, i32 196608)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @spdif_rxclk, i32 0, i32 0), align 8
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %79

44:                                               ; preds = %3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 14
  %53 = and i32 %52, 3
  switch i32 %53, label %62 [
    i32 0, label %54
    i32 1, label %56
    i32 2, label %58
    i32 3, label %60
  ]

54:                                               ; preds = %44
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sys_clk, i32 0, i32 0), align 8
  store i64 %55, i64* %7, align 8
  br label %62

56:                                               ; preds = %44
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ref_clk, i32 0, i32 0), align 8
  store i64 %57, i64* %7, align 8
  br label %62

58:                                               ; preds = %44
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @psc_mclk_in, i32 0, i32 0), align 8
  store i64 %59, i64* %7, align 8
  br label %62

60:                                               ; preds = %44
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spdif_txclk, i32 0, i32 0), align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %44, %60, %58, %56, %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clockctl, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 17
  %71 = and i32 %70, 32767
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = udiv i64 %74, %75
  %77 = load %struct.clk*, %struct.clk** %4, align 8
  %78 = getelementptr inbounds %struct.clk, %struct.clk* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %62, %40
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
