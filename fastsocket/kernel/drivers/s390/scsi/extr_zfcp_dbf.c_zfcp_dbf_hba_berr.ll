; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_berr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_berr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba_record }
%struct.zfcp_dbf_hba_record = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_fsf_req = type { %struct.fsf_status_read_buffer* }
%struct.fsf_status_read_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fsf_bit_error_payload }
%struct.fsf_bit_error_payload = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"berr\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_berr(%struct.zfcp_dbf* %0, %struct.zfcp_fsf_req* %1) #0 {
  %3 = alloca %struct.zfcp_dbf*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %6 = alloca %struct.fsf_status_read_buffer*, align 8
  %7 = alloca %struct.fsf_bit_error_payload*, align 8
  %8 = alloca i64, align 8
  store %struct.zfcp_dbf* %0, %struct.zfcp_dbf** %3, align 8
  store %struct.zfcp_fsf_req* %1, %struct.zfcp_fsf_req** %4, align 8
  %9 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %9, i32 0, i32 2
  store %struct.zfcp_dbf_hba_record* %10, %struct.zfcp_dbf_hba_record** %5, align 8
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 0
  %13 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %12, align 8
  store %struct.fsf_status_read_buffer* %13, %struct.fsf_status_read_buffer** %6, align 8
  %14 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.fsf_bit_error_payload* %16, %struct.fsf_bit_error_payload** %7, align 8
  %17 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %22 = call i32 @memset(%struct.zfcp_dbf_hba_record* %21, i32 0, i32 8)
  %23 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %27 = call i32 @strncpy(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %29 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %7, align 8
  %32 = call i32 @memcpy(i32* %30, %struct.fsf_bit_error_payload* %31, i32 4)
  %33 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %34 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %37 = call i32 @debug_event(i32 %35, i32 0, %struct.zfcp_dbf_hba_record* %36, i32 8)
  %38 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %39 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fsf_bit_error_payload*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
