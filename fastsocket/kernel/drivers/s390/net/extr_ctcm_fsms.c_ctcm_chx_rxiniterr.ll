; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_rxiniterr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_rxiniterr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }

@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@CTC_STATE_RXERR = common dso_local global i32 0, align 4
@DEV_EVENT_RXDOWN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s(%s): %s in %s\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@ctc_ch_event_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Initialization failed with RX/TX init handshake error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcm_chx_rxiniterr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_rxiniterr(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.channel*
  store %struct.channel* %11, %struct.channel** %7, align 8
  %12 = load %struct.channel*, %struct.channel** %7, align 8
  %13 = getelementptr inbounds %struct.channel, %struct.channel* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.ctcm_priv*, %struct.ctcm_priv** %16, align 8
  store %struct.ctcm_priv* %17, %struct.ctcm_priv** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i32 @IS_MPCDEV(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.channel*, %struct.channel** %7, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 2
  %28 = call i32 @fsm_deltimer(i32* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.channel*, %struct.channel** %7, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = icmp slt i32 %32, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @ctcm_chx_restart(i32* %36, i32 %37, i8* %38)
  br label %50

40:                                               ; preds = %29
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @CTC_STATE_RXERR, align 4
  %43 = call i32 @fsm_newstate(i32* %41, i32 %42)
  %44 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = call i32 @fsm_event(i32 %46, i32 %47, %struct.net_device* %48)
  br label %50

50:                                               ; preds = %40, %35
  br label %74

51:                                               ; preds = %3
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @CTC_DBF_ERROR, align 4
  %54 = load i32, i32* @CTCM_FUNTAIL, align 4
  %55 = load %struct.channel*, %struct.channel** %7, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** @ctc_ch_event_names, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @fsm_getstate_str(i32* %63)
  %65 = call i32 @CTCM_DBF_TEXT_(i32 %52, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %62, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32*, i32** @ctc_ch_event_names, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @IS_MPCDEV(%struct.net_device*) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @ctcm_chx_restart(i32*, i32, i8*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fsm_getstate_str(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
