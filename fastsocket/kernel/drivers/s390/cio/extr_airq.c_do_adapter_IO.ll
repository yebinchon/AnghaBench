; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_airq.c_do_adapter_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_airq.c_do_adapter_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }
%struct.airq_t = type { i32, i32 (i64*, i32)* }

@NR_AIRQ_WORDS = common dso_local global i32 0, align 4
@indicators = common dso_local global %struct.TYPE_2__* null, align 8
@NR_AIRQS_PER_WORD = common dso_local global i32 0, align 4
@INDICATOR_MASK = common dso_local global i64 0, align 8
@airqs = common dso_local global %struct.airq_t*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_adapter_IO(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.airq_t*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %77, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NR_AIRQ_WORDS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %80

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @indicators, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NR_AIRQS_PER_WORD, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %71, %11
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @INDICATOR_MASK, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %27
  %33 = load %struct.airq_t***, %struct.airq_t**** @airqs, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds %struct.airq_t**, %struct.airq_t*** %33, i64 %34
  %36 = load %struct.airq_t**, %struct.airq_t*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.airq_t*, %struct.airq_t** %36, i64 %38
  %40 = load %struct.airq_t*, %struct.airq_t** %39, align 8
  store %struct.airq_t* %40, %struct.airq_t** %6, align 8
  %41 = call i32 (...) @barrier()
  %42 = load %struct.airq_t*, %struct.airq_t** %6, align 8
  %43 = call i64 @likely(%struct.airq_t* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = load %struct.airq_t*, %struct.airq_t** %6, align 8
  %47 = getelementptr inbounds %struct.airq_t, %struct.airq_t* %46, i32 0, i32 1
  %48 = load i32 (i64*, i32)*, i32 (i64*, i32)** %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @indicators, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load %struct.airq_t*, %struct.airq_t** %6, align 8
  %58 = getelementptr inbounds %struct.airq_t, %struct.airq_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %48(i64* %56, i32 %59)
  br label %70

61:                                               ; preds = %32
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @indicators, align 8
  %63 = load i64, i64* %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %45
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i64, i64* %5, align 8
  %73 = shl i64 %72, 8
  store i64 %73, i64* %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %24

76:                                               ; preds = %24
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %7

80:                                               ; preds = %7
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @likely(%struct.airq_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
