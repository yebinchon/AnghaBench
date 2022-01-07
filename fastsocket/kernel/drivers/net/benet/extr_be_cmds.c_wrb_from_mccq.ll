; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_wrb_from_mccq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_wrb_from_mccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mcc_wrb = type { i32 }
%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_mcc_wrb* (%struct.be_adapter*)* @wrb_from_mccq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_mcc_wrb*, align 8
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.be_queue_info* %8, %struct.be_queue_info** %4, align 8
  %9 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %10 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.be_mcc_wrb* null, %struct.be_mcc_wrb** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %16 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %15, i32 0, i32 1
  %17 = call i64 @atomic_read(i32* %16)
  %18 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %19 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store %struct.be_mcc_wrb* null, %struct.be_mcc_wrb** %2, align 8
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %25 = call %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info* %24)
  store %struct.be_mcc_wrb* %25, %struct.be_mcc_wrb** %5, align 8
  %26 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %27 = call i32 @queue_head_inc(%struct.be_queue_info* %26)
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %29 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %32 = call i32 @memset(%struct.be_mcc_wrb* %31, i32 0, i32 4)
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  store %struct.be_mcc_wrb* %33, %struct.be_mcc_wrb** %2, align 8
  br label %34

34:                                               ; preds = %23, %22, %13
  %35 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %2, align 8
  ret %struct.be_mcc_wrb* %35
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
