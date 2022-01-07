; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmdq_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmdq_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_scsi_cmd = type { %struct.ub_scsi_cmd* }
%struct.ub_dev = type { %struct.ub_scsi_cmd_queue }
%struct.ub_scsi_cmd_queue = type { i64, %struct.ub_scsi_cmd*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_scsi_cmd* (%struct.ub_dev*)* @ub_cmdq_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_scsi_cmd* @ub_cmdq_pop(%struct.ub_dev* %0) #0 {
  %2 = alloca %struct.ub_scsi_cmd*, align 8
  %3 = alloca %struct.ub_dev*, align 8
  %4 = alloca %struct.ub_scsi_cmd_queue*, align 8
  %5 = alloca %struct.ub_scsi_cmd*, align 8
  store %struct.ub_dev* %0, %struct.ub_dev** %3, align 8
  %6 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %6, i32 0, i32 0
  store %struct.ub_scsi_cmd_queue* %7, %struct.ub_scsi_cmd_queue** %4, align 8
  %8 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %4, align 8
  %9 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.ub_scsi_cmd* null, %struct.ub_scsi_cmd** %2, align 8
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %23, i32 0, i32 1
  %25 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %24, align 8
  store %struct.ub_scsi_cmd* %25, %struct.ub_scsi_cmd** %5, align 8
  %26 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %26, i32 0, i32 0
  %28 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %27, align 8
  %29 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %29, i32 0, i32 1
  store %struct.ub_scsi_cmd* %28, %struct.ub_scsi_cmd** %30, align 8
  %31 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %31, i32 0, i32 0
  store %struct.ub_scsi_cmd* null, %struct.ub_scsi_cmd** %32, align 8
  %33 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  store %struct.ub_scsi_cmd* %33, %struct.ub_scsi_cmd** %2, align 8
  br label %34

34:                                               ; preds = %22, %12
  %35 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %2, align 8
  ret %struct.ub_scsi_cmd* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
