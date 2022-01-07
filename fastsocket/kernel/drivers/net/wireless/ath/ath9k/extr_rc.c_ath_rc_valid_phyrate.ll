; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_valid_phyrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_valid_phyrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_RC_HT_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_DS_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_TS_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_SGI_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_40_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ath_rc_valid_phyrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_rc_valid_phyrate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @WLAN_RC_PHY_HT(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @WLAN_RC_HT_FLAG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %66

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @WLAN_RC_PHY_DS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WLAN_RC_DS_FLAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %66

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @WLAN_RC_PHY_TS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WLAN_RC_TS_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %66

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @WLAN_RC_PHY_SGI(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @WLAN_RC_SGI_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %66

47:                                               ; preds = %41, %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @WLAN_RC_PHY_HT(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @WLAN_RC_PHY_40(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @WLAN_RC_40_FLAG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %66

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %50, %47
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %63, %46, %36, %26, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @WLAN_RC_PHY_HT(i32) #1

declare dso_local i64 @WLAN_RC_PHY_DS(i32) #1

declare dso_local i64 @WLAN_RC_PHY_TS(i32) #1

declare dso_local i64 @WLAN_RC_PHY_SGI(i32) #1

declare dso_local i64 @WLAN_RC_PHY_40(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
