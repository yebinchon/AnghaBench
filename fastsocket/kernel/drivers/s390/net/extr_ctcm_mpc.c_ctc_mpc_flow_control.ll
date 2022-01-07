; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.channel = type { i32 }
%struct.mpc_group = type { i32, i32 }
%struct.net_device = type { i32, %struct.ctcm_priv* }

@MPC_TRACE = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: %s: flowc = %d\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@MPCG_STATE_FLOWC = common dso_local global i32 0, align 4
@MPCG_STATE_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctc_mpc_flow_control(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctcm_priv*, align 8
  %6 = alloca %struct.mpc_group*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.channel*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.net_device* @ctcmpc_get_dev(i32 %10)
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = icmp eq %struct.net_device* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %5, align 8
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %19, i32 0, i32 1
  %21 = load %struct.mpc_group*, %struct.mpc_group** %20, align 8
  store %struct.mpc_group* %21, %struct.mpc_group** %6, align 8
  %22 = load i32, i32* @MPC_TRACE, align 4
  %23 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %24 = load i32, i32* @CTCM_FUNTAIL, align 4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CTCM_DBF_TEXT_(i32 %22, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28)
  %30 = load %struct.ctcm_priv*, %struct.ctcm_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %30, i32 0, i32 0
  %32 = load %struct.channel**, %struct.channel*** %31, align 8
  %33 = load i64, i64* @READ, align 8
  %34 = getelementptr inbounds %struct.channel*, %struct.channel** %32, i64 %33
  %35 = load %struct.channel*, %struct.channel** %34, align 8
  store %struct.channel* %35, %struct.channel** %8, align 8
  %36 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %37 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fsm_getstate(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %87 [
    i32 1, label %41
    i32 0, label %66
  ]

41:                                               ; preds = %15
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MPCG_STATE_FLOWC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %87

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @MPCG_STATE_READY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %52 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %57 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %64

58:                                               ; preds = %50
  %59 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %60 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MPCG_STATE_FLOWC, align 4
  %63 = call i32 @fsm_newstate(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  br label %87

65:                                               ; preds = %46
  br label %87

66:                                               ; preds = %15
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MPCG_STATE_FLOWC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %72 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MPCG_STATE_READY, align 4
  %75 = call i32 @fsm_newstate(i32 %73, i32 %74)
  %76 = load %struct.channel*, %struct.channel** %8, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 0
  %78 = call i32 @tasklet_schedule(i32* %77)
  br label %79

79:                                               ; preds = %70, %66
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MPCG_STATE_READY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.mpc_group*, %struct.mpc_group** %6, align 8
  %85 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %87

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %14, %15, %86, %83, %65, %64, %45
  ret void
}

declare dso_local %struct.net_device* @ctcmpc_get_dev(i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
