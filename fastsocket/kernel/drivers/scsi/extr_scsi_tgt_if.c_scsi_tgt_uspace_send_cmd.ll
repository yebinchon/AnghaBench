; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_scsi_tgt_uspace_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_lun* }
%struct.scsi_lun = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.tgt_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%p %d %u %x %llx\0A\00", align 1
@TGT_KEVENT_CMD_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tx buf is full, could not send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_tgt_uspace_send_cmd(%struct.scsi_cmnd* %0, i8* %1, %struct.scsi_lun* %2, i8* %3) #0 {
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_lun*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.tgt_event, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.scsi_lun* %2, %struct.scsi_lun** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = call %struct.Scsi_Host* @scsi_tgt_cmd_to_host(%struct.scsi_cmnd* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %9, align 8
  %14 = call i32 @memset(%struct.tgt_event* %10, i32 0, i32 40)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  store i8* %21, i8** %24, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %25)
  %27 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 1
  %36 = load %struct.scsi_lun*, %struct.scsi_lun** %35, align 8
  %37 = call i32 @memcpy(i32 %33, %struct.scsi_lun* %36, i32 4)
  %38 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scsi_lun*, %struct.scsi_lun** %7, align 8
  %43 = call i32 @memcpy(i32 %41, %struct.scsi_lun* %42, i32 4)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %10, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %54, i32 %57, i32 %61, i32 %64, i64 %69)
  %71 = load i32, i32* @TGT_KEVENT_CMD_REQ, align 4
  %72 = call i32 @tgt_uspace_send_event(i32 %71, %struct.tgt_event* %10)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %4
  %76 = call i32 @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %4
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local %struct.Scsi_Host* @scsi_tgt_cmd_to_host(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(%struct.tgt_event*, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, %struct.scsi_lun*, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.scsi_cmnd*, i32, i32, i32, i64) #1

declare dso_local i32 @tgt_uspace_send_event(i32, %struct.tgt_event*) #1

declare dso_local i32 @eprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
