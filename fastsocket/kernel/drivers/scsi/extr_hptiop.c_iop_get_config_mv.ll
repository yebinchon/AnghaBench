; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_get_config_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_get_config_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.hpt_iop_request_get_config* }
%struct.hpt_iop_request_get_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@IOP_REQUEST_TYPE_GET_CONFIG = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Get config send cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, %struct.hpt_iop_request_get_config*)* @iop_get_config_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_get_config_mv(%struct.hptiop_hba* %0, %struct.hpt_iop_request_get_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config*, align 8
  %6 = alloca %struct.hpt_iop_request_get_config*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store %struct.hpt_iop_request_get_config* %1, %struct.hpt_iop_request_get_config** %5, align 8
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %10, align 8
  store %struct.hpt_iop_request_get_config* %11, %struct.hpt_iop_request_get_config** %6, align 8
  %12 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @IOP_REQUEST_TYPE_GET_CONFIG, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %18, i8** %21, align 8
  %22 = call i8* @cpu_to_le32(i32 48)
  %23 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %24 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %29 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @IOP_REQUEST_TYPE_GET_CONFIG, align 4
  %32 = shl i32 %31, 5
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %35 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %41 = call i64 @iop_send_sync_request_mv(%struct.hptiop_hba* %40, i32 0, i32 20000)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %47 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %48 = call i32 @memcpy(%struct.hpt_iop_request_get_config* %46, %struct.hpt_iop_request_get_config* %47, i32 48)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @iop_send_sync_request_mv(%struct.hptiop_hba*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memcpy(%struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
