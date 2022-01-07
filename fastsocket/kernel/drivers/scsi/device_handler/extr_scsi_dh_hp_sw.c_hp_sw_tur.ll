; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_tur.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_tur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.hp_sw_dh_data = type { i32, i32 }
%struct.request = type { i32, i64, i32, i32, i32, i32, i32*, i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@HP_SW_TIMEOUT = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: sending tur failed with %x\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@HP_SW_PATH_ACTIVE = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_DH_IMM_RETRY = common dso_local global i32 0, align 4
@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@HP_SW_PATH_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.hp_sw_dh_data*)* @hp_sw_tur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_tur(%struct.scsi_device* %0, %struct.hp_sw_dh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.hp_sw_dh_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.hp_sw_dh_data* %1, %struct.hp_sw_dh_data** %5, align 8
  br label %8

8:                                                ; preds = %95, %2
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WRITE, align 4
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call %struct.request* @blk_get_request(i32 %11, i32 %12, i32 %13)
  store %struct.request* %14, %struct.request** %6, align 8
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %111

19:                                               ; preds = %8
  %20 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %24 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @TEST_UNIT_READY, align 4
  %33 = call i32 @COMMAND_SIZE(i32 %32)
  %34 = load %struct.request*, %struct.request** %6, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @TEST_UNIT_READY, align 4
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @HP_SW_TIMEOUT, align 4
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %45 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.request*, %struct.request** %6, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %53 = call i32 @memset(i32 %51, i32 0, i32 %52)
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.request*, %struct.request** %6, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.request*, %struct.request** %6, align 8
  %60 = call i32 @blk_execute_rq(i32 %58, i32* null, %struct.request* %59, i32 1)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %19
  %66 = load %struct.request*, %struct.request** %6, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %72 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %73 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @tur_done(%struct.scsi_device* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %85

76:                                               ; preds = %65
  %77 = load i32, i32* @KERN_WARNING, align 4
  %78 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %79 = load i32, i32* @HP_SW_NAME, align 4
  %80 = load %struct.request*, %struct.request** %6, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sdev_printk(i32 %77, %struct.scsi_device* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %76, %70
  br label %91

86:                                               ; preds = %19
  %87 = load i32, i32* @HP_SW_PATH_ACTIVE, align 4
  %88 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %89 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SCSI_DH_IMM_RETRY, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.request*, %struct.request** %6, align 8
  %97 = call i32 @blk_put_request(%struct.request* %96)
  br label %8

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @HP_SW_PATH_PASSIVE, align 4
  %104 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %105 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %102, %98
  %108 = load %struct.request*, %struct.request** %6, align 8
  %109 = call i32 @blk_put_request(%struct.request* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %17
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @tur_done(%struct.scsi_device*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
