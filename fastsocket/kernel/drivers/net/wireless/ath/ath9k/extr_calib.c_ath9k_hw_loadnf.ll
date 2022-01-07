; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_loadnf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_loadnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ath9k_nfcal_hist* }
%struct.ath9k_nfcal_hist = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_ENABLE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NO_UPDATE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Timeout while waiting for nf to load: AR_PHY_AGC_CONTROL=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_loadnf(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath9k_nfcal_hist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ieee80211_conf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store %struct.ath9k_nfcal_hist* null, %struct.ath9k_nfcal_hist** %5, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 3
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %10, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.ieee80211_conf* %27, %struct.ieee80211_conf** %11, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %30 = call i64 @ath9k_hw_get_default_nf(%struct.ath_hw* %28, %struct.ath9k_channel* %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %39, align 8
  store %struct.ath9k_nfcal_hist* %40, %struct.ath9k_nfcal_hist** %5, align 8
  br label %41

41:                                               ; preds = %35, %2
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %102, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NUM_NF_READINGS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %11, align 8
  %58 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %102

61:                                               ; preds = %56, %52
  %62 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %63 = icmp ne %struct.ath9k_nfcal_hist* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %65, i64 %67
  %69 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %13, align 8
  br label %73

71:                                               ; preds = %61
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %71, %64
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @REG_READ(%struct.ath_hw* %74, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, -512
  store i32 %84, i32* %8, align 4
  %85 = load i64, i64* %13, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 1
  %88 = and i32 %87, 511
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %92 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @REG_WRITE(%struct.ath_hw* %91, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %73, %46
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %42

105:                                              ; preds = %42
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %108 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %109 = call i32 @REG_CLR_BIT(%struct.ath_hw* %106, i32 %107, i32 %108)
  %110 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %111 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %112 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %113 = call i32 @REG_CLR_BIT(%struct.ath_hw* %110, i32 %111, i32 %112)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %116 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %117 = call i32 @REG_SET_BIT(%struct.ath_hw* %114, i32 %115, i32 %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %131, %105
  %119 = load i32, i32* %7, align 4
  %120 = icmp ult i32 %119, 10000
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %123 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %124 = call i32 @REG_READ(%struct.ath_hw* %122, i32 %123)
  %125 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %134

129:                                              ; preds = %121
  %130 = call i32 @udelay(i32 10)
  br label %131

131:                                              ; preds = %129
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %118

134:                                              ; preds = %128, %118
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 10000
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %139 = load i32, i32* @ANY, align 4
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %142 = call i32 @REG_READ(%struct.ath_hw* %140, i32 %141)
  %143 = call i32 @ath_dbg(%struct.ath_common* %138, i32 %139, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %197

144:                                              ; preds = %134
  %145 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %146 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %145)
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %191, %144
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @NUM_NF_READINGS, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %194

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %6, align 4
  %154 = shl i32 1, %153
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %151
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %160 = icmp uge i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %11, align 8
  %163 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  br label %191

166:                                              ; preds = %161, %157
  %167 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %168 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %169 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @REG_READ(%struct.ath_hw* %167, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, -512
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, 412
  store i32 %179, i32* %8, align 4
  %180 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @REG_WRITE(%struct.ath_hw* %180, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %166, %151
  br label %191

191:                                              ; preds = %190, %165
  %192 = load i32, i32* %6, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %147

194:                                              ; preds = %147
  %195 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %196 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %195)
  br label %197

197:                                              ; preds = %194, %137
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_get_default_nf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
