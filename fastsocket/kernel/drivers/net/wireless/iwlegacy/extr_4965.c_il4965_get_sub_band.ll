; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_get_sub_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_get_sub_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@EEPROM_TX_POWER_BANDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.il_priv*, i64)* @il4965_get_sub_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @il4965_get_sub_band(%struct.il_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @EEPROM_TX_POWER_BANDS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %48

22:                                               ; preds = %10
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %23, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %35, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %51

47:                                               ; preds = %34, %22
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %6

51:                                               ; preds = %46, %6
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
