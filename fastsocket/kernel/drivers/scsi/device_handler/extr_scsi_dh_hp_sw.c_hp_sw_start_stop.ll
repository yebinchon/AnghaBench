; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp_sw_dh_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32, i32*, i32, %struct.hp_sw_dh_data*, i64, i32, i32, i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@START_STOP = common dso_local global i32 0, align 4
@HP_SW_TIMEOUT = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@start_stop_endio = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hp_sw_dh_data*)* @hp_sw_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_start_stop(%struct.hp_sw_dh_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hp_sw_dh_data*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.hp_sw_dh_data* %0, %struct.hp_sw_dh_data** %3, align 8
  %5 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %3, align 8
  %6 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WRITE, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.request* @blk_get_request(i32 %9, i32 %10, i32 %11)
  store %struct.request* %12, %struct.request** %4, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = icmp ne %struct.request* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %22 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @START_STOP, align 4
  %31 = call i32 @COMMAND_SIZE(i32 %30)
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @START_STOP, align 4
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @HP_SW_TIMEOUT, align 4
  %44 = load %struct.request*, %struct.request** %4, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %3, align 8
  %47 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.request*, %struct.request** %4, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.request*, %struct.request** %4, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %55 = call i32 @memset(i32 %53, i32 0, i32 %54)
  %56 = load %struct.request*, %struct.request** %4, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %3, align 8
  %59 = load %struct.request*, %struct.request** %4, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 3
  store %struct.hp_sw_dh_data* %58, %struct.hp_sw_dh_data** %60, align 8
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.request*, %struct.request** %4, align 8
  %65 = load i32, i32* @start_stop_endio, align 4
  %66 = call i32 @blk_execute_rq_nowait(i32 %63, i32* null, %struct.request* %64, i32 1, i32 %65)
  %67 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %17, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
