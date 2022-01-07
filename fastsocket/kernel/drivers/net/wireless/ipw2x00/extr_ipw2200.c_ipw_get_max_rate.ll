; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_get_max_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_get_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IPW_B_MODE = common dso_local global i64 0, align 8
@LIBIPW_CCK_RATES_MASK = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_get_max_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_get_max_rate(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 -2147483648, i32* %4, align 4
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPW_B_MODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @LIBIPW_CCK_RATES_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %1
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %20

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %48 [
    i32 138, label %36
    i32 137, label %37
    i32 136, label %38
    i32 129, label %39
    i32 128, label %40
    i32 139, label %41
    i32 135, label %42
    i32 134, label %43
    i32 133, label %44
    i32 132, label %45
    i32 131, label %46
    i32 130, label %47
  ]

36:                                               ; preds = %34
  store i32 1000000, i32* %2, align 4
  br label %58

37:                                               ; preds = %34
  store i32 2000000, i32* %2, align 4
  br label %58

38:                                               ; preds = %34
  store i32 5500000, i32* %2, align 4
  br label %58

39:                                               ; preds = %34
  store i32 6000000, i32* %2, align 4
  br label %58

40:                                               ; preds = %34
  store i32 9000000, i32* %2, align 4
  br label %58

41:                                               ; preds = %34
  store i32 11000000, i32* %2, align 4
  br label %58

42:                                               ; preds = %34
  store i32 12000000, i32* %2, align 4
  br label %58

43:                                               ; preds = %34
  store i32 18000000, i32* %2, align 4
  br label %58

44:                                               ; preds = %34
  store i32 24000000, i32* %2, align 4
  br label %58

45:                                               ; preds = %34
  store i32 36000000, i32* %2, align 4
  br label %58

46:                                               ; preds = %34
  store i32 48000000, i32* %2, align 4
  br label %58

47:                                               ; preds = %34
  store i32 54000000, i32* %2, align 4
  br label %58

48:                                               ; preds = %34
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IEEE_B, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 11000000, i32* %2, align 4
  br label %58

57:                                               ; preds = %48
  store i32 54000000, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
