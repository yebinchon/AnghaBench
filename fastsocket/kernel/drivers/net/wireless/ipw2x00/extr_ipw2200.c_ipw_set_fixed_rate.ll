; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_fixed_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_fixed_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipw_fixed_rate = type { i32 }

@LIBIPW_OFDM_RATES_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid fixed rate mask in ipw_set_fixed_rate\0A\00", align 1
@LIBIPW_OFDM_SHIFT_MASK_A = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATES_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_6MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_9MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_12MB_MASK = common dso_local global i32 0, align 4
@IPW_MEM_FIXED_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32)* @ipw_set_fixed_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_fixed_rate(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_fixed_rate, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %31 [
    i32 128, label %17
  ]

17:                                               ; preds = %2
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LIBIPW_OFDM_RATES_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %100

27:                                               ; preds = %17
  %28 = load i32, i32* @LIBIPW_OFDM_SHIFT_MASK_A, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %100

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IEEE_B, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @LIBIPW_CCK_RATES_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %35
  br label %100

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LIBIPW_CCK_RATES_MASK, align 4
  %47 = load i32, i32* @LIBIPW_OFDM_RATES_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %100

54:                                               ; preds = %44
  %55 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %75 = ashr i32 %74, 1
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %89 = ashr i32 %88, 1
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %52, %43, %27, %25
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds %struct.ipw_fixed_rate, %struct.ipw_fixed_rate* %5, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %105 = load i32, i32* @IPW_MEM_FIXED_OVERRIDE, align 4
  %106 = call i32 @ipw_read32(%struct.ipw_priv* %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = bitcast %struct.ipw_fixed_rate* %5 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ipw_write_reg32(%struct.ipw_priv* %107, i32 %108, i32 %110)
  ret void
}

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
