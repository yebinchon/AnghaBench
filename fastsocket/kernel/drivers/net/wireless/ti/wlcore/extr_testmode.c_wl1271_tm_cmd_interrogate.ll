; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_interrogate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_interrogate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.wl1271_command = type { i32 }
%struct.sk_buff = type { i32 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"testmode cmd interrogate\00", align 1
@WL1271_TM_ATTR_IE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"testmode cmd interrogate failed: %d\00", align 1
@WL1271_TM_ATTR_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_interrogate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_interrogate(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_command*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load i32, i32* @DEBUG_TESTMODE, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @WL1271_TM_ATTR_IE_ID, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i32 @nla_get_u8(%struct.nlattr* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLCORE_STATE_ON, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %100

40:                                               ; preds = %20
  %41 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %42 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %100

46:                                               ; preds = %40
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.wl1271_command* @kzalloc(i32 4, i32 %47)
  store %struct.wl1271_command* %48, %struct.wl1271_command** %7, align 8
  %49 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %50 = icmp ne %struct.wl1271_command* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %97

54:                                               ; preds = %46
  %55 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %58 = call i32 @wl1271_cmd_interrogate(%struct.wl1271* %55, i32 %56, %struct.wl1271_command* %57, i32 4)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %94

64:                                               ; preds = %54
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %69, i32 4)
  store %struct.sk_buff* %70, %struct.sk_buff** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %94

76:                                               ; preds = %64
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* @WL1271_TM_ATTR_DATA, align 4
  %79 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %80 = call i64 @nla_put(%struct.sk_buff* %77, i32 %78, i32 4, %struct.wl1271_command* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %92, %82, %73, %61
  %95 = load %struct.wl1271_command*, %struct.wl1271_command** %7, align 8
  %96 = call i32 @kfree(%struct.wl1271_command* %95)
  br label %97

97:                                               ; preds = %94, %51
  %98 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %99 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %98)
  br label %100

100:                                              ; preds = %97, %45, %37
  %101 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local %struct.wl1271_command* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_interrogate(%struct.wl1271*, i32, %struct.wl1271_command*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.wl1271_command*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.wl1271_command*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
