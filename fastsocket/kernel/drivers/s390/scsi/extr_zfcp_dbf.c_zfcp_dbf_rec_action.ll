; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_rec_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_rec_record }
%struct.zfcp_dbf_rec_record = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@ZFCP_REC_DBF_ID_ACTION = common dso_local global i32 0, align 4
@ZFCP_DBF_ID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_rec_action(i8* %0, %struct.zfcp_erp_action* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zfcp_erp_action*, align 8
  %5 = alloca %struct.zfcp_dbf*, align 8
  %6 = alloca %struct.zfcp_dbf_rec_record*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.zfcp_erp_action* %1, %struct.zfcp_erp_action** %4, align 8
  %8 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  store %struct.zfcp_dbf* %12, %struct.zfcp_dbf** %5, align 8
  %13 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %13, i32 0, i32 2
  store %struct.zfcp_dbf_rec_record* %14, %struct.zfcp_dbf_rec_record** %6, align 8
  %15 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %20 = call i32 @memset(%struct.zfcp_dbf_rec_record* %19, i32 0, i32 32)
  %21 = load i32, i32* @ZFCP_REC_DBF_ID_ACTION, align 4
  %22 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %25 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @ZFCP_DBF_ID_SIZE, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %31 = ptrtoint %struct.zfcp_erp_action* %30 to i64
  %32 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %40 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %44 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 8
  %50 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_dbf_rec_record, %struct.zfcp_dbf_rec_record* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 %52, i64* %56, align 8
  %57 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.zfcp_dbf_rec_record*, %struct.zfcp_dbf_rec_record** %6, align 8
  %61 = call i32 @debug_event(i32 %59, i32 5, %struct.zfcp_dbf_rec_record* %60, i32 32)
  %62 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %63 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_rec_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_rec_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
