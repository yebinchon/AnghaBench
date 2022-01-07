; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_initialize_hw_bits_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_initialize_hw_bits_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@PBA_ECC = common dso_local global i32 0, align 4
@E1000_PBA_ECC_CORR_EN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_DMA_DYN_CLK_EN = common dso_local global i32 0, align 4
@RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@GCR = common dso_local global i32 0, align 4
@GCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @TXDCTL(i32 0)
  %5 = call i32 @er32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = or i32 %6, 4194304
  store i32 %7, i32* %3, align 4
  %8 = call i32 @TXDCTL(i32 0)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ew32(i32 %8, i32 %9)
  %11 = call i32 @TXDCTL(i32 1)
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 4194304
  store i32 %14, i32* %3, align 4
  %15 = call i32 @TXDCTL(i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ew32(i32 %15, i32 %16)
  %18 = call i32 @TARC(i32 0)
  %19 = call i32 @er32(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -2013265921
  store i32 %21, i32* %3, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 132, label %26
    i32 131, label %26
    i32 129, label %29
    i32 128, label %29
  ]

26:                                               ; preds = %1, %1
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 125829120
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %1, %1
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, 67108864
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = call i32 @TARC(i32 0)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ew32(i32 %34, i32 %35)
  %37 = call i32 @TARC(i32 1)
  %38 = call i32 @er32(i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %63 [
    i32 132, label %43
    i32 131, label %43
  ]

43:                                               ; preds = %33, %33
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, -1610612737
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 121634816
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @TCTL, align 4
  %49 = call i32 @er32(i32 %48)
  %50 = load i32, i32* @E1000_TCTL_MULR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, -268435457
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %43
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, 268435456
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = call i32 @TARC(i32 1)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ew32(i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %77 [
    i32 130, label %69
    i32 129, label %69
    i32 128, label %69
  ]

69:                                               ; preds = %64, %64, %64
  %70 = load i32, i32* @CTRL, align 4
  %71 = call i32 @er32(i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, -536870913
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @CTRL, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ew32(i32 %74, i32 %75)
  br label %78

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %69
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %93 [
    i32 130, label %83
    i32 129, label %83
    i32 128, label %83
  ]

83:                                               ; preds = %78, %78, %78
  %84 = load i32, i32* @CTRL_EXT, align 4
  %85 = call i32 @er32(i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, -8388609
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, 4194304
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* @CTRL_EXT, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @ew32(i32 %90, i32 %91)
  br label %94

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %83
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 132
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i32, i32* @PBA_ECC, align 4
  %102 = call i32 @er32(i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @E1000_PBA_ECC_CORR_EN, align 4
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* @PBA_ECC, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @ew32(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %94
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %111 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 132
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 131
  br i1 %120, label %121, label %131

121:                                              ; preds = %115, %109
  %122 = load i32, i32* @CTRL_EXT, align 4
  %123 = call i32 @er32(i32 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @E1000_CTRL_EXT_DMA_DYN_CLK_EN, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %3, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @CTRL_EXT, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @ew32(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %115
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 130
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load i32, i32* @RFCTL, align 4
  %139 = call i32 @er32(i32 %138)
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %141 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* @RFCTL, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @ew32(i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %137, %131
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %168 [
    i32 129, label %153
    i32 128, label %153
  ]

153:                                              ; preds = %148, %148
  %154 = load i32, i32* @GCR, align 4
  %155 = call i32 @er32(i32 %154)
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, 4194304
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* @GCR, align 4
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @ew32(i32 %158, i32 %159)
  %161 = load i32, i32* @GCR2, align 4
  %162 = call i32 @er32(i32 %161)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = or i32 %163, 1
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* @GCR2, align 4
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @ew32(i32 %165, i32 %166)
  br label %169

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %168, %153
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
