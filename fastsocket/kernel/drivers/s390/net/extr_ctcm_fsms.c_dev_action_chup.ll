; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_chup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_dev_action_chup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv*, i32 }
%struct.ctcm_priv = type { i32* }

@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s(%s): priv = %p [%d,%d]\0A \00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@DEV_EVENT_RXUP = common dso_local global i32 0, align 4
@DEV_STATE_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Connected with remote side\0A\00", align 1
@DEV_EVENT_TXUP = common dso_local global i32 0, align 4
@DEV_STATE_STOPWAIT_RXTX = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@MPC_CHANNEL_ADD = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dev_action_chup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_action_chup(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fsm_getstate(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @SETUP, align 4
  %18 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %19 = load i32, i32* @CTCM_FUNTAIL, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load %struct.ctcm_priv*, %struct.ctcm_priv** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @CTCM_DBF_TEXT_(i32 %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, %struct.ctcm_priv* %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fsm_getstate(i32* %29)
  switch i32 %30, label %88 [
    i32 131, label %31
    i32 132, label %42
    i32 130, label %56
    i32 128, label %70
    i32 129, label %79
  ]

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @DEV_EVENT_RXUP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fsm_newstate(i32* %36, i32 130)
  br label %41

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fsm_newstate(i32* %39, i32 132)
  br label %41

41:                                               ; preds = %38, %35
  br label %88

42:                                               ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DEV_EVENT_RXUP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @DEV_STATE_RUNNING, align 4
  %49 = call i32 @fsm_newstate(i32* %47, i32 %48)
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i32 @ctcm_clear_busy(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %46, %42
  br label %88

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @DEV_EVENT_TXUP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @DEV_STATE_RUNNING, align 4
  %63 = call i32 @fsm_newstate(i32* %61, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = call i32 @ctcm_clear_busy(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %60, %56
  br label %88

70:                                               ; preds = %3
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @DEV_EVENT_RXUP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @DEV_STATE_STOPWAIT_RXTX, align 4
  %77 = call i32 @fsm_newstate(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %88

79:                                               ; preds = %3
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @DEV_EVENT_TXUP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @DEV_STATE_STOPWAIT_RXTX, align 4
  %86 = call i32 @fsm_newstate(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %3, %87, %78, %69, %55, %41
  %89 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %90 = call i64 @IS_MPC(%struct.ctcm_priv* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @DEV_EVENT_RXUP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %98 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @READ, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @READ, align 8
  %104 = load i32, i32* @MPC_CHANNEL_ADD, align 4
  %105 = call i32 @mpc_channel_action(i32 %102, i64 %103, i32 %104)
  br label %116

106:                                              ; preds = %92
  %107 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %108 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @WRITE, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @WRITE, align 8
  %114 = load i32, i32* @MPC_CHANNEL_ADD, align 4
  %115 = call i32 @mpc_channel_action(i32 %112, i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %96
  br label %117

117:                                              ; preds = %116, %88
  ret void
}

declare dso_local i32 @fsm_getstate(i32*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, %struct.ctcm_priv*, i32, i32) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ctcm_clear_busy(%struct.net_device*) #1

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

declare dso_local i32 @mpc_channel_action(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
