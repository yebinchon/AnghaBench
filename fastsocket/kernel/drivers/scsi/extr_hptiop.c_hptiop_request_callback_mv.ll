; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_hptiop_request_callback_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_hptiop_request_callback_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hpt_iop_request_scsi_command* }
%struct.hpt_iop_request_scsi_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"hptiop_request_callback_mv: tag=%llx\0A\00", align 1
@MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT = common dso_local global i32 0, align 4
@MVIOP_MU_QUEUE_REQUEST_RESULT_BIT = common dso_local global i32 0, align 4
@IOP_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hptiop_hba*, i32)* @hptiop_request_callback_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_request_callback_mv(%struct.hptiop_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hptiop_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpt_iop_request_scsi_command*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 5
  %9 = and i32 %8, 7
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MVIOP_MU_QUEUE_REQUEST_RETURN_CONTEXT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %49 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %21 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %24 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %30, align 8
  store %struct.hpt_iop_request_scsi_command* %31, %struct.hpt_iop_request_scsi_command** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MVIOP_MU_QUEUE_REQUEST_RESULT_BIT, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @likely(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load i32, i32* @IOP_RESULT_SUCCESS, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %6, align 8
  %41 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %22
  %44 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 8
  %47 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %6, align 8
  %48 = call i32 @hptiop_finish_scsi_req(%struct.hptiop_hba* %44, i32 %46, %struct.hpt_iop_request_scsi_command* %47)
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %43, %19
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hptiop_finish_scsi_req(%struct.hptiop_hba*, i32, %struct.hpt_iop_request_scsi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
