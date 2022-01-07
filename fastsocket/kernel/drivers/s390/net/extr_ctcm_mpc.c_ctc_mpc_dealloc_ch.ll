; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_dealloc_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctc_mpc_dealloc_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32, %struct.mpc_group* }
%struct.mpc_group = type { i32, i64, i64, i32*, i32*, i32, i64 }

@MPC_SETUP = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: %s: refcount = %d\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctc_mpc_dealloc_ch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  %5 = alloca %struct.mpc_group*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.net_device* @ctcmpc_get_dev(i32 %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp eq %struct.net_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 2
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %4, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 1
  %17 = load %struct.mpc_group*, %struct.mpc_group** %16, align 8
  store %struct.mpc_group* %17, %struct.mpc_group** %5, align 8
  %18 = load i32, i32* @MPC_SETUP, align 4
  %19 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %20 = load i32, i32* @CTCM_FUNTAIL, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = call i32 @CTCM_DBF_TEXT_(i32 %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %28, i32 0, i32 0
  %30 = call i32 @fsm_deltimer(i32* %29)
  %31 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %32 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %34 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %33, i32 0, i32 5
  %35 = call i32 @fsm_deltimer(i32* %34)
  %36 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %37 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %39 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %41 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %43 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %45 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @fsm_event(i32 %46, i32 %47, %struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @ctcm_close(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.net_device* @ctcmpc_get_dev(i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i32 @ctcm_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
