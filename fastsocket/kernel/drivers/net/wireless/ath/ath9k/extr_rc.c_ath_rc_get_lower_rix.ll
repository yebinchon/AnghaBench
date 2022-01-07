; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_lower_rix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_lower_rix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rate_priv = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_rate_priv*, i64, i64*)* @ath_rc_get_lower_rix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_rate_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_rate_priv* %0, %struct.ath_rate_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 1, i64* %8, align 8
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  store i32 1, i32* %4, align 4
  br label %38

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
