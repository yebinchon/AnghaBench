; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_txiniterr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_txiniterr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }

@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@CTC_STATE_TXERR = common dso_local global i32 0, align 4
@DEV_EVENT_TXDOWN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s(%s): %s in %s\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@ctc_ch_event_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Initialization failed with RX/TX init handshake error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcm_chx_txiniterr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_txiniterr(i32* %0, i32 %1, i8* %2) #0 {
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
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.channel*, %struct.channel** %7, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 2
  %24 = call i32 @fsm_deltimer(i32* %23)
  %25 = load %struct.channel*, %struct.channel** %7, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = icmp slt i32 %27, 3
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ctcm_chx_restart(i32* %31, i32 %32, i8* %33)
  br label %45

35:                                               ; preds = %21
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CTC_STATE_TXERR, align 4
  %38 = call i32 @fsm_newstate(i32* %36, i32 %37)
  %39 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %40 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call i32 @fsm_event(i32 %41, i32 %42, %struct.net_device* %43)
  br label %45

45:                                               ; preds = %35, %30
  br label %69

46:                                               ; preds = %3
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @CTC_DBF_ERROR, align 4
  %49 = load i32, i32* @CTCM_FUNTAIL, align 4
  %50 = load %struct.channel*, %struct.channel** %7, align 8
  %51 = getelementptr inbounds %struct.channel, %struct.channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** @ctc_ch_event_names, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fsm_getstate_str(i32* %58)
  %60 = call i32 @CTCM_DBF_TEXT_(i32 %47, i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %57, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32*, i32** @ctc_ch_event_names, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %46, %45
  ret void
}

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
