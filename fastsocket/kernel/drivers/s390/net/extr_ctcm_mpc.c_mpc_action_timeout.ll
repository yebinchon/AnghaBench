; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.channel = type { i32 }
%struct.mpc_group = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@CH_XID0_PENDING = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4
@MPC_TRACE = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: dev=%s exit\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mpc_action_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_action_timeout(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca %struct.mpc_group*, align 8
  %10 = alloca %struct.channel*, align 8
  %11 = alloca %struct.channel*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = icmp eq %struct.net_device* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load %struct.ctcm_priv*, %struct.ctcm_priv** %19, align 8
  store %struct.ctcm_priv* %20, %struct.ctcm_priv** %8, align 8
  %21 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %21, i32 0, i32 1
  %23 = load %struct.mpc_group*, %struct.mpc_group** %22, align 8
  store %struct.mpc_group* %23, %struct.mpc_group** %9, align 8
  %24 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %24, i32 0, i32 0
  %26 = load %struct.channel**, %struct.channel*** %25, align 8
  %27 = load i64, i64* @WRITE, align 8
  %28 = getelementptr inbounds %struct.channel*, %struct.channel** %26, i64 %27
  %29 = load %struct.channel*, %struct.channel** %28, align 8
  store %struct.channel* %29, %struct.channel** %10, align 8
  %30 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %31 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %30, i32 0, i32 0
  %32 = load %struct.channel**, %struct.channel*** %31, align 8
  %33 = load i64, i64* @READ, align 8
  %34 = getelementptr inbounds %struct.channel*, %struct.channel** %32, i64 %33
  %35 = load %struct.channel*, %struct.channel** %34, align 8
  store %struct.channel* %35, %struct.channel** %11, align 8
  %36 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %37 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fsm_getstate(i32 %38)
  switch i32 %39, label %56 [
    i32 128, label %40
  ]

40:                                               ; preds = %3
  %41 = load %struct.channel*, %struct.channel** %11, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fsm_getstate(i32 %43)
  %45 = load i32, i32* @CH_XID0_PENDING, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.channel*, %struct.channel** %10, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fsm_getstate(i32 %50)
  %52 = load i32, i32* @CH_XID0_PENDING, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %47, %40
  br label %56

56:                                               ; preds = %3, %55
  %57 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %58 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @fsm_event(i32 %59, i32 %60, %struct.net_device* %61)
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i32, i32* @MPC_TRACE, align 4
  %65 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %66 = load i32, i32* @CTCM_FUNTAIL, align 4
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @CTCM_DBF_TEXT_(i32 %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
