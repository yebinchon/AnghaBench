; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wl1271_cmd_cal_p2g = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"testmode cmd test\00", align 1
@WL1271_TM_ATTR_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_ANSWER = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"testmode cmd test failed: %d\00", align 1
@TEST_CMD_P2G_CAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"testmode cmd: radio status=%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_test(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl1271_cmd_cal_p2g*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @DEBUG_TESTMODE, align 4
  %15 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %153

24:                                               ; preds = %2
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i8* @nla_data(%struct.nlattr* %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_len(%struct.nlattr* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @WL1271_TM_ATTR_ANSWER, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %42 = load i64, i64* @WL1271_TM_ATTR_ANSWER, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i64 @nla_get_u8(%struct.nlattr* %44)
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %40, %24
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %153

53:                                               ; preds = %46
  %54 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WLCORE_STATE_ON, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %148

68:                                               ; preds = %53
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %148

74:                                               ; preds = %68
  %75 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @wl1271_cmd_test(%struct.wl1271* %75, i8* %76, i32 %77, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %145

85:                                               ; preds = %74
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to %struct.wl1271_cmd_cal_p2g*
  store %struct.wl1271_cmd_cal_p2g* %90, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %91 = load %struct.wl1271_cmd_cal_p2g*, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %92 = getelementptr inbounds %struct.wl1271_cmd_cal_p2g, %struct.wl1271_cmd_cal_p2g* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @le16_to_cpu(i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.wl1271_cmd_cal_p2g*, %struct.wl1271_cmd_cal_p2g** %12, align 8
  %96 = getelementptr inbounds %struct.wl1271_cmd_cal_p2g, %struct.wl1271_cmd_cal_p2g* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TEST_CMD_P2G_CAL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @wl1271_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %110

107:                                              ; preds = %101, %88
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @wl1271_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @nla_total_size(i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %117, i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %9, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = icmp ne %struct.sk_buff* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %110
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %145

125:                                              ; preds = %110
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = load i64, i64* @WL1271_TM_ATTR_DATA, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @nla_put(%struct.sk_buff* %126, i64 %127, i32 %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %145

137:                                              ; preds = %125
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %145

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %85
  br label %145

145:                                              ; preds = %144, %142, %132, %122, %82
  %146 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %147 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %146)
  br label %148

148:                                              ; preds = %145, %73, %65
  %149 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %150 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %149, i32 0, i32 1
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %50, %21
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_cmd_test(%struct.wl1271*, i8*, i32, i64) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wl1271_info(i8*, i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i64, i32, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
