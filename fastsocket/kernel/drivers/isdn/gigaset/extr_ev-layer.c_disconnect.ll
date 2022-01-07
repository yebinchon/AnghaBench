; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, i32, %struct.cardstate*, %struct.bc_state* }
%struct.cardstate = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.bc_state*)* }
%struct.TYPE_3__ = type { i32 }
%struct.bc_state = type { i32 }

@PC_UMMODE = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Scheduling PC_UMMODE\00", align 1
@CHS_D_UP = common dso_local global i32 0, align 4
@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@ISDN_STAT_DHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_state_t**)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect(%struct.at_state_t** %0) #0 {
  %2 = alloca %struct.at_state_t**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.cardstate*, align 8
  store %struct.at_state_t** %0, %struct.at_state_t*** %2, align 8
  %6 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  %7 = load %struct.at_state_t*, %struct.at_state_t** %6, align 8
  %8 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %7, i32 0, i32 3
  %9 = load %struct.bc_state*, %struct.bc_state** %8, align 8
  store %struct.bc_state* %9, %struct.bc_state** %4, align 8
  %10 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  %11 = load %struct.at_state_t*, %struct.at_state_t** %10, align 8
  %12 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %11, i32 0, i32 2
  %13 = load %struct.cardstate*, %struct.cardstate** %12, align 8
  store %struct.cardstate* %13, %struct.cardstate** %5, align 8
  %14 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %15 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  %19 = load %struct.at_state_t*, %struct.at_state_t** %18, align 8
  %20 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @PC_UMMODE, align 4
  %29 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @DEBUG_CMD, align 4
  %37 = call i32 @gig_dbg(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 1
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %44 = icmp ne %struct.bc_state* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %38
  %46 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %49, align 8
  %51 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %52 = call i32 %50(%struct.bc_state* %51)
  %53 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %54 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CHS_D_UP, align 4
  %57 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load i32, i32* @CHS_D_UP, align 4
  %63 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %67 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %71 = load i32, i32* @ISDN_STAT_DHUP, align 4
  %72 = call i32 @gigaset_i4l_channel_cmd(%struct.bc_state* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %45
  br label %91

74:                                               ; preds = %38
  %75 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 1
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  %80 = load %struct.at_state_t*, %struct.at_state_t** %79, align 8
  %81 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %80, i32 0, i32 0
  %82 = call i32 @list_del(i32* %81)
  %83 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  %84 = load %struct.at_state_t*, %struct.at_state_t** %83, align 8
  %85 = call i32 @kfree(%struct.at_state_t* %84)
  %86 = load %struct.at_state_t**, %struct.at_state_t*** %2, align 8
  store %struct.at_state_t* null, %struct.at_state_t** %86, align 8
  %87 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %88 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %87, i32 0, i32 1
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_i4l_channel_cmd(%struct.bc_state*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.at_state_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
