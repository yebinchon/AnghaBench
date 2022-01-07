; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl12xx_tm_cmd_get_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl12xx_tm_cmd_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl12xx_tm_cmd_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_tm_cmd_get_mac(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %101

36:                                               ; preds = %28, %23
  %37 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %41, i64* %42, align 16
  %43 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 %47, i64* %48, align 8
  %49 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %50 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %12, i64 2
  store i64 %52, i64* %53, align 16
  %54 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %12, i64 3
  store i64 %58, i64* %59, align 8
  %60 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %12, i64 4
  store i64 %64, i64* %65, align 16
  %66 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %12, i64 5
  store i64 %69, i64* %70, align 8
  %71 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32 %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %5, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %36
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %101

83:                                               ; preds = %36
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* @WL1271_TM_ATTR_DATA, align 4
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i64 @nla_put(%struct.sk_buff* %84, i32 %85, i32 %86, i64* %12)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* @EMSGSIZE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %101

94:                                               ; preds = %83
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @cfg80211_testmode_reply(%struct.sk_buff* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %101

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %99, %89, %80, %33, %20
  %102 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %103 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_reply_skb(i32, i32) #2

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @cfg80211_testmode_reply(%struct.sk_buff*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
