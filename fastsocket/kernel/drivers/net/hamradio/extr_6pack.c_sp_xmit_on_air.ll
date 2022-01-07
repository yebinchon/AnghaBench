; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sp_xmit_on_air.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_sp_xmit_on_air.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sixpack = type { i32, i32, i8, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)* }

@sp_xmit_on_air.random = internal global i8 0, align 1
@SIXP_DCD_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sp_xmit_on_air to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_xmit_on_air(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sixpack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sixpack*
  store %struct.sixpack* %7, %struct.sixpack** %3, align 8
  %8 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %9 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i8, i8* @sp_xmit_on_air.random, align 1
  %12 = zext i8 %11 to i32
  %13 = mul nsw i32 %12, 17
  %14 = add nsw i32 %13, 41
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* @sp_xmit_on_air.random, align 1
  %16 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %17 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIXP_DCD_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %1
  %23 = load i8, i8* @sp_xmit_on_air.random, align 1
  %24 = zext i8 %23 to i32
  %25 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %26 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %22
  %31 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %32 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %31, i32 0, i32 3
  store i32 112, i32* %32, align 4
  %33 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %34 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %33, i32 0, i32 10
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %38, align 8
  %40 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %41 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %40, i32 0, i32 10
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %44 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %43, i32 0, i32 3
  %45 = call i32 %39(%struct.TYPE_6__* %42, i32* %44, i32 1)
  %46 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %47 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %49 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %48, i32 0, i32 10
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %53, align 8
  %55 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %56 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %55, i32 0, i32 10
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %59 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %62 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %54(%struct.TYPE_6__* %57, i32* %60, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %67 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %72 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %76 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %75, i32 0, i32 3
  store i32 96, i32* %76, align 4
  %77 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %78 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %77, i32 0, i32 10
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %82, align 8
  %84 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %85 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %84, i32 0, i32 10
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %88 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %87, i32 0, i32 3
  %89 = call i32 %83(%struct.TYPE_6__* %86, i32* %88, i32 1)
  %90 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %91 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %90, i32 0, i32 6
  store i32 0, i32* %91, align 8
  br label %104

92:                                               ; preds = %22, %1
  %93 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %94 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %93, i32 0, i32 9
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sdiv i32 %99, 100
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = call i32 @mod_timer(i32* %94, i64 %102)
  br label %104

104:                                              ; preds = %92, %30
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
