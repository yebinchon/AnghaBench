; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.TYPE_2__*, i32 }
%struct.channel = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DEV_STATE_STARTWAIT_RXTX = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@CTC_EVENT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dev_action_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_action_start(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.channel*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %14, align 8
  store %struct.ctcm_priv* %15, %struct.ctcm_priv** %8, align 8
  %16 = load i32, i32* @SETUP, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @CTCMY_DBF_DEV_NAME(i32 %16, %struct.net_device* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %20 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %19, i32 0, i32 2
  %21 = call i32 @fsm_deltimer(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @DEV_STATE_STARTWAIT_RXTX, align 4
  %24 = call i32 @fsm_newstate(i32* %22, i32 %23)
  %25 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %26 = call i64 @IS_MPC(%struct.ctcm_priv* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %30 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @READ, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %53, %33
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @WRITE, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %41 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %40, i32 0, i32 0
  %42 = load %struct.channel**, %struct.channel*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.channel*, %struct.channel** %42, i64 %44
  %46 = load %struct.channel*, %struct.channel** %45, align 8
  store %struct.channel* %46, %struct.channel** %10, align 8
  %47 = load %struct.channel*, %struct.channel** %10, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CTC_EVENT_START, align 4
  %51 = load %struct.channel*, %struct.channel** %10, align 8
  %52 = call i32 @fsm_event(i32 %49, i32 %50, %struct.channel* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %35

56:                                               ; preds = %35
  ret void
}

declare dso_local i32 @CTCMY_DBF_DEV_NAME(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
