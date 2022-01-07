; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_calc_vn_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_calc_vn_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32* }
%struct.cmng_init_input = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VN_0 = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MIN_BW_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MIN_BW_SHIFT = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_HIDE = common dso_local global i32 0, align 4
@DEF_MIN_RATE = common dso_local global i32 0, align 4
@CMNG_FLAGS_PER_PORT_FAIRNESS_VN = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fairness will be disabled due to ETS\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"All MIN values are zeroes fairness will be disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.cmng_init_input*)* @bnx2x_calc_vn_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_calc_vn_min(%struct.bnx2x* %0, %struct.cmng_init_input* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.cmng_init_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.cmng_init_input* %1, %struct.cmng_init_input** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load i32, i32* @VN_0, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i32 @BP_MAX_VN_NUM(%struct.bnx2x* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @FUNC_MF_CFG_MIN_BW_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FUNC_MF_CFG_MIN_BW_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = mul nsw i32 %27, 100
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FUNC_MF_CFG_FUNC_HIDE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %41

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @DEF_MIN_RATE, align 4
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %37
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %44 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = call i64 @BNX2X_IS_ETS_ENABLED(%struct.bnx2x* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %60 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %58
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %65 = call i32 @DP(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %87

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %73 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %78 = call i32 @DP(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %86

79:                                               ; preds = %66
  %80 = load i32, i32* @CMNG_FLAGS_PER_PORT_FAIRNESS_VN, align 4
  %81 = load %struct.cmng_init_input*, %struct.cmng_init_input** %4, align 8
  %82 = getelementptr inbounds %struct.cmng_init_input, %struct.cmng_init_input* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %69
  br label %87

87:                                               ; preds = %86, %56
  ret void
}

declare dso_local i32 @BP_MAX_VN_NUM(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_IS_ETS_ENABLED(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
