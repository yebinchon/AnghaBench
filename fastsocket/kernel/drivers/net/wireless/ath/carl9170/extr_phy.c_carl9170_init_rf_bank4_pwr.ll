; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_rf_bank4_pwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_rf_bank4_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@byte_rev_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32, i32, i32)* @carl9170_init_rf_bank4_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_rf_bank4_pwr(%struct.ar9170* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 1, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 128, label %25
    i32 130, label %28
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 10
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 10
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %4
  br label %33

29:                                               ; preds = %4
  %30 = call i32 (...) @BUG()
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %122

33:                                               ; preds = %28, %25, %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %37, 10
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 4800
  %43 = sdiv i32 %42, 5
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %17, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 4800
  %48 = sdiv i32 %47, 10
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 1, i64* %19, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i64*, i64** @byte_rev_table, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  br label %78

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 2484
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 2274
  %62 = sdiv i32 %61, 5
  %63 = add nsw i32 10, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %17, align 8
  store i64 1, i64* %20, align 8
  br label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 2272
  %68 = sdiv i32 %67, 5
  %69 = add nsw i32 16, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %17, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i64, i64* %17, align 8
  %73 = mul i64 %72, 4
  store i64 %73, i64* %17, align 8
  %74 = load i64*, i64** @byte_rev_table, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  br label %78

78:                                               ; preds = %71, %51
  %79 = load i64, i64* %17, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %12, align 4
  %81 = load i64, i64* %18, align 8
  %82 = shl i64 %81, 3
  %83 = or i64 33, %82
  %84 = load i64, i64* %19, align 8
  %85 = shl i64 %84, 2
  %86 = or i64 %83, %85
  %87 = load i64, i64* %20, align 8
  %88 = shl i64 %87, 1
  %89 = or i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 31
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 31
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 5
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 5
  %101 = and i32 %100, 7
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 5
  %104 = and i32 %103, 7
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 %105, 5
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %16, align 4
  %109 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %110 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %109)
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @carl9170_regwrite(i32 1857712, i32 %111)
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @carl9170_regwrite(i32 1857768, i32 %113)
  %115 = call i32 (...) @carl9170_regwrite_finish()
  %116 = call i32 (...) @carl9170_regwrite_result()
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %78
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %122

121:                                              ; preds = %78
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %119, %29
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
