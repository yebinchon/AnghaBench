; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcmpc_chx_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_ctcmpc_chx_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { %struct.net_device* }
%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.mpc_group* }
%struct.mpc_group = type { i32 }

@MPCG_EVENT_XID0DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcmpc_chx_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcmpc_chx_resend(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca %struct.mpc_group*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.channel*
  store %struct.channel* %12, %struct.channel** %7, align 8
  %13 = load %struct.channel*, %struct.channel** %7, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %9, align 8
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %19, i32 0, i32 0
  %21 = load %struct.mpc_group*, %struct.mpc_group** %20, align 8
  store %struct.mpc_group* %21, %struct.mpc_group** %10, align 8
  %22 = load %struct.mpc_group*, %struct.mpc_group** %10, align 8
  %23 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPCG_EVENT_XID0DO, align 4
  %26 = load %struct.channel*, %struct.channel** %7, align 8
  %27 = call i32 @fsm_event(i32 %24, i32 %25, %struct.channel* %26)
  ret void
}

declare dso_local i32 @fsm_event(i32, i32, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
