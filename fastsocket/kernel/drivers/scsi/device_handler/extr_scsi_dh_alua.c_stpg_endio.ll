; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_stpg_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_stpg_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.alua_dh_data*, i32 }
%struct.alua_dh_data = type { i64, i32*, i32 (i32*, i32)*, i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i64 0, align 8
@COMMAND_COMPLETE = common dso_local global i64 0, align 8
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: stpg sense code: %02x/%02x/%02x\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@TPGS_STATE_OPTIMIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: port group %02x switched to state %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @stpg_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stpg_endio(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alua_dh_data*, align 8
  %6 = alloca %struct.scsi_sense_hdr, align 4
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 1
  %10 = load %struct.alua_dh_data*, %struct.alua_dh_data** %9, align 8
  store %struct.alua_dh_data* %10, %struct.alua_dh_data** %5, align 8
  %11 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @host_byte(i32 %17)
  %19 = load i64, i64* @DID_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @msg_byte(i32 %24)
  %26 = load i64, i64* @COMMAND_COMPLETE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %14, %2
  %29 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %29, i32* %7, align 4
  br label %91

30:                                               ; preds = %21
  %31 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %32 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %37 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %40 = call i32 @scsi_normalize_sense(i32 %38, i32 %39, %struct.scsi_sense_hdr* %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %44, i32* %7, align 4
  br label %91

45:                                               ; preds = %35
  %46 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %47 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @alua_check_sense(i32 %48, %struct.scsi_sense_hdr* %6)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %54, i32* %7, align 4
  br label %91

55:                                               ; preds = %45
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %58 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ALUA_DH_NAME, align 4
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @sdev_printk(i32 %56, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %64, i32 %66)
  %68 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %55, %30
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SCSI_DH_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i32, i32* @TPGS_STATE_OPTIMIZED, align 4
  %75 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %76 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %79 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ALUA_DH_NAME, align 4
  %82 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %83 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %86 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @print_alua_state(i32 %87)
  %89 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @sdev_printk(i32 %77, i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %73, %69
  br label %91

91:                                               ; preds = %90, %53, %43, %28
  %92 = load %struct.request*, %struct.request** %3, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 1
  store %struct.alua_dh_data* null, %struct.alua_dh_data** %93, align 8
  %94 = load %struct.request*, %struct.request** %3, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.request*, %struct.request** %3, align 8
  %98 = call i32 @__blk_put_request(i32 %96, %struct.request* %97)
  %99 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %100 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %99, i32 0, i32 2
  %101 = load i32 (i32*, i32)*, i32 (i32*, i32)** %100, align 8
  %102 = icmp ne i32 (i32*, i32)* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %105 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %104, i32 0, i32 2
  %106 = load i32 (i32*, i32)*, i32 (i32*, i32)** %105, align 8
  %107 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %108 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 %106(i32* %109, i32 %110)
  %112 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %113 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %115 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %114, i32 0, i32 2
  store i32 (i32*, i32)* null, i32 (i32*, i32)** %115, align 8
  br label %116

116:                                              ; preds = %103, %91
  ret void
}

declare dso_local i64 @host_byte(i32) #1

declare dso_local i64 @msg_byte(i32) #1

declare dso_local i32 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @alua_check_sense(i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @print_alua_state(i32) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
