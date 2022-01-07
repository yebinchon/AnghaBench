; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_start_dial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_start_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, i32, %struct.cardstate*, %struct.bc_state* }
%struct.cardstate = type { i32, i32 }
%struct.bc_state = type { i32 }

@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@PC_CID = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Scheduling PC_CID\00", align 1
@PC_NOCID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Scheduling PC_NOCID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t*, i8*, i32)* @start_dial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dial(%struct.at_state_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.at_state_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bc_state*, align 8
  %8 = alloca %struct.cardstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.at_state_t* %0, %struct.at_state_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %12 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %11, i32 0, i32 3
  %13 = load %struct.bc_state*, %struct.bc_state** %12, align 8
  store %struct.bc_state* %13, %struct.bc_state** %7, align 8
  %14 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %15 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %14, i32 0, i32 2
  %16 = load %struct.cardstate*, %struct.cardstate** %15, align 8
  store %struct.cardstate* %16, %struct.cardstate** %8, align 8
  %17 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %18 = load %struct.bc_state*, %struct.bc_state** %7, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 1
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %27 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %57

36:                                               ; preds = %3
  %37 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 1
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @gigaset_isdn_setup_dial(%struct.at_state_t* %41, i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %57

47:                                               ; preds = %36
  %48 = load i32, i32* @PC_CID, align 4
  %49 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %50 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @DEBUG_CMD, align 4
  %54 = call i32 @gig_dbg(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %56 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %67

57:                                               ; preds = %46, %31
  %58 = load i32, i32* @PC_NOCID, align 4
  %59 = load %struct.at_state_t*, %struct.at_state_t** %4, align 8
  %60 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @DEBUG_CMD, align 4
  %64 = call i32 @gig_dbg(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.cardstate*, %struct.cardstate** %8, align 8
  %66 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_isdn_setup_dial(%struct.at_state_t*, i8*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
