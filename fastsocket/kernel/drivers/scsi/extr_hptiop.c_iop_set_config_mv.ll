; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_set_config_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_set_config_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.hpt_iop_request_set_config* }
%struct.hpt_iop_request_set_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@IOP_REQUEST_TYPE_SET_CONFIG = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Set config send cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, %struct.hpt_iop_request_set_config*)* @iop_set_config_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_set_config_mv(%struct.hptiop_hba* %0, %struct.hpt_iop_request_set_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_set_config*, align 8
  %6 = alloca %struct.hpt_iop_request_set_config*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store %struct.hpt_iop_request_set_config* %1, %struct.hpt_iop_request_set_config** %5, align 8
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %10, align 8
  store %struct.hpt_iop_request_set_config* %11, %struct.hpt_iop_request_set_config** %6, align 8
  %12 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %13 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %14 = call i32 @memcpy(%struct.hpt_iop_request_set_config* %12, %struct.hpt_iop_request_set_config* %13, i32 48)
  %15 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %18 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %23 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le32(i32 48)
  %26 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %32 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %35 = shl i32 %34, 5
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %41 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %44 = call i64 @iop_send_sync_request_mv(%struct.hptiop_hba* %43, i32 0, i32 20000)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memcpy(%struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @iop_send_sync_request_mv(%struct.hptiop_hba*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
