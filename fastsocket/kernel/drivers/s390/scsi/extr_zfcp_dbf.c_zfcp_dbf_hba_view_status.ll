; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf_hba_record_status = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"status_type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"status_subtype\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"queue_designator\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.zfcp_dbf_hba_record_status*)* @zfcp_dbf_hba_view_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_view_status(i8** %0, %struct.zfcp_dbf_hba_record_status* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.zfcp_dbf_hba_record_status*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.zfcp_dbf_hba_record_status* %1, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %7 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @zfcp_dbf_out(i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i8**, i8*** %3, align 8
  %11 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load i8**, i8*** %3, align 8
  %16 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zfcp_dbf_out(i8** %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i8**, i8*** %3, align 8
  %21 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %21, i32 0, i32 2
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @zfcp_dbf_outd(i8** %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %23, i32 4, i32 0, i32 4)
  %25 = load i8**, i8*** %3, align 8
  %26 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.zfcp_dbf_hba_record_status*, %struct.zfcp_dbf_hba_record_status** %4, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf_hba_record_status, %struct.zfcp_dbf_hba_record_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zfcp_dbf_outd(i8** %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %28, i32 %31, i32 0, i32 %34)
  ret void
}

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32) #1

declare dso_local i32 @zfcp_dbf_outd(i8**, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
