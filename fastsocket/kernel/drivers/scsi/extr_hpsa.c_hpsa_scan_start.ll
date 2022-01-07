; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scan_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.ctlr_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @hpsa_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scan_start(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host* %5)
  store %struct.ctlr_info* %6, %struct.ctlr_info** %3, align 8
  br label %7

7:                                                ; preds = %1, %17
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %29

17:                                               ; preds = %7
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %26 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wait_event(i32 %24, i32 %27)
  br label %7

29:                                               ; preds = %16
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %33 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %32, i32 0, i32 1
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hpsa_update_scsi_devices(%struct.ctlr_info* %36, i32 %41)
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %44 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %43, i32 0, i32 1
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %48 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 2
  %51 = call i32 @wake_up_all(i32* %50)
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 1
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  ret void
}

declare dso_local %struct.ctlr_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @hpsa_update_scsi_devices(%struct.ctlr_info*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
