; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_iofatal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_iofatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: %s: %s unrecoverable channel error\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@CTC_STATE_RXERR = common dso_local global i32 0, align 4
@DEV_EVENT_RXDOWN = common dso_local global i32 0, align 4
@CTC_STATE_TXERR = common dso_local global i32 0, align 4
@DEV_EVENT_TXDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcm_chx_iofatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_iofatal(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.channel*
  store %struct.channel* %12, %struct.channel** %7, align 8
  %13 = load %struct.channel*, %struct.channel** %7, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 3
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %9, align 8
  %19 = load %struct.channel*, %struct.channel** %7, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CHANNEL_DIRECTION(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.channel*, %struct.channel** %7, align 8
  %24 = getelementptr inbounds %struct.channel, %struct.channel* %23, i32 0, i32 1
  %25 = call i32 @fsm_deltimer(i32* %24)
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @CTC_DBF_ERROR, align 4
  %28 = load i32, i32* @CTCM_FUNTAIL, align 4
  %29 = load %struct.channel*, %struct.channel** %7, align 8
  %30 = getelementptr inbounds %struct.channel, %struct.channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @READ, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @CTCM_DBF_TEXT_(i32 %26, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i8* %36)
  %38 = load %struct.channel*, %struct.channel** %7, align 8
  %39 = call i64 @IS_MPC(%struct.channel* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %3
  %42 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %43 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %48 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %3
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @READ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @CTC_STATE_RXERR, align 4
  %59 = call i32 @fsm_newstate(i32* %57, i32 %58)
  %60 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %61 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = call i32 @fsm_event(i32 %62, i32 %63, %struct.net_device* %64)
  br label %76

66:                                               ; preds = %52
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @CTC_STATE_TXERR, align 4
  %69 = call i32 @fsm_newstate(i32* %67, i32 %68)
  %70 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %71 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @fsm_event(i32 %72, i32 %73, %struct.net_device* %74)
  br label %76

76:                                               ; preds = %66, %56
  ret void
}

declare dso_local i32 @CHANNEL_DIRECTION(i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_MPC(%struct.channel*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
