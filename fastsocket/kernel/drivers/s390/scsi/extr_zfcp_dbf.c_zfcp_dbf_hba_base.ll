; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba_record }
%struct.zfcp_dbf_hba_record = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_base(%struct.zfcp_dbf* %0, i8* %1) #0 {
  %3 = alloca %struct.zfcp_dbf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %6 = alloca i64, align 8
  store %struct.zfcp_dbf* %0, %struct.zfcp_dbf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %7, i32 0, i32 2
  store %struct.zfcp_dbf_hba_record* %8, %struct.zfcp_dbf_hba_record** %5, align 8
  %9 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %14 = call i32 @memset(%struct.zfcp_dbf_hba_record* %13, i32 0, i32 8)
  %15 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %19 = call i32 @strncpy(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %21 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %25 = call i32 @strncpy(i32 %22, i8* %23, i32 %24)
  %26 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %27 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %5, align 8
  %30 = call i32 @debug_event(i32 %28, i32 0, %struct.zfcp_dbf_hba_record* %29, i32 8)
  %31 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
