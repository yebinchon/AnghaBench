; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_wx_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ipw_priv = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GET Freq/Channel -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %9, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_10__*
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %4
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %30 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %25, %4
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @libipw_channel_to_index(%struct.TYPE_11__* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %47 = bitcast %union.iwreq_data* %46 to %struct.TYPE_10__*
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @libipw_is_valid_channel(%struct.TYPE_11__* %51, i32 %54)
  switch i32 %55, label %88 [
    i32 128, label %56
    i32 129, label %72
  ]

56:                                               ; preds = %34
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 100000
  %69 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %70 = bitcast %union.iwreq_data* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %90

72:                                               ; preds = %34
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %74 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 100000
  %85 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %86 = bitcast %union.iwreq_data* %85 to %struct.TYPE_10__*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  br label %90

88:                                               ; preds = %34
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %72, %56
  br label %95

91:                                               ; preds = %25
  %92 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %93 = bitcast %union.iwreq_data* %92 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %90
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 3
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %100 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101)
  ret i32 0
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @libipw_channel_to_index(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @libipw_is_valid_channel(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
