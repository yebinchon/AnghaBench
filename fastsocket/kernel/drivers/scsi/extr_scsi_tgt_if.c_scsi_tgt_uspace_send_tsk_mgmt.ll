; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_lun = type { i32 }
%struct.tgt_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"%d %x %llx %llx\0A\00", align 1
@TGT_KEVENT_TSK_MGMT_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tx buf is full, could not send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_tgt_uspace_send_tsk_mgmt(i32 %0, i8* %1, i32 %2, i8* %3, %struct.scsi_lun* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.scsi_lun*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tgt_event, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.scsi_lun* %4, %struct.scsi_lun** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @memset(%struct.tgt_event* %13, i32 0, i32 40)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.scsi_lun*, %struct.scsi_lun** %11, align 8
  %37 = call i32 @memcpy(i32 %35, %struct.scsi_lun* %36, i32 4)
  %38 = load i8*, i8** %12, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %13, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i64 %47, i64 %52)
  %54 = load i32, i32* @TGT_KEVENT_TSK_MGMT_REQ, align 4
  %55 = call i32 @tgt_uspace_send_event(i32 %54, %struct.tgt_event* %13)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %6
  %59 = call i32 @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %6
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.tgt_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.scsi_lun*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @tgt_uspace_send_event(i32, %struct.tgt_event*) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
