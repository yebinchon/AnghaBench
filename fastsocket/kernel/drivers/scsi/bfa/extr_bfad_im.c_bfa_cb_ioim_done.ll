; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_ioim_s = type { i32 }
%struct.scsi_cmnd = type { i32, i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i64, %struct.bfad_itnim_data_s*, i32* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.bfad_s = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@bfa_lun_queue_depth = common dso_local global i64 0, align 8
@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_ioim_done(i8* %0, %struct.bfad_ioim_s* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfad_ioim_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_cmnd*, align 8
  %16 = alloca %struct.bfad_s*, align 8
  %17 = alloca %struct.bfad_itnim_data_s*, align 8
  %18 = alloca %struct.bfad_itnim_s*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %9, align 8
  %21 = bitcast %struct.bfad_ioim_s* %20 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %15, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.bfad_s*
  store %struct.bfad_s* %23, %struct.bfad_s** %16, align 8
  %24 = load i32, i32* @DID_OK, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %88 [
    i32 130, label %26
    i32 131, label %87
    i32 128, label %87
    i32 129, label %87
  ]

26:                                               ; preds = %7
  %27 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bfa_trc(%struct.bfad_s* %27, i32 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %31 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %30, i32 0)
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @bfa_trc(%struct.bfad_s* %35, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i32 %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %26
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @bfa_trc(%struct.bfad_s* %54, i32 %55)
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SAM_STAT_GOOD, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %68 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %67)
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %77 = call i32 @bfa_trc(%struct.bfad_s* %76, i32 0)
  %78 = load i32, i32* @DID_ERROR, align 4
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %75, %66, %62, %53
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @ScsiResult(i32 %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %95

87:                                               ; preds = %7, %7, %7
  br label %88

88:                                               ; preds = %7, %87
  %89 = load i32, i32* @DID_ERROR, align 4
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i8* @ScsiResult(i32 %90, i32 0)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %80
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %104 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load %struct.bfad_s*, %struct.bfad_s** %16, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bfa_trc(%struct.bfad_s* %108, i32 %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %116, align 8
  store %struct.bfad_itnim_data_s* %117, %struct.bfad_itnim_data_s** %17, align 8
  %118 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %17, align 8
  %119 = icmp ne %struct.bfad_itnim_data_s* %118, null
  br i1 %119, label %120, label %163

120:                                              ; preds = %105
  %121 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %17, align 8
  %122 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %121, i32 0, i32 0
  %123 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %122, align 8
  store %struct.bfad_itnim_s* %123, %struct.bfad_itnim_s** %18, align 8
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %120
  %129 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %130 = icmp ne %struct.bfad_itnim_s* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load i64, i64* @bfa_lun_queue_depth, align 8
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 3
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %132, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = call i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s* %140, %struct.TYPE_3__* %143)
  br label %162

145:                                              ; preds = %131, %128, %120
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %154 = icmp ne %struct.bfad_itnim_s* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %18, align 8
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 3
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = call i32 @bfad_handle_qfull(%struct.bfad_itnim_s* %156, %struct.TYPE_3__* %159)
  br label %161

161:                                              ; preds = %155, %152, %145
  br label %162

162:                                              ; preds = %161, %139
  br label %163

163:                                              ; preds = %162, %105
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 2
  %166 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %165, align 8
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %168 = call i32 %166(%struct.scsi_cmnd* %167)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i8* @ScsiResult(i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s*, %struct.TYPE_3__*) #1

declare dso_local i32 @bfad_handle_qfull(%struct.bfad_itnim_s*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
