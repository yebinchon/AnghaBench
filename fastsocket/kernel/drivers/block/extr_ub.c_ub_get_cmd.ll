; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_get_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_scsi_cmd = type { i32 }
%struct.ub_lun = type { i32*, %struct.ub_scsi_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_scsi_cmd* (%struct.ub_lun*)* @ub_get_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_scsi_cmd* @ub_get_cmd(%struct.ub_lun* %0) #0 {
  %2 = alloca %struct.ub_scsi_cmd*, align 8
  %3 = alloca %struct.ub_lun*, align 8
  %4 = alloca %struct.ub_scsi_cmd*, align 8
  store %struct.ub_lun* %0, %struct.ub_lun** %3, align 8
  %5 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %6 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ub_scsi_cmd* null, %struct.ub_scsi_cmd** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %14 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %13, i32 0, i32 1
  %15 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %14, align 8
  %16 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %15, i64 0
  store %struct.ub_scsi_cmd* %16, %struct.ub_scsi_cmd** %4, align 8
  %17 = load %struct.ub_lun*, %struct.ub_lun** %3, align 8
  %18 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  store %struct.ub_scsi_cmd* %21, %struct.ub_scsi_cmd** %2, align 8
  br label %22

22:                                               ; preds = %12, %11
  %23 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %2, align 8
  ret %struct.ub_scsi_cmd* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
