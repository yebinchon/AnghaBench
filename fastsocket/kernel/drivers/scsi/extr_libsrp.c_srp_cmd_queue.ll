; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_cmd_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_cmd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.srp_cmd = type { i32, i64, i32, i32* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.scsi_lun = type { i32 }

@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@MSG_HEAD_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Task attribute %d not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%p %x %lx %d %d %d %llx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_cmd_queue(%struct.Scsi_Host* %0, %struct.srp_cmd* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_cmnd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store %struct.srp_cmd* %1, %struct.srp_cmd** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %18 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 128, label %20
    i32 129, label %22
    i32 130, label %24
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  store i32 %21, i32* %14, align 4
  br label %32

22:                                               ; preds = %5
  %23 = load i32, i32* @MSG_ORDERED_TAG, align 4
  store i32 %23, i32* %14, align 4
  br label %32

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_HEAD_TAG, align 4
  store i32 %25, i32* %14, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @eprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @MSG_ORDERED_TAG, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %26, %24, %22, %20
  %33 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %34 = call i32 @srp_cmd_direction(%struct.srp_cmd* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @vscsis_data_length(%struct.srp_cmd* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %40 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %43, i32 %46, i32 %47, i32 %48, i32 %49, i64 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.scsi_cmnd* @scsi_host_get_command(%struct.Scsi_Host* %54, i32 %55, i32 %56)
  store %struct.scsi_cmnd* %57, %struct.scsi_cmnd** %13, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %59 = icmp ne %struct.scsi_cmnd* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %32
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %106

63:                                               ; preds = %32
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %75 = call i32 @memcpy(i32 %70, i32* %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %92 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %91, i32 0, i32 2
  %93 = bitcast i32* %92 to %struct.scsi_lun*
  %94 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %95 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @scsi_tgt_queue_command(%struct.scsi_cmnd* %89, i64 %90, %struct.scsi_lun* %93, i64 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %63
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %103 = call i32 @scsi_host_put_command(%struct.Scsi_Host* %101, %struct.scsi_cmnd* %102)
  br label %104

104:                                              ; preds = %100, %63
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %60
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @eprintk(i8*, i32) #1

declare dso_local i32 @srp_cmd_direction(%struct.srp_cmd*) #1

declare dso_local i32 @vscsis_data_length(%struct.srp_cmd*, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_get_command(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @scsi_tgt_queue_command(%struct.scsi_cmnd*, i64, %struct.scsi_lun*, i64) #1

declare dso_local i32 @scsi_host_put_command(%struct.Scsi_Host*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
