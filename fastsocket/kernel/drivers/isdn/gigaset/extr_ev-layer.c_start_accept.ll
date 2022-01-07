; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_start_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_start_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, %struct.cardstate* }
%struct.cardstate = type { i32 }

@PC_ACCEPT = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Scheduling PC_ACCEPT\00", align 1
@PC_HUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Scheduling PC_HUP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t*)* @start_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_accept(%struct.at_state_t* %0) #0 {
  %2 = alloca %struct.at_state_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  store %struct.at_state_t* %0, %struct.at_state_t** %2, align 8
  %5 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %6 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %5, i32 0, i32 1
  %7 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  store %struct.cardstate* %7, %struct.cardstate** %3, align 8
  %8 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %9 = call i32 @gigaset_isdn_setup_accept(%struct.at_state_t* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @PC_ACCEPT, align 4
  %14 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %15 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @DEBUG_CMD, align 4
  %19 = call i32 @gig_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @PC_HUP, align 4
  %24 = load %struct.at_state_t*, %struct.at_state_t** %2, align 8
  %25 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @DEBUG_CMD, align 4
  %29 = call i32 @gig_dbg(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @gigaset_isdn_setup_accept(%struct.at_state_t*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
