; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_bchannel_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_bchannel_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32 }

@CHS_B_UP = common dso_local global i32 0, align 4
@ISDN_STAT_BHUP = common dso_local global i32 0, align 4
@CHS_D_UP = common dso_local global i32 0, align 4
@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@ISDN_STAT_DHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @bchannel_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bchannel_down(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %3 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %4 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CHS_B_UP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @CHS_B_UP, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %13 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = load i32, i32* @ISDN_STAT_BHUP, align 4
  %18 = call i32 @gigaset_i4l_channel_cmd(%struct.bc_state* %16, i32 %17)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %21 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CHS_D_UP, align 4
  %24 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load i32, i32* @CHS_D_UP, align 4
  %30 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %34 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %38 = load i32, i32* @ISDN_STAT_DHUP, align 4
  %39 = call i32 @gigaset_i4l_channel_cmd(%struct.bc_state* %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %19
  %41 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %42 = call i32 @gigaset_free_channel(%struct.bc_state* %41)
  %43 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %44 = call i32 @gigaset_bcs_reinit(%struct.bc_state* %43)
  ret void
}

declare dso_local i32 @gigaset_i4l_channel_cmd(%struct.bc_state*, i32) #1

declare dso_local i32 @gigaset_free_channel(%struct.bc_state*) #1

declare dso_local i32 @gigaset_bcs_reinit(%struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
