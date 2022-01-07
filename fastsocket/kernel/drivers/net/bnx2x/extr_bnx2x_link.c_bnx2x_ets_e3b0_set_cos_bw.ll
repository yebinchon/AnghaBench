; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_cos_bw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_set_cos_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i32 0, align 4
@PBF_REG_COS0_WEIGHT_P1 = common dso_local global i32 0, align 4
@PBF_REG_COS0_WEIGHT_P0 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i32 0, align 4
@PBF_REG_COS1_WEIGHT_P1 = common dso_local global i32 0, align 4
@PBF_REG_COS1_WEIGHT_P0 = common dso_local global i32 0, align 4
@NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2 = common dso_local global i32 0, align 4
@PBF_REG_COS2_WEIGHT_P1 = common dso_local global i32 0, align 4
@PBF_REG_COS2_WEIGHT_P0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3 = common dso_local global i32 0, align 4
@PBF_REG_COS3_WEIGHT_P0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4 = common dso_local global i32 0, align 4
@PBF_REG_COS4_WEIGHT_P0 = common dso_local global i32 0, align 4
@NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5 = common dso_local global i32 0, align 4
@PBF_REG_COS5_WEIGHT_P0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32, i32, i32, i32)* @bnx2x_ets_e3b0_set_cos_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ets_e3b0_set_cos_bw(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %13, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 1, %35 ]
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %13, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %121 [
    i32 0, label %43
    i32 1, label %60
    i32 2, label %77
    i32 3, label %94
    i32 4, label %103
    i32 5, label %112
  ]

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @PBF_REG_COS0_WEIGHT_P1, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @PBF_REG_COS0_WEIGHT_P0, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %17, align 4
  br label %121

60:                                               ; preds = %36
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @PBF_REG_COS1_WEIGHT_P1, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @PBF_REG_COS1_WEIGHT_P0, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %17, align 4
  br label %121

77:                                               ; preds = %36
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @PBF_REG_COS2_WEIGHT_P1, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @PBF_REG_COS2_WEIGHT_P0, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %17, align 4
  br label %121

94:                                               ; preds = %36
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %130

100:                                              ; preds = %94
  %101 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3, align 4
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* @PBF_REG_COS3_WEIGHT_P0, align 4
  store i32 %102, i32* %17, align 4
  br label %121

103:                                              ; preds = %36
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %130

109:                                              ; preds = %103
  %110 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4, align 4
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* @PBF_REG_COS4_WEIGHT_P0, align 4
  store i32 %111, i32* %17, align 4
  br label %121

112:                                              ; preds = %36
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %130

118:                                              ; preds = %112
  %119 = load i32, i32* @NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5, align 4
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* @PBF_REG_COS5_WEIGHT_P0, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %36, %118, %109, %100, %92, %75, %58
  %122 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @REG_WR(%struct.bnx2x* %122, i32 %123, i32 %124)
  %126 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @REG_WR(%struct.bnx2x* %126, i32 %127, i32 %128)
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %121, %115, %106, %97
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
