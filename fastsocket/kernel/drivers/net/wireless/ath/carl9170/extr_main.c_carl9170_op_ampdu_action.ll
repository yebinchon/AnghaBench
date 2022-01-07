; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.carl9170_sta_info = type { %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.carl9170_sta_tid = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@modparam_noht = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_PROGRESS = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@CARL9170_BAW_SIZE = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_IDLE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i64, i64*, i32)* @carl9170_op_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ar9170*, align 8
  %17 = alloca %struct.carl9170_sta_info*, align 8
  %18 = alloca %struct.carl9170_sta_tid*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.ar9170*, %struct.ar9170** %20, align 8
  store %struct.ar9170* %21, %struct.ar9170** %16, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %26, %struct.carl9170_sta_info** %17, align 8
  %27 = load i64, i64* @modparam_noht, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %225

32:                                               ; preds = %7
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %221 [
    i32 131, label %34
    i32 130, label %127
    i32 129, label %127
    i32 128, label %127
    i32 132, label %176
    i32 134, label %220
    i32 133, label %220
  ]

34:                                               ; preds = %32
  %35 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %36 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %225

42:                                               ; preds = %34
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %45 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %49)
  %51 = icmp ne %struct.carl9170_sta_tid* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %225

56:                                               ; preds = %42
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.carl9170_sta_tid* @kzalloc(i32 64, i32 %57)
  store %struct.carl9170_sta_tid* %58, %struct.carl9170_sta_tid** %18, align 8
  %59 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %60 = icmp ne %struct.carl9170_sta_tid* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = call i32 (...) @rcu_read_unlock()
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %225

65:                                               ; preds = %56
  %66 = load i64*, i64** %14, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %69 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %71 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %70, i32 0, i32 1
  store i64 %67, i64* %71, align 8
  %72 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %73 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %72, i32 0, i32 0
  store i64 %67, i64* %73, align 8
  %74 = load i32, i32* @CARL9170_TID_STATE_PROGRESS, align 4
  %75 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %76 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %79 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %81 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %84 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %86 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %85, i32 0, i32 6
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %89 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %88, i32 0, i32 9
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %92 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %91, i32 0, i32 8
  %93 = call i32 @skb_queue_head_init(i32* %92)
  %94 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %95 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %94, i32 0, i32 7
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %98 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %97, i32 0, i32 2
  %99 = call i32 @spin_lock_bh(i32* %98)
  %100 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %101 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %105 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %104, i32 0, i32 6
  %106 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %107 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %106, i32 0, i32 3
  %108 = call i32 @list_add_tail_rcu(i32* %105, i32* %107)
  %109 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %110 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %116 = call i32 @rcu_assign_pointer(i32 %114, %struct.carl9170_sta_tid* %115)
  %117 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %118 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %117, i32 0, i32 2
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = call i32 (...) @rcu_read_unlock()
  %121 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %121, i32 %124, i64 %125)
  br label %224

127:                                              ; preds = %32, %32, %32
  %128 = call i32 (...) @rcu_read_lock()
  %129 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %130 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %134)
  store %struct.carl9170_sta_tid* %135, %struct.carl9170_sta_tid** %18, align 8
  %136 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %137 = icmp ne %struct.carl9170_sta_tid* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %127
  %139 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %140 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %139, i32 0, i32 2
  %141 = call i32 @spin_lock_bh(i32* %140)
  %142 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %143 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CARL9170_TID_STATE_SHUTDOWN, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load i32, i32* @CARL9170_TID_STATE_SHUTDOWN, align 4
  %149 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %150 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %138
  %152 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %153 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %152, i32 0, i32 2
  %154 = call i32 @spin_unlock_bh(i32* %153)
  br label %155

155:                                              ; preds = %151, %127
  %156 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %157 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %13, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @RCU_INIT_POINTER(i32 %161, i32* null)
  %163 = call i32 (...) @rcu_read_unlock()
  %164 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %165 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %164, i32 %167, i64 %168)
  %170 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %171 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ar9170*, %struct.ar9170** %16, align 8
  %174 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %173, i32 0, i32 0
  %175 = call i32 @ieee80211_queue_work(i32 %172, i32* %174)
  br label %224

176:                                              ; preds = %32
  %177 = call i32 (...) @rcu_read_lock()
  %178 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %179 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %13, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %183)
  store %struct.carl9170_sta_tid* %184, %struct.carl9170_sta_tid** %18, align 8
  %185 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %186 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i64, i64* %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i32 1, i32* %190, align 4
  %191 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %17, align 8
  %192 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  %197 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %198 = icmp ne %struct.carl9170_sta_tid* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %176
  %200 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %201 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CARL9170_BAW_SIZE, align 4
  %204 = call i32 @bitmap_zero(i32 %202, i32 %203)
  %205 = load i32, i32* @CARL9170_TID_STATE_IDLE, align 4
  %206 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %207 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %199, %176
  %209 = call i32 (...) @rcu_read_unlock()
  %210 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %18, align 8
  %211 = icmp ne %struct.carl9170_sta_tid* %210, null
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @WARN_ON_ONCE(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load i32, i32* @EFAULT, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %8, align 4
  br label %225

219:                                              ; preds = %208
  br label %224

220:                                              ; preds = %32, %32
  br label %224

221:                                              ; preds = %32
  %222 = load i32, i32* @EOPNOTSUPP, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %8, align 4
  br label %225

224:                                              ; preds = %220, %219, %155, %65
  store i32 0, i32* %8, align 4
  br label %225

225:                                              ; preds = %224, %221, %216, %61, %52, %39, %29
  %226 = load i32, i32* %8, align 4
  ret i32 %226
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.carl9170_sta_tid* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.carl9170_sta_tid* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.carl9170_sta_tid*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
