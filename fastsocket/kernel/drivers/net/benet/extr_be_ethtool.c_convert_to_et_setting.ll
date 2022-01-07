; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_convert_to_et_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_convert_to_et_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPPORTED_TP = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_1GBPS = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_100MBPS = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_10MBPS = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Backplane = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@BE_SUPPORTED_SPEED_10GBPS = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKX4_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @convert_to_et_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_et_setting(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %119 [
    i32 135, label %7
    i32 134, label %7
    i32 129, label %7
    i32 132, label %38
    i32 133, label %60
    i32 130, label %66
    i32 128, label %66
    i32 131, label %66
    i32 136, label %88
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32, i32* @SUPPORTED_TP, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %7
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @BE_SUPPORTED_SPEED_100MBPS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BE_SUPPORTED_SPEED_10MBPS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %28
  br label %123

38:                                               ; preds = %2
  %39 = load i32, i32* @SUPPORTED_Backplane, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %123

60:                                               ; preds = %2
  %61 = load i32, i32* @SUPPORTED_Backplane, align 4
  %62 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %123

66:                                               ; preds = %2, %2, %2
  %67 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %66
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %123

88:                                               ; preds = %2
  %89 = load i32, i32* @SUPPORTED_TP, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @BE_SUPPORTED_SPEED_10GBPS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @BE_SUPPORTED_SPEED_1GBPS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @BE_SUPPORTED_SPEED_100MBPS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %109
  br label %123

119:                                              ; preds = %2
  %120 = load i32, i32* @SUPPORTED_TP, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %118, %87, %60, %59, %37
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
