; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_task_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_task_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@IPR_FLAGS_LO_UNTAGGED_TASK = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_SIMPLE_TASK = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_HEAD_OF_Q_TASK = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_ORDERED_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ipr_get_task_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_get_task_attributes(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load i32, i32* @IPR_FLAGS_LO_UNTAGGED_TASK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = call i64 @scsi_populate_tag_msg(%struct.scsi_cmnd* %6, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 130, label %15
    i32 129, label %17
  ]

13:                                               ; preds = %10
  %14 = load i32, i32* @IPR_FLAGS_LO_SIMPLE_TASK, align 4
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @IPR_FLAGS_LO_HEAD_OF_Q_TASK, align 4
  store i32 %16, i32* %4, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @IPR_FLAGS_LO_ORDERED_TASK, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %10, %17, %15, %13
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @scsi_populate_tag_msg(%struct.scsi_cmnd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
