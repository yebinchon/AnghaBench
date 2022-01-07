; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_rw_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_rw_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i64* }
%struct.ub_scsi_cmd = type { i64, i64, i64, i32, %struct.ub_request*, %struct.ub_lun* }
%struct.ub_request = type { %struct.request* }
%struct.request = type { i64, i64, i32, i32 }
%struct.ub_lun = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@UB_SENSE_SIZE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MEDIUM_ERROR = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_scsi_cmd*)* @ub_rw_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_rw_cmd_done(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1) #0 {
  %3 = alloca %struct.ub_dev*, align 8
  %4 = alloca %struct.ub_scsi_cmd*, align 8
  %5 = alloca %struct.ub_lun*, align 8
  %6 = alloca %struct.ub_request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %3, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %4, align 8
  %9 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %9, i32 0, i32 5
  %11 = load %struct.ub_lun*, %struct.ub_lun** %10, align 8
  store %struct.ub_lun* %11, %struct.ub_lun** %5, align 8
  %12 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %12, i32 0, i32 4
  %14 = load %struct.ub_request*, %struct.ub_request** %13, align 8
  store %struct.ub_request* %14, %struct.ub_request** %6, align 8
  %15 = load %struct.ub_request*, %struct.ub_request** %6, align 8
  %16 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %15, i32 0, i32 0
  %17 = load %struct.request*, %struct.request** %16, align 8
  store %struct.request* %17, %struct.request** %7, align 8
  %18 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %2
  %23 = load %struct.request*, %struct.request** %7, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.request*, %struct.request** %7, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.request*, %struct.request** %7, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %39, %36
  store i32 0, i32* %8, align 4
  br label %60

48:                                               ; preds = %22
  %49 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %57, i32* %8, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %56
  br label %60

60:                                               ; preds = %59, %47
  br label %127

61:                                               ; preds = %2
  %62 = load %struct.request*, %struct.request** %7, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load %struct.request*, %struct.request** %7, align 8
  %69 = getelementptr inbounds %struct.request, %struct.request* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %72 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* @UB_SENSE_SIZE, align 4
  %75 = call i32 @memcpy(i32 %70, i64* %73, i32 %74)
  %76 = load i32, i32* @UB_SENSE_SIZE, align 4
  %77 = load %struct.request*, %struct.request** %7, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %80 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %67
  %86 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %86, i32* %8, align 4
  br label %90

87:                                               ; preds = %67
  %88 = load i32, i32* @DID_ERROR, align 4
  %89 = shl i32 %88, 16
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %85
  br label %126

91:                                               ; preds = %61
  %92 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %93 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %91
  %99 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MEDIUM_ERROR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %111 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @UNIT_ATTENTION, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109, %103, %98
  %116 = load %struct.ub_dev*, %struct.ub_dev** %3, align 8
  %117 = load %struct.ub_lun*, %struct.ub_lun** %5, align 8
  %118 = load %struct.ub_request*, %struct.ub_request** %6, align 8
  %119 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %120 = call i64 @ub_rw_cmd_retry(%struct.ub_dev* %116, %struct.ub_lun* %117, %struct.ub_request* %118, %struct.ub_scsi_cmd* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %142

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %109, %91
  %125 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %90
  br label %127

127:                                              ; preds = %126, %60
  %128 = load %struct.ub_request*, %struct.ub_request** %6, align 8
  %129 = getelementptr inbounds %struct.ub_request, %struct.ub_request* %128, i32 0, i32 0
  store %struct.request* null, %struct.request** %129, align 8
  %130 = load %struct.ub_lun*, %struct.ub_lun** %5, align 8
  %131 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %4, align 8
  %132 = call i32 @ub_put_cmd(%struct.ub_lun* %130, %struct.ub_scsi_cmd* %131)
  %133 = load %struct.request*, %struct.request** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ub_end_rq(%struct.request* %133, i32 %134)
  %136 = load %struct.ub_lun*, %struct.ub_lun** %5, align 8
  %137 = getelementptr inbounds %struct.ub_lun, %struct.ub_lun* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @blk_start_queue(i32 %140)
  br label %142

142:                                              ; preds = %127, %122
  ret void
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i64 @ub_rw_cmd_retry(%struct.ub_dev*, %struct.ub_lun*, %struct.ub_request*, %struct.ub_scsi_cmd*) #1

declare dso_local i32 @ub_put_cmd(%struct.ub_lun*, %struct.ub_scsi_cmd*) #1

declare dso_local i32 @ub_end_rq(%struct.request*, i32) #1

declare dso_local i32 @blk_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
