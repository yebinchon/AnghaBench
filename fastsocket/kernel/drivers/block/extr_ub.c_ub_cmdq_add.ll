; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmdq_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_cmdq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { %struct.ub_scsi_cmd_queue }
%struct.ub_scsi_cmd_queue = type { i64, i64, %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd* }
%struct.ub_scsi_cmd = type { %struct.ub_scsi_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_scsi_cmd*)* @ub_cmdq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_cmdq_add(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1) #0 {
  %3 = alloca %struct.ub_dev*, align 8
  %4 = alloca %struct.ub_scsi_cmd*, align 8
  %5 = alloca %struct.ub_scsi_cmd_queue*, align 8
  store %struct.ub_dev* %0, %struct.ub_dev** %3, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %4, align 8
  %6 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %6, i32 0, i32 0
  store %struct.ub_scsi_cmd_queue* %7, %struct.ub_scsi_cmd_queue** %5, align 8
  %8 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %9 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %15 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %16 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %15, i32 0, i32 3
  store %struct.ub_scsi_cmd* %14, %struct.ub_scsi_cmd** %16, align 8
  %17 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %18 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %18, i32 0, i32 2
  store %struct.ub_scsi_cmd* %17, %struct.ub_scsi_cmd** %19, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %22 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %22, i32 0, i32 2
  %24 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %23, align 8
  %25 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %24, i32 0, i32 0
  store %struct.ub_scsi_cmd* %21, %struct.ub_scsi_cmd** %25, align 8
  %26 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %27 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %27, i32 0, i32 2
  store %struct.ub_scsi_cmd* %26, %struct.ub_scsi_cmd** %28, align 8
  br label %29

29:                                               ; preds = %20, %13
  %30 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %31 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %34 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %39 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ub_scsi_cmd_queue*, %struct.ub_scsi_cmd_queue** %5, align 8
  %42 = getelementptr inbounds %struct.ub_scsi_cmd_queue, %struct.ub_scsi_cmd_queue* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
