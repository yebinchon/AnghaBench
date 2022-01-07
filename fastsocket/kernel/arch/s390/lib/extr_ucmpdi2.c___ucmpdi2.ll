; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_ucmpdi2.c___ucmpdi2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_ucmpdi2.c___ucmpdi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ull_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ucmpdi2(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ull_union, align 8
  %7 = alloca %union.ull_union, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast %union.ull_union* %6 to i64*
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %8, align 8
  %10 = bitcast %union.ull_union* %7 to i64*
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %10, align 8
  %12 = bitcast %union.ull_union* %6 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = bitcast %union.ull_union* %7 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = bitcast %union.ull_union* %6 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %union.ull_union* %7 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 2, i32* %3, align 4
  br label %50

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = bitcast %union.ull_union* %6 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = bitcast %union.ull_union* %7 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %50

39:                                               ; preds = %30
  %40 = bitcast %union.ull_union* %6 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.ull_union* %7 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 2, i32* %3, align 4
  br label %50

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %38, %28, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
