; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_nl_set_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_nl_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_path = type { i32 }
%struct.bnx2i_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8*, i32)* }

@ISCSI_UEVENT_PATH_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_path*)* @bnx2i_nl_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_nl_set_path(%struct.Scsi_Host* %0, %struct.iscsi_path* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.iscsi_path*, align 8
  %5 = alloca %struct.bnx2i_hba*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.iscsi_path* %1, %struct.iscsi_path** %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = call %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host* %8)
  store %struct.bnx2i_hba* %9, %struct.bnx2i_hba** %5, align 8
  %10 = load %struct.iscsi_path*, %struct.iscsi_path** %4, align 8
  %11 = bitcast %struct.iscsi_path* %10 to i8*
  store i8* %11, i8** %6, align 8
  store i32 4, i32* %7, align 4
  %12 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_2__*, i32, i8*, i32)*, i32 (%struct.TYPE_2__*, i32, i8*, i32)** %15, align 8
  %17 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @ISCSI_UEVENT_PATH_UPDATE, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %16(%struct.TYPE_2__* %19, i32 %20, i8* %21, i32 %22)
  ret i32 0
}

declare dso_local %struct.bnx2i_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
