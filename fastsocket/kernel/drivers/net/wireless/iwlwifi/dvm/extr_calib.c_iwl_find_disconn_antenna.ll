; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_find_disconn_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_calib.c_iwl_find_disconn_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_chain_noise_data = type { i32, i32, i32, i32*, i32 }

@IWL_CAL_NUM_BEACONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"average_sig: a %d b %d c %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"max_average_sig = %d, antenna %d\0A\00", align 1
@NUM_RX_CHAINS = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED_PATHLOSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"i = %d  rssiDelta = %d  disconn_array[i] = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"All Tx chains are disconnected W/A - declare %d as connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Detected that not all antennas are connected! Connected: %#x, valid: %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"active_chains (bitwise) = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32*, %struct.iwl_chain_noise_data*)* @iwl_find_disconn_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_find_disconn_antenna(%struct.iwl_priv* %0, i32* %1, %struct.iwl_chain_noise_data* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iwl_chain_noise_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.iwl_chain_noise_data* %2, %struct.iwl_chain_noise_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IWL_CAL_NUM_BEACONS, align 4
  %19 = sdiv i32 %17, %18
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IWL_CAL_NUM_BEACONS, align 4
  %26 = sdiv i32 %24, %25
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IWL_CAL_NUM_BEACONS, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %3
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %127, %67
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @NUM_RX_CHAINS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %92, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @MAXIMUM_ALLOWED_PATHLOSS, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %104 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 1, i32* %108, align 4
  br label %114

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %119 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117, i32 %124)
  br label %126

126:                                              ; preds = %114, %87
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %83

130:                                              ; preds = %83
  %131 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %132 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %204, %130
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @NUM_RX_CHAINS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %207

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %14, align 8
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %147 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %142
  br label %204

155:                                              ; preds = %142
  %156 = load i64, i64* %10, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %10, align 8
  %158 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %159 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %207

167:                                              ; preds = %155
  %168 = load i64, i64* %10, align 8
  %169 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %170 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %168, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %167
  %175 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %176 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %174
  %184 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %185 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @find_first_chain(i64 %188)
  store i64 %189, i64* %11, align 8
  %190 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %191 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load i64, i64* %11, align 8
  %196 = call i32 @BIT(i64 %195)
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  %199 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %200 = load i64, i64* %11, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %199, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  br label %207

203:                                              ; preds = %174, %167
  br label %204

204:                                              ; preds = %203, %154
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %138

207:                                              ; preds = %183, %166, %138
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %210 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %208, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %207
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %218 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %216, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %226 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %223, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %229)
  br label %231

231:                                              ; preds = %222, %215, %207
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.iwl_chain_noise_data*, %struct.iwl_chain_noise_data** %6, align 8
  %234 = getelementptr inbounds %struct.iwl_chain_noise_data, %struct.iwl_chain_noise_data* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %236)
  ret void
}

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i64 @find_first_chain(i64) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
