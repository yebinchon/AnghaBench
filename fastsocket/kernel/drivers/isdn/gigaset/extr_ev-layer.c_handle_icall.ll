; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_handle_icall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_handle_icall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32 }
%struct.bc_state = type { i32 }
%struct.at_state_t = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"internal error: disposition=%d\0A\00", align 1
@PC_HUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*, %struct.bc_state*, %struct.at_state_t**)* @handle_icall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_icall(%struct.cardstate* %0, %struct.bc_state* %1, %struct.at_state_t** %2) #0 {
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca %struct.bc_state*, align 8
  %6 = alloca %struct.at_state_t**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.at_state_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store %struct.bc_state* %1, %struct.bc_state** %5, align 8
  store %struct.at_state_t** %2, %struct.at_state_t*** %6, align 8
  %9 = load %struct.at_state_t**, %struct.at_state_t*** %6, align 8
  %10 = load %struct.at_state_t*, %struct.at_state_t** %9, align 8
  store %struct.at_state_t* %10, %struct.at_state_t** %8, align 8
  %11 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %12 = call i32 @gigaset_isdn_icall(%struct.at_state_t* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %15 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %21
  ]

14:                                               ; preds = %3
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %3, %3, %15
  %22 = load i32, i32* @PC_HUP, align 4
  %23 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %24 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @gigaset_isdn_icall(%struct.at_state_t*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
