; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_classification_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_classification_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vf_queue = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)* }
%struct.bnx2x.0 = type opaque
%struct.TYPE_10__ = type { i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)* }
%struct.bnx2x.1 = type opaque
%union.event_ring_elem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RAMROD_CONT = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unsupported classification command: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to schedule new commands: %d\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Scheduled next pending commands...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vf_queue*, %union.event_ring_elem*)* @bnx2x_vf_handle_classification_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_handle_classification_eqe(%struct.bnx2x* %0, %struct.bnx2x_vf_queue* %1, %union.event_ring_elem* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vf_queue*, align 8
  %6 = alloca %union.event_ring_elem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vf_queue* %1, %struct.bnx2x_vf_queue** %5, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @RAMROD_CONT, align 4
  %10 = call i32 @set_bit(i32 %9, i64* %7)
  %11 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %12 = bitcast %union.event_ring_elem* %11 to %struct.TYPE_8__*
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %18 = ashr i32 %16, %17
  switch i32 %18, label %41 [
    i32 129, label %19
    i32 128, label %30
  ]

19:                                               ; preds = %3
  %20 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)*, i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)** %22, align 8
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = bitcast %struct.bnx2x* %24 to %struct.bnx2x.1*
  %26 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %26, i32 0, i32 1
  %28 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %29 = call i32 %23(%struct.bnx2x.1* %25, %struct.TYPE_10__* %27, %union.event_ring_elem* %28, i64* %7)
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)*, i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)** %33, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = bitcast %struct.bnx2x* %35 to %struct.bnx2x.0*
  %37 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %37, i32 0, i32 0
  %39 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %40 = call i32 %34(%struct.bnx2x.0* %36, %struct.TYPE_9__* %38, %union.event_ring_elem* %39, i64* %7)
  store i32 %40, i32* %8, align 4
  br label %49

41:                                               ; preds = %3
  %42 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %43 = bitcast %union.event_ring_elem* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %62

49:                                               ; preds = %30, %19
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %60 = call i32 @DP(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %41, %61, %52
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
