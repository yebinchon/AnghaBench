; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_emulate_token_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_smt_emulate_token_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@TICKS_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_emulate_token_ct(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @smt_get_time()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %8, %16
  %18 = mul nsw i32 %17, 100
  %19 = load i32, i32* @TICKS_PER_SECOND, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %22 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %27
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %26, %2
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %41 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %39, i32* %46, align 4
  ret void
}

declare dso_local i32 @smt_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
