; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_beacon_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_add_beacon_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TIME_UNIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_add_beacon_time(%struct.il_priv* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @il_beacon_time_mask_low(%struct.il_priv* %14, i32 %18)
  %20 = and i64 %13, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %23 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @il_beacon_time_mask_low(%struct.il_priv* %22, i32 %26)
  %28 = and i64 %21, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @TIME_UNIT, align 8
  %31 = mul nsw i64 %29, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @il_beacon_time_mask_high(%struct.il_priv* %33, i32 %37)
  %39 = and i64 %32, %38
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %42 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @il_beacon_time_mask_high(%struct.il_priv* %41, i32 %45)
  %47 = and i64 %40, %46
  %48 = add nsw i64 %39, %47
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %4
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %88

58:                                               ; preds = %4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* %10, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %12, align 8
  br label %87

78:                                               ; preds = %58
  %79 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %78, %62
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @cpu_to_le32(i64 %89)
  ret i32 %90
}

declare dso_local i64 @il_beacon_time_mask_low(%struct.il_priv*, i32) #1

declare dso_local i64 @il_beacon_time_mask_high(%struct.il_priv*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
