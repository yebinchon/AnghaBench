; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_message.c_nsp_message_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_nsp_message.c_nsp_message_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@NSP_DEBUG_MSGOUTOCCUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"msgout loop\00", align 1
@BUSPHASE_MESSAGE_OUT = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"msgout: xfer short\00", align 1
@BUSMON_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp_message_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_message_out(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %4, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @NSP_DEBUG_MSGOUTOCCUR, align 4
  %18 = call i32 @nsp_dbg(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %39, %1
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = load i32, i32* @BUSPHASE_MESSAGE_OUT, align 4
  %22 = call i64 @nsp_xfer(%struct.scsi_cmnd* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = call i32 @nsp_msg(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = load i32, i32* @BUSPHASE_MESSAGE_OUT, align 4
  %30 = load i32, i32* @BUSMON_REQ, align 4
  %31 = call i32 @nsp_expect_signal(%struct.scsi_cmnd* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = icmp sgt i32 %36, 0
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %19, label %41

41:                                               ; preds = %39
  ret void
}

declare dso_local i32 @nsp_dbg(i32, i8*) #1

declare dso_local i64 @nsp_xfer(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @nsp_msg(i32, i8*) #1

declare dso_local i32 @nsp_expect_signal(%struct.scsi_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
