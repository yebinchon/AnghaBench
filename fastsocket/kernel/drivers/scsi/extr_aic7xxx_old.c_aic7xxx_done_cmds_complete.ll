; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_done_cmds_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_done_cmds_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_done_cmds_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_done_cmds_complete(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %6 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %12 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.scsi_cmnd*
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %25, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 %26(%struct.scsi_cmnd* %27)
  br label %4

29:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
