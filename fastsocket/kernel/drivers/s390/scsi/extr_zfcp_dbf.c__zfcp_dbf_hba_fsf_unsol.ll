; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_hba_fsf_unsol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_hba_fsf_unsol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.TYPE_4__*, %struct.zfcp_dbf_hba_record }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_dbf_hba_record = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fsf_status_read_buffer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@ZFCP_DBF_UNSOL_PAYLOAD_SENSE_DATA_AVAIL = common dso_local global i32 0, align 4
@ZFCP_DBF_UNSOL_PAYLOAD_BIT_ERROR_THRESHOLD = common dso_local global i32 0, align 4
@ZFCP_DBF_UNSOL_PAYLOAD_FEATURE_UPDATE_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zfcp_dbf_hba_fsf_unsol(i8* %0, i32 %1, %struct.zfcp_dbf* %2, %struct.fsf_status_read_buffer* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_dbf*, align 8
  %8 = alloca %struct.fsf_status_read_buffer*, align 8
  %9 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zfcp_dbf* %2, %struct.zfcp_dbf** %7, align 8
  store %struct.fsf_status_read_buffer* %3, %struct.fsf_status_read_buffer** %8, align 8
  %11 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %12 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %11, i32 0, i32 3
  store %struct.zfcp_dbf_hba_record* %12, %struct.zfcp_dbf_hba_record** %9, align 8
  %13 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %14 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %18 = call i32 @memset(%struct.zfcp_dbf_hba_record* %17, i32 0, i32 32)
  %19 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %20 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %23 = call i32 @strncpy(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %25 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %29 = call i32 @strncpy(i32 %26, i8* %27, i32 %28)
  %30 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @atomic_read(i32* %33)
  %35 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %36 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  store i32 %34, i32* %38, align 4
  %39 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %40 = icmp ne %struct.fsf_status_read_buffer* %39, null
  br i1 %40, label %41, label %107

41:                                               ; preds = %4
  %42 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %43 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %46 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %50 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %57 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %61 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %60, i32 0, i32 3
  %62 = call i32 @memcpy(i32* %59, i32* %61, i32 4)
  %63 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %94 [
    i32 130, label %66
    i32 133, label %72
    i32 131, label %78
    i32 132, label %88
  ]

66:                                               ; preds = %41
  %67 = load i32, i32* @ZFCP_DBF_UNSOL_PAYLOAD_SENSE_DATA_AVAIL, align 4
  %68 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  br label %94

72:                                               ; preds = %41
  %73 = load i32, i32* @ZFCP_DBF_UNSOL_PAYLOAD_BIT_ERROR_THRESHOLD, align 4
  %74 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %75 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  br label %94

78:                                               ; preds = %41
  %79 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %80 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %87 [
    i32 128, label %82
    i32 129, label %82
  ]

82:                                               ; preds = %78, %78
  %83 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %84 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 4, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %78
  br label %94

88:                                               ; preds = %41
  %89 = load i32, i32* @ZFCP_DBF_UNSOL_PAYLOAD_FEATURE_UPDATE_ALERT, align 4
  %90 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %91 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %41, %88, %87, %72, %66
  %95 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %96 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %8, align 8
  %100 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %99, i32 0, i32 1
  %101 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %102 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i32* %98, i32* %100, i32 %105)
  br label %107

107:                                              ; preds = %94, %4
  %108 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %109 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %9, align 8
  %113 = call i32 @debug_event(i32 %110, i32 %111, %struct.zfcp_dbf_hba_record* %112, i32 32)
  %114 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %7, align 8
  %115 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %114, i32 0, i32 0
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
