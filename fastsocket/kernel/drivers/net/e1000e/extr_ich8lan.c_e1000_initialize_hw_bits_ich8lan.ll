; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_initialize_hw_bits_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_initialize_hw_bits_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CTRL_EXT = common dso_local global i32 0, align 4
@e1000_pchlan = common dso_local global i64 0, align 8
@E1000_CTRL_EXT_PHYPDEN = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_NFSW_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NFSR_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@PBECCSTS = common dso_local global i32 0, align 4
@E1000_PBECCSTS_ECC_ENABLE = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MEHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load i32, i32* @CTRL_EXT, align 4
  %5 = call i32 @er32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = or i32 %6, 4194304
  store i32 %7, i32* %3, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_pchlan, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_CTRL_EXT_PHYPDEN, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @CTRL_EXT, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ew32(i32 %19, i32 %20)
  %22 = call i32 @TXDCTL(i32 0)
  %23 = call i32 @er32(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 4194304
  store i32 %25, i32* %3, align 4
  %26 = call i32 @TXDCTL(i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ew32(i32 %26, i32 %27)
  %29 = call i32 @TXDCTL(i32 1)
  %30 = call i32 @er32(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 4194304
  store i32 %32, i32* %3, align 4
  %33 = call i32 @TXDCTL(i32 1)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ew32(i32 %33, i32 %34)
  %36 = call i32 @TARC(i32 0)
  %37 = call i32 @er32(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @e1000_ich8lan, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %18
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, 805306368
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %18
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, 226492416
  store i32 %49, i32* %3, align 4
  %50 = call i32 @TARC(i32 0)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ew32(i32 %50, i32 %51)
  %53 = call i32 @TARC(i32 1)
  %54 = call i32 @er32(i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @TCTL, align 4
  %56 = call i32 @er32(i32 %55)
  %57 = load i32, i32* @E1000_TCTL_MULR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, -268435457
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, 268435456
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, 1157627904
  store i32 %68, i32* %3, align 4
  %69 = call i32 @TARC(i32 1)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ew32(i32 %69, i32 %70)
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_ich8lan, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load i32, i32* @STATUS, align 4
  %80 = call i32 @er32(i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 2147483647
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @STATUS, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @ew32(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %66
  %87 = load i32, i32* @RFCTL, align 4
  %88 = call i32 @er32(i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @E1000_RFCTL_NFSW_DIS, align 4
  %90 = load i32, i32* @E1000_RFCTL_NFSR_DIS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @e1000_ich8lan, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %102 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %86
  %107 = load i32, i32* @RFCTL, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @e1000_pch_lpt, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %106
  %117 = load i32, i32* @PBECCSTS, align 4
  %118 = call i32 @er32(i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* @E1000_PBECCSTS_ECC_ENABLE, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @PBECCSTS, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @ew32(i32 %122, i32 %123)
  %125 = load i32, i32* @CTRL, align 4
  %126 = call i32 @er32(i32 %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* @E1000_CTRL_MEHE, align 4
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @CTRL, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @ew32(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %116, %106
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
