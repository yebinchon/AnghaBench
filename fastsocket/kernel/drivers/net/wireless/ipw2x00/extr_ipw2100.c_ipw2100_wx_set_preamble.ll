; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_preamble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wx_set_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ipw2100_priv = type { i32, i32, i32 }

@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CFG_LONG_PREAMBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_set_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_set_preamble(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %12)
  store %struct.ipw2100_priv* %13, %struct.ipw2100_priv** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @STATUS_INITIALIZED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %55

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @CFG_LONG_PREAMBLE, align 4
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %35 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @CFG_LONG_PREAMBLE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %54 = call i32 @ipw2100_system_config(%struct.ipw2100_priv* %53, i32 0)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %48, %26
  %56 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw2100_system_config(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
