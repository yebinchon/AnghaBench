; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_start_stop_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_start_stop_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i32, %struct.hp_sw_dh_data*, i32 }
%struct.hp_sw_dh_data = type { i32*, i32 (i32*, i32)*, i64, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i64 0, align 8
@COMMAND_COMPLETE = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: sending start_stop_unit failed with %x\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @start_stop_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_stop_endio(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hp_sw_dh_data*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 2
  %9 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %8, align 8
  store %struct.hp_sw_dh_data* %9, %struct.hp_sw_dh_data** %5, align 8
  %10 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @host_byte(i32 %16)
  %18 = load i64, i64* @DID_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.request*, %struct.request** %3, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @msg_byte(i32 %23)
  %25 = load i64, i64* @COMMAND_COMPLETE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20, %13, %2
  %28 = load i32, i32* @KERN_WARNING, align 4
  %29 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %30 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HP_SW_NAME, align 4
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sdev_printk(i32 %28, i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %37, i32* %6, align 4
  br label %74

38:                                               ; preds = %20
  %39 = load %struct.request*, %struct.request** %3, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %45 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %48 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @start_done(i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SCSI_DH_RETRY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %43
  %55 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %57 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.request*, %struct.request** %3, align 8
  %63 = call i32 @blk_put_request(%struct.request* %62)
  %64 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %65 = call i32 @hp_sw_start_stop(%struct.hp_sw_dh_data* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SCSI_DH_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %100

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %43
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73, %27
  %75 = load %struct.request*, %struct.request** %3, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 2
  store %struct.hp_sw_dh_data* null, %struct.hp_sw_dh_data** %76, align 8
  %77 = load %struct.request*, %struct.request** %3, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.request*, %struct.request** %3, align 8
  %81 = call i32 @__blk_put_request(i32 %79, %struct.request* %80)
  %82 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %83 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %82, i32 0, i32 1
  %84 = load i32 (i32*, i32)*, i32 (i32*, i32)** %83, align 8
  %85 = icmp ne i32 (i32*, i32)* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %74
  %87 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %88 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %87, i32 0, i32 1
  %89 = load i32 (i32*, i32)*, i32 (i32*, i32)** %88, align 8
  %90 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %91 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 %89(i32* %92, i32 %93)
  %95 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %96 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %5, align 8
  %98 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %97, i32 0, i32 1
  store i32 (i32*, i32)* null, i32 (i32*, i32)** %98, align 8
  br label %99

99:                                               ; preds = %86, %74
  br label %100

100:                                              ; preds = %99, %69
  ret void
}

declare dso_local i64 @host_byte(i32) #1

declare dso_local i64 @msg_byte(i32) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @start_done(i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @hp_sw_start_stop(%struct.hp_sw_dh_data*) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
