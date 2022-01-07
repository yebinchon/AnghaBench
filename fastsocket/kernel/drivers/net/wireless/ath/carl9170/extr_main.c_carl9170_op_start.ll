; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32, i64*, i8**, i32, %struct.TYPE_5__, i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i8*, i8* }

@AR9170_TXQ_VO = common dso_local global i64 0, align 8
@AR9170_TXQ_VI = common dso_local global i64 0, align 8
@AR9170_TXQ_BE = common dso_local global i64 0, align 8
@AR9170_TXQ_BK = common dso_local global i64 0, align 8
@AR9170_TXQ_SPECIAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@CARL9170_ERP_AUTO = common dso_local global i32 0, align 4
@modparam_nohwcrypt = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_OTHER_RA = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_CTL_OTHER = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_BAD = common dso_local global i32 0, align 4
@AR9170_MAC_REG_DMA_TRIGGER = common dso_local global i32 0, align 4
@AR9170_DMA_TRIGGER_RXQ = common dso_local global i32 0, align 4
@AR9170_CAM_MAX_USER = common dso_local global i32 0, align 4
@AR9170_ENC_ALG_NONE = common dso_local global i32 0, align 4
@CARL9170_IDLE = common dso_local global i32 0, align 4
@CARL9170_STARTED = common dso_local global i32 0, align 4
@CARL9170_STAT_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @carl9170_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  store %struct.ar9170* %8, %struct.ar9170** %3, align 8
  %9 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 5
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %13 = call i32 @carl9170_zap_queues(%struct.ar9170* %12)
  %14 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 15
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @AR9170_TXQ_VO, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CARL9170_FILL_QUEUE(i32 %19, i32 2, i32 3, i32 7, i32 47)
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 15
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AR9170_TXQ_VI, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CARL9170_FILL_QUEUE(i32 %26, i32 2, i32 7, i32 15, i32 94)
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 15
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @AR9170_TXQ_BE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CARL9170_FILL_QUEUE(i32 %33, i32 3, i32 15, i32 1023, i32 0)
  %35 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 15
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @AR9170_TXQ_BK, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CARL9170_FILL_QUEUE(i32 %40, i32 7, i32 15, i32 1023, i32 0)
  %42 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %43 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %42, i32 0, i32 15
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @AR9170_TXQ_SPECIAL, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CARL9170_FILL_QUEUE(i32 %47, i32 2, i32 3, i32 7, i32 0)
  %49 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %50 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %54 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 14
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @jiffies, align 8
  %62 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %63 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %62, i32 0, i32 13
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* @CARL9170_ERP_AUTO, align 4
  %66 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %67 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @modparam_nohwcrypt, align 4
  %69 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %70 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %68, %72
  %74 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %77 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %80 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %103, %1
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 6
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %81
  %90 = load i8*, i8** @jiffies, align 8
  %91 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %92 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %91, i32 0, i32 11
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %98 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %97, i32 0, i32 10
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 9
  %109 = call i32 @atomic_set(i32* %108, i32 0)
  %110 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %111 = call i32 @carl9170_usb_open(%struct.ar9170* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %209

115:                                              ; preds = %106
  %116 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %117 = call i32 @carl9170_init_mac(%struct.ar9170* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %209

121:                                              ; preds = %115
  %122 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %123 = call i32 @carl9170_set_qos(%struct.ar9170* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %209

127:                                              ; preds = %121
  %128 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %129 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %135 = load i32, i32* @CARL9170_RX_FILTER_OTHER_RA, align 4
  %136 = load i32, i32* @CARL9170_RX_FILTER_CTL_OTHER, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @CARL9170_RX_FILTER_BAD, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @carl9170_rx_filter(%struct.ar9170* %134, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %209

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %127
  %146 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %147 = load i32, i32* @AR9170_MAC_REG_DMA_TRIGGER, align 4
  %148 = load i32, i32* @AR9170_DMA_TRIGGER_RXQ, align 4
  %149 = call i32 @carl9170_write_reg(%struct.ar9170* %146, i32 %147, i32 %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %209

153:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %188, %153
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @AR9170_CAM_MAX_USER, align 4
  %157 = add nsw i32 %156, 4
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %191

159:                                              ; preds = %154
  %160 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @AR9170_ENC_ALG_NONE, align 4
  %163 = call i32 @carl9170_upload_key(%struct.ar9170* %160, i32 %161, i32* null, i32 %162, i32 0, i32* null, i32 0)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %209

167:                                              ; preds = %159
  %168 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @AR9170_ENC_ALG_NONE, align 4
  %171 = call i32 @carl9170_upload_key(%struct.ar9170* %168, i32 %169, i32* null, i32 %170, i32 1, i32* null, i32 0)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %209

175:                                              ; preds = %167
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @AR9170_CAM_MAX_USER, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @carl9170_disable_key(%struct.ar9170* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %209

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %175
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %154

191:                                              ; preds = %154
  %192 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %193 = load i32, i32* @CARL9170_IDLE, align 4
  %194 = load i32, i32* @CARL9170_STARTED, align 4
  %195 = call i32 @carl9170_set_state_when(%struct.ar9170* %192, i32 %193, i32 %194)
  %196 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %197 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %196, i32 0, i32 6
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %200 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %199, i32 0, i32 7
  %201 = load i32, i32* @CARL9170_STAT_WORK, align 4
  %202 = call i32 @msecs_to_jiffies(i32 %201)
  %203 = call i32 @round_jiffies(i32 %202)
  %204 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_7__* %198, i32* %200, i32 %203)
  %205 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %206 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %205, i32 0, i32 6
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = call i32 @ieee80211_wake_queues(%struct.TYPE_7__* %207)
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %191, %185, %174, %166, %152, %143, %126, %120, %114
  %210 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %211 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %210, i32 0, i32 5
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @carl9170_zap_queues(%struct.ar9170*) #1

declare dso_local i32 @CARL9170_FILL_QUEUE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @carl9170_usb_open(%struct.ar9170*) #1

declare dso_local i32 @carl9170_init_mac(%struct.ar9170*) #1

declare dso_local i32 @carl9170_set_qos(%struct.ar9170*) #1

declare dso_local i32 @carl9170_rx_filter(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_upload_key(%struct.ar9170*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @carl9170_disable_key(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_set_state_when(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @round_jiffies(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
