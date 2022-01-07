; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ipw2100_priv = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RTS_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SET RTS Threshold -> 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_rts(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %10, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %79

23:                                               ; preds = %4
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %28 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STATUS_INITIALIZED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %74

36:                                               ; preds = %23
  %37 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %44 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RTS_DISABLED, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %11, align 4
  br label %68

48:                                               ; preds = %36
  %49 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %50 = bitcast %union.iwreq_data* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %56 = bitcast %union.iwreq_data* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 2304
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %74

63:                                               ; preds = %54
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %42
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @ipw2100_set_rts_threshold(%struct.ipw2100_priv* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %60, %33
  %75 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %76 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_set_rts_threshold(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
