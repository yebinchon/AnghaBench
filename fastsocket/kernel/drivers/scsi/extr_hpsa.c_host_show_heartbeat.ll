; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_host_show_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_host_show_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctlr_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @host_show_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_show_heartbeat(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %8, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %14 = call %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host* %13)
  store %struct.ctlr_info* %14, %struct.ctlr_info** %7, align 8
  %15 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %16 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @readl(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @snprintf(i8* %28, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  ret i32 %30
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
