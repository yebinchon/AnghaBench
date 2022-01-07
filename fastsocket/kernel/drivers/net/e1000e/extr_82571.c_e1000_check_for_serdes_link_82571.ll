; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_check_for_serdes_link_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_check_for_serdes_link_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RXCW = common dso_local global i32 0, align 4
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"AN_UP     -> AN_PROG\0A\00", align 1
@E1000_RXCW_C = common dso_local global i32 0, align 4
@TXCW = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"FORCED_UP -> AN_PROG\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"AN_PROG   -> AN_UP\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"AN_PROG   -> DOWN\0A\00", align 1
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Error config flow control\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AN_PROG   -> FORCED_UP\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"DOWN      -> AN_PROG\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ANYSTATE  -> DOWN\0A\00", align 1
@AN_RETRY_COUNT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"ANYSTATE  -> AN_PROG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_serdes_link_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_serdes_link_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CTRL, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @STATUS, align 4
  %15 = call i32 @er32(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @RXCW, align 4
  %17 = call i32 @er32(i32 %16)
  %18 = call i32 @usleep_range(i32 10, i32 20)
  %19 = load i32, i32* @RXCW, align 4
  %20 = call i32 @er32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @E1000_RXCW_IV, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %145, label %30

30:                                               ; preds = %25
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %127 [
    i32 131, label %34
    i32 128, label %49
    i32 130, label %75
    i32 129, label %126
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @E1000_STATUS_LU, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 0
  store i32 130, i32* %41, align 4
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %39
  br label %144

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @E1000_RXCW_C, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i32, i32* @TXCW, align 4
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ew32(i32 %55, i32 %58)
  %60 = load i32, i32* @CTRL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @E1000_CTRL_SLU, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @ew32(i32 %60, i32 %64)
  %66 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %66, i32 0, i32 0
  store i32 130, i32* %67, align 4
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %74

71:                                               ; preds = %49
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %54
  br label %144

75:                                               ; preds = %30
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @E1000_RXCW_C, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @E1000_STATUS_LU, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %86, i32 0, i32 0
  store i32 131, i32* %87, align 4
  %88 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %95

91:                                               ; preds = %80
  %92 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %92, i32 0, i32 0
  store i32 129, i32* %93, align 4
  %94 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %85
  br label %125

96:                                               ; preds = %75
  %97 = load i32, i32* @TXCW, align 4
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @E1000_TXCW_ANE, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = call i32 @ew32(i32 %97, i32 %103)
  %105 = load i32, i32* @E1000_CTRL_SLU, align 4
  %106 = load i32, i32* @E1000_CTRL_FD, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @CTRL, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @ew32(i32 %110, i32 %111)
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %114 = call i32 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %96
  %118 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %144

119:                                              ; preds = %96
  %120 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %120, i32 0, i32 0
  store i32 128, i32* %121, align 4
  %122 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = call i32 @e_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %119, %95
  br label %144

126:                                              ; preds = %30
  br label %127

127:                                              ; preds = %30, %126
  %128 = load i32, i32* @TXCW, align 4
  %129 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ew32(i32 %128, i32 %131)
  %133 = load i32, i32* @CTRL, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @E1000_CTRL_SLU, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = call i32 @ew32(i32 %133, i32 %137)
  %139 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %139, i32 0, i32 0
  store i32 130, i32* %140, align 4
  %141 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %127, %125, %117, %74, %48
  br label %210

145:                                              ; preds = %25, %1
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %153, i32 0, i32 0
  store i32 129, i32* %154, align 4
  %155 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %209

156:                                              ; preds = %145
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %187, %156
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @AN_RETRY_COUNT, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157
  %162 = call i32 @usleep_range(i32 10, i32 20)
  %163 = load i32, i32* @RXCW, align 4
  %164 = call i32 @er32(i32 %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @E1000_RXCW_C, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %187

175:                                              ; preds = %169, %161
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @E1000_RXCW_IV, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %182 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %183, i32 0, i32 0
  store i32 129, i32* %184, align 4
  %185 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %190

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %174
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %157

190:                                              ; preds = %180, %157
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @AN_RETRY_COUNT, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load i32, i32* @TXCW, align 4
  %196 = call i32 @er32(i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* @E1000_TXCW_ANE, align 4
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* @TXCW, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @ew32(i32 %200, i32 %201)
  %203 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %204 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %203, i32 0, i32 0
  store i32 130, i32* %204, align 4
  %205 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %206 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  %207 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %194, %190
  br label %209

209:                                              ; preds = %208, %150
  br label %210

210:                                              ; preds = %209, %144
  %211 = load i32, i32* %9, align 4
  ret i32 %211
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
