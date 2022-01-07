; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_for_serdes_link_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_for_serdes_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"e1000_check_for_serdes_link_generic\00", align 1
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RXCW = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"NOT RXing /C/, disable AutoNeg and force link.\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"RXing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"SERDES: Link up - forced.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SERDES: Link down - force failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"SERDES: Link up - autoneg completed successfully.\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"SERDES: Link down - invalidcodewords detected in autoneg.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SERDES: Link down - no sync.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"SERDES: Link down - autoneg failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_for_serdes_link_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_for_serdes_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @CTRL, align 4
  %10 = call i32 @er32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @STATUS, align 4
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @RXCW, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @E1000_STATUS_LU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @E1000_RXCW_C, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %19
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %161

32:                                               ; preds = %24
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @TXCW, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @E1000_TXCW_ANE, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @ew32(i32 %34, i32 %40)
  %42 = load i32, i32* @CTRL, align 4
  %43 = call i32 @er32(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @E1000_CTRL_SLU, align 4
  %45 = load i32, i32* @E1000_CTRL_FD, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CTRL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ew32(i32 %49, i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = call i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %32
  %57 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %161

58:                                               ; preds = %32
  br label %115

59:                                               ; preds = %19, %1
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @E1000_CTRL_SLU, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @E1000_RXCW_C, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = call i32 @e_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @TXCW, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ew32(i32 %71, i32 %74)
  %76 = load i32, i32* @CTRL, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @E1000_CTRL_SLU, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i32 @ew32(i32 %76, i32 %80)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  br label %114

84:                                               ; preds = %64, %59
  %85 = load i32, i32* @E1000_TXCW_ANE, align 4
  %86 = load i32, i32* @TXCW, align 4
  %87 = call i32 @er32(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %84
  %91 = call i32 @udelay(i32 10)
  %92 = load i32, i32* @RXCW, align 4
  %93 = call i32 @er32(i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @E1000_RXCW_IV, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 2
  store i32 1, i32* %105, align 4
  %106 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %98
  br label %112

108:                                              ; preds = %90
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 2
  store i32 0, i32* %110, align 4
  %111 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %107
  br label %113

113:                                              ; preds = %112, %84
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %58
  %116 = load i32, i32* @E1000_TXCW_ANE, align 4
  %117 = load i32, i32* @TXCW, align 4
  %118 = call i32 @er32(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %115
  %122 = load i32, i32* @STATUS, align 4
  %123 = call i32 @er32(i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @E1000_STATUS_LU, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %121
  %129 = call i32 @udelay(i32 10)
  %130 = load i32, i32* @RXCW, align 4
  %131 = call i32 @er32(i32 %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %128
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @E1000_RXCW_IV, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %143 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %142, i32 0, i32 2
  store i32 1, i32* %143, align 4
  %144 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %149

145:                                              ; preds = %136
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 2
  store i32 0, i32* %147, align 4
  %148 = call i32 @e_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %141
  br label %154

150:                                              ; preds = %128
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 2
  store i32 0, i32* %152, align 4
  %153 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %149
  br label %159

155:                                              ; preds = %121
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %157 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  %158 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %154
  br label %160

160:                                              ; preds = %159, %115
  br label %161

161:                                              ; preds = %160, %56, %29
  %162 = load i64, i64* %6, align 8
  ret i64 %162
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
