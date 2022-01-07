; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_dump_pause_control_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_dump_pause_control_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLC_83XX_SRE_SHIM_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SRE-Shim Ctrl:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Port 0 RxB Pause Threshold Regs[TC7..TC0]:\00", align 1
@QLC_83XX_PORT0_THRESHOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Port 1 RxB Pause Threshold Regs[TC7..TC0]:\00", align 1
@QLC_83XX_PORT1_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%x  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Port 0 RxB TC Max Cell Registers[4..1]:\00", align 1
@QLC_83XX_PORT0_TC_MC_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Port 1 RxB TC Max Cell Registers[4..1]:\00", align 1
@QLC_83XX_PORT1_TC_MC_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Port 0 RxB Rx TC Stats[TC7..TC0]:\00", align 1
@QLC_83XX_PORT0_TC_STATS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Port 1 RxB Rx TC Stats[TC7..TC0]:\00", align 1
@QLC_83XX_PORT1_TC_STATS = common dso_local global i32 0, align 4
@QLC_83XX_PORT2_IFB_THRESHOLD = common dso_local global i32 0, align 4
@QLC_83XX_PORT3_IFB_THRESHOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_dump_pause_control_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_dump_pause_control_regs(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = load i32, i32* @QLC_83XX_SRE_SHIM_REG, align 4
  %10 = call i32 @QLCRD32(%struct.qlcnic_adapter* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %67, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @QLC_83XX_PORT0_THRESHOLD, align 4
  store i32 %29, i32* %7, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_info(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @QLC_83XX_PORT1_THRESHOLD, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33, %30
  br label %41

41:                                               ; preds = %40, %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %3, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 %47, %49
  %51 = call i32 @QLCRD32(%struct.qlcnic_adapter* %46, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_info(i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %17

70:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %121, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %124

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_info(i32* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @QLC_83XX_PORT0_TC_MC_REG, align 4
  store i32 %83, i32* %7, align 4
  br label %95

84:                                               ; preds = %74
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_info(i32* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @QLC_83XX_PORT1_TC_MC_REG, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %84
  br label %95

95:                                               ; preds = %94, %77
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %112, %95
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %3, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 %101, %103
  %105 = call i32 @QLCRD32(%struct.qlcnic_adapter* %100, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %5, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_info(i32* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %99
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_info(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %71

124:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %184, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %187

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %133 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = call i32 (i32*, i8*, ...) @dev_info(i32* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @QLC_83XX_PORT0_TC_STATS, align 4
  store i32 %137, i32* %7, align 4
  br label %149

138:                                              ; preds = %128
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_info(i32* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* @QLC_83XX_PORT1_TC_STATS, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %141, %138
  br label %149

149:                                              ; preds = %148, %131
  store i32 7, i32* %3, align 4
  br label %150

150:                                              ; preds = %175, %149
  %151 = load i32, i32* %3, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @QLCRD32(%struct.qlcnic_adapter* %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 536870911
  store i32 %158, i32* %5, align 4
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %3, align 4
  %163 = shl i32 %162, 29
  %164 = or i32 %161, %163
  %165 = call i32 @QLCWR32(%struct.qlcnic_adapter* %159, i32 %160, i32 %164)
  %166 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @QLCRD32(%struct.qlcnic_adapter* %166, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %170 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32*, i8*, ...) @dev_info(i32* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %153
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %3, align 4
  br label %150

178:                                              ; preds = %150
  %179 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = call i32 (i32*, i8*, ...) @dev_info(i32* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %125

187:                                              ; preds = %125
  %188 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %189 = load i32, i32* @QLC_83XX_PORT2_IFB_THRESHOLD, align 4
  %190 = call i32 @QLCRD32(%struct.qlcnic_adapter* %188, i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %192 = load i32, i32* @QLC_83XX_PORT3_IFB_THRESHOLD, align 4
  %193 = call i32 @QLCRD32(%struct.qlcnic_adapter* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %195 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (i32*, i8*, ...) @dev_info(i32* %197, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %198, i32 %199)
  ret void
}

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
