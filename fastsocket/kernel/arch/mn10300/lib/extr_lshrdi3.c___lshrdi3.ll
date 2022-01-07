; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_lshrdi3.c___lshrdi3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_lshrdi3.c___lshrdi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.DIunion = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BITS_PER_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lshrdi3(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.DIunion, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.DIunion, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %union.DIunion* %8 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BITS_PER_UNIT, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %14
  %27 = bitcast %union.DIunion* %6 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = bitcast %union.DIunion* %8 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 0, %32
  %34 = ashr i32 %31, %33
  %35 = bitcast %union.DIunion* %6 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %59

37:                                               ; preds = %14
  %38 = bitcast %union.DIunion* %8 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = bitcast %union.DIunion* %8 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %45, %46
  %48 = bitcast %union.DIunion* %6 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = bitcast %union.DIunion* %8 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %54, %55
  %57 = bitcast %union.DIunion* %6 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %37, %26
  %60 = bitcast %union.DIunion* %6 to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
