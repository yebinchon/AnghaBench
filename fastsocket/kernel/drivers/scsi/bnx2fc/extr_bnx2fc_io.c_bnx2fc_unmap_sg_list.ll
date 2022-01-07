; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_unmap_sg_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_unmap_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { %struct.TYPE_2__*, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_cmd*)* @bnx2fc_unmap_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_unmap_sg_list(%struct.bnx2fc_cmd* %0) #0 {
  %2 = alloca %struct.bnx2fc_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %2, align 8
  %4 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %4, i32 0, i32 1
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %6, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = icmp ne %struct.scsi_cmnd* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %17)
  %19 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %16, %13, %1
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
