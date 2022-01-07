; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_stpg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_stpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alua_dh_data = type { i32*, i32, i32*, i64, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.request = type { i32*, i32*, i32, %struct.alua_dh_data*, i64, i32 }

@TPGS_STATE_OPTIMIZED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@MAINTENANCE_OUT = common dso_local global i32 0, align 4
@MO_SET_TARGET_PGS = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@stpg_endio = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alua_dh_data*)* @submit_stpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_stpg(%struct.alua_dh_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alua_dh_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.alua_dh_data* %0, %struct.alua_dh_data** %3, align 8
  store i32 8, i32* %5, align 4
  %7 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %8 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %7, i32 0, i32 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %6, align 8
  %10 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %11 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @memset(i32* %12, i32 0, i32 %13)
  %15 = load i32, i32* @TPGS_STATE_OPTIMIZED, align 4
  %16 = and i32 %15, 15
  %17 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %18 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 %16, i32* %20, align 4
  %21 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %22 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %27 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 %25, i32* %29, align 4
  %30 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %31 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 255
  %34 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %35 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  store i32 %33, i32* %37, align 4
  %38 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %39 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %40 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @WRITE, align 4
  %44 = call %struct.request* @get_alua_req(%struct.scsi_device* %38, i32* %41, i32 %42, i32 %43)
  store %struct.request* %44, %struct.request** %4, align 8
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = icmp ne %struct.request* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %48, i32* %2, align 4
  br label %115

49:                                               ; preds = %1
  %50 = load i32, i32* @MAINTENANCE_OUT, align 4
  %51 = load %struct.request*, %struct.request** %4, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @MO_SET_TARGET_PGS, align 4
  %56 = load %struct.request*, %struct.request** %4, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 24
  %62 = and i32 %61, 255
  %63 = load %struct.request*, %struct.request** %4, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = ashr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = load %struct.request*, %struct.request** %4, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = load %struct.request*, %struct.request** %4, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 255
  %83 = load %struct.request*, %struct.request** %4, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @MAINTENANCE_OUT, align 4
  %88 = call i32 @COMMAND_SIZE(i32 %87)
  %89 = load %struct.request*, %struct.request** %4, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %92 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.request*, %struct.request** %4, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load %struct.request*, %struct.request** %4, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %100 = call i32 @memset(i32* %98, i32 0, i32 %99)
  %101 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %102 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.request*, %struct.request** %4, align 8
  %104 = getelementptr inbounds %struct.request, %struct.request* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %106 = load %struct.request*, %struct.request** %4, align 8
  %107 = getelementptr inbounds %struct.request, %struct.request* %106, i32 0, i32 3
  store %struct.alua_dh_data* %105, %struct.alua_dh_data** %107, align 8
  %108 = load %struct.request*, %struct.request** %4, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.request*, %struct.request** %4, align 8
  %112 = load i32, i32* @stpg_endio, align 4
  %113 = call i32 @blk_execute_rq_nowait(i32 %110, i32* null, %struct.request* %111, i32 1, i32 %112)
  %114 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %49, %47
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.request* @get_alua_req(%struct.scsi_device*, i32*, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
