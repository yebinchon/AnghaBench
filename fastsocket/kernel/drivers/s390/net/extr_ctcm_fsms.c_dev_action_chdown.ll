; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_chdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_chdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32* }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DEV_EVENT_TXDOWN = common dso_local global i32 0, align 4
@DEV_STATE_STARTWAIT_RXTX = common dso_local global i32 0, align 4
@DEV_EVENT_RXDOWN = common dso_local global i32 0, align 4
@DEV_STATE_STOPPED = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@MPC_CHANNEL_REMOVE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dev_action_chdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_action_chdown(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  store %struct.ctcm_priv* %13, %struct.ctcm_priv** %8, align 8
  %14 = load i32, i32* @SETUP, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call i32 @CTCMY_DBF_DEV_NAME(i32 %14, %struct.net_device* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fsm_getstate(i32* %17)
  switch i32 %18, label %77 [
    i32 133, label %19
    i32 132, label %30
    i32 131, label %39
    i32 129, label %48
    i32 130, label %59
    i32 128, label %68
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fsm_newstate(i32* %24, i32 131)
  br label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fsm_newstate(i32* %27, i32 132)
  br label %29

29:                                               ; preds = %26, %23
  br label %77

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @DEV_STATE_STARTWAIT_RXTX, align 4
  %37 = call i32 @fsm_newstate(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %77

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @DEV_STATE_STARTWAIT_RXTX, align 4
  %46 = call i32 @fsm_newstate(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %77

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fsm_newstate(i32* %53, i32 130)
  br label %58

55:                                               ; preds = %48
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fsm_newstate(i32* %56, i32 128)
  br label %58

58:                                               ; preds = %55, %52
  br label %77

59:                                               ; preds = %3
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @DEV_STATE_STOPPED, align 4
  %66 = call i32 @fsm_newstate(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  br label %77

68:                                               ; preds = %3
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DEV_EVENT_TXDOWN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @DEV_STATE_STOPPED, align 4
  %75 = call i32 @fsm_newstate(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %3, %76, %67, %58, %47, %38, %29
  %78 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %79 = call i64 @IS_MPC(%struct.ctcm_priv* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @DEV_EVENT_RXDOWN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %87 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @READ, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @READ, align 8
  %93 = load i32, i32* @MPC_CHANNEL_REMOVE, align 4
  %94 = call i32 @mpc_channel_action(i32 %91, i64 %92, i32 %93)
  br label %105

95:                                               ; preds = %81
  %96 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %97 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @WRITE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @WRITE, align 8
  %103 = load i32, i32* @MPC_CHANNEL_REMOVE, align 4
  %104 = call i32 @mpc_channel_action(i32 %101, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105, %77
  ret void
}

declare dso_local i32 @CTCMY_DBF_DEV_NAME(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @fsm_getstate(i32*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

declare dso_local i32 @mpc_channel_action(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
