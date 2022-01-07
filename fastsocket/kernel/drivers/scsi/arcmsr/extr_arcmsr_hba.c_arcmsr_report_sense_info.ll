; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_report_sense_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_report_sense_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { %struct.TYPE_2__, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { i32, i64 }
%struct.SENSE_DATA = type { i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SCSI_SENSE_CURRENT_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*)* @arcmsr_report_sense_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_report_sense_info(%struct.CommandControlBlock* %0) #0 {
  %2 = alloca %struct.CommandControlBlock*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.SENSE_DATA*, align 8
  %5 = alloca i32, align 4
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %2, align 8
  %6 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %6, i32 0, i32 1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.SENSE_DATA*
  store %struct.SENSE_DATA* %12, %struct.SENSE_DATA** %4, align 8
  %13 = load i32, i32* @DID_OK, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %18 = icmp ne %struct.SENSE_DATA* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 8, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i64 [ 8, %23 ], [ %26, %24 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %31 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %32 = call i32 @memset(%struct.SENSE_DATA* %30, i32 0, i32 %31)
  %33 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %34 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %35 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @memcpy(%struct.SENSE_DATA* %33, i32 %37, i32 %38)
  %40 = load i32, i32* @SCSI_SENSE_CURRENT_ERRORS, align 4
  %41 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %42 = getelementptr inbounds %struct.SENSE_DATA, %struct.SENSE_DATA* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.SENSE_DATA*, %struct.SENSE_DATA** %4, align 8
  %44 = getelementptr inbounds %struct.SENSE_DATA, %struct.SENSE_DATA* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @memset(%struct.SENSE_DATA*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.SENSE_DATA*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
