; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_setvalid_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_setvalid_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rate_priv = type { i64, i64*, i64**, i32*, %struct.ath_rateset, %struct.ath_rateset, %struct.ath_rate_table* }
%struct.ath_rateset = type { i64, i64* }
%struct.ath_rate_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_rate_priv*, i32)* @ath_rc_setvalid_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath_rc_setvalid_rates(%struct.ath_rate_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_rate_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_rate_table*, align 8
  %6 = alloca %struct.ath_rateset*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ath_rate_priv* %0, %struct.ath_rate_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %16, i32 0, i32 6
  %18 = load %struct.ath_rate_table*, %struct.ath_rate_table** %17, align 8
  store %struct.ath_rate_table* %18, %struct.ath_rate_table** %5, align 8
  %19 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %12, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %25, i32 0, i32 5
  store %struct.ath_rateset* %26, %struct.ath_rateset** %6, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %28, i32 0, i32 4
  store %struct.ath_rateset* %29, %struct.ath_rateset** %6, align 8
  br label %30

30:                                               ; preds = %27, %24
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %136, %30
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.ath_rateset*, %struct.ath_rateset** %6, align 8
  %34 = getelementptr inbounds %struct.ath_rateset, %struct.ath_rateset* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %139

37:                                               ; preds = %31
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %132, %37
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.ath_rate_table*, %struct.ath_rate_table** %5, align 8
  %41 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %135

44:                                               ; preds = %38
  %45 = load %struct.ath_rate_table*, %struct.ath_rate_table** %5, align 8
  %46 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load %struct.ath_rate_table*, %struct.ath_rate_table** %5, align 8
  %53 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load %struct.ath_rateset*, %struct.ath_rateset** %6, align 8
  %60 = getelementptr inbounds %struct.ath_rateset, %struct.ath_rateset* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %13, align 8
  %65 = load %struct.ath_rate_table*, %struct.ath_rate_table** %5, align 8
  %66 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %14, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %44
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @ath_rc_check_legacy(i64 %75, i64 %76, i32 %77, i64 %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %132

83:                                               ; preds = %74, %44
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ath_rc_check_ht(i64 %87, i64 %88, i32 %89, i64 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %132

95:                                               ; preds = %86, %83
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @ath_rc_valid_phyrate(i64 %96, i64 %97, i32 0)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %132

101:                                              ; preds = %95
  %102 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %103 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %110 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %109, i32 0, i32 2
  %111 = load i64**, i64*** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i64*, i64** %111, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %108, i64* %116, align 8
  %117 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %118 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %3, align 8
  %125 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 1, i32* %128, align 4
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i64 @max(i64 %129, i64 %130)
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %101, %100, %94, %82
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  br label %38

135:                                              ; preds = %38
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %10, align 8
  br label %31

139:                                              ; preds = %31
  %140 = load i64, i64* %12, align 8
  ret i64 %140
}

declare dso_local i32 @ath_rc_check_legacy(i64, i64, i32, i64, i64) #1

declare dso_local i32 @ath_rc_check_ht(i64, i64, i32, i64, i64) #1

declare dso_local i32 @ath_rc_valid_phyrate(i64, i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
