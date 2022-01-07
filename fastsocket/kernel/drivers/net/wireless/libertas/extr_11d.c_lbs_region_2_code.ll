; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_region_2_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_region_2_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@COUNTRY_CODE_LEN = common dso_local global i64 0, align 8
@region_code_mapping = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @lbs_region_2_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lbs_region_2_code(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @COUNTRY_CODE_LEN, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i1 [ false, %5 ], [ %14, %9 ]
  br i1 %16, label %17, label %29

17:                                               ; preds = %15
  %18 = load i64*, i64** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @toupper(i64 %21)
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %5

29:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_code_mapping, align 8
  %33 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %32)
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load i64*, i64** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_code_mapping, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @COUNTRY_CODE_LEN, align 8
  %43 = call i32 @memcmp(i64* %36, i32 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_code_mapping, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %2, align 8
  br label %60

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @region_code_mapping, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %55, %45
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i64 @toupper(i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcmp(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
