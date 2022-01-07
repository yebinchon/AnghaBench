; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%union.viosrp_iu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.scsi_lun = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %u\0A\00", align 1
@ABORT_TASK = common dso_local global i32 0, align 4
@ABORT_TASK_SET = common dso_local global i32 0, align 4
@CLEAR_TASK_SET = common dso_local global i32 0, align 4
@LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@CLEAR_ACA = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iu_entry*)* @process_tsk_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_tsk_mgmt(%struct.iu_entry* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %union.viosrp_iu*, align 8
  %4 = alloca i32, align 4
  store %struct.iu_entry* %0, %struct.iu_entry** %2, align 8
  %5 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %6 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %5)
  store %union.viosrp_iu* %6, %union.viosrp_iu** %3, align 8
  %7 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %8 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %9 = bitcast %union.viosrp_iu* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.iu_entry* %7, i32 %12)
  %14 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %15 = bitcast %union.viosrp_iu* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 132, label %19
    i32 131, label %21
    i32 129, label %23
    i32 128, label %25
    i32 130, label %27
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @ABORT_TASK, align 4
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @ABORT_TASK_SET, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @CLEAR_TASK_SET, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @LOGICAL_UNIT_RESET, align 4
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @CLEAR_ACA, align 4
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27, %25, %23, %21, %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %35 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %40 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %46 = bitcast %union.viosrp_iu* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %51 = bitcast %union.viosrp_iu* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = bitcast i32* %53 to %struct.scsi_lun*
  %55 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %56 = call i32 @scsi_tgt_tsk_mgmt_request(i64 %38, i64 %43, i32 %44, i32 %49, %struct.scsi_lun* %54, %struct.iu_entry* %55)
  br label %61

57:                                               ; preds = %30
  %58 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %59 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %60 = call i32 @send_rsp(%struct.iu_entry* %58, i32* null, i32 %59, i32 32)
  br label %61

61:                                               ; preds = %57, %33
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  ret i32 %65
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @dprintk(i8*, %struct.iu_entry*, i32) #1

declare dso_local i32 @scsi_tgt_tsk_mgmt_request(i64, i64, i32, i32, %struct.scsi_lun*, %struct.iu_entry*) #1

declare dso_local i32 @send_rsp(%struct.iu_entry*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
