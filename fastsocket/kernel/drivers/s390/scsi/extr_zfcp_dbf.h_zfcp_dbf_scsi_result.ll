; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_scsi_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_scsi_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.zfcp_fsf_req = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rslt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.zfcp_dbf*, %struct.scsi_cmnd*, %struct.zfcp_fsf_req*)* @zfcp_dbf_scsi_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_scsi_result(i8* %0, i32 %1, %struct.zfcp_dbf* %2, %struct.scsi_cmnd* %3, %struct.zfcp_fsf_req* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zfcp_dbf*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.zfcp_fsf_req*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.zfcp_dbf* %2, %struct.zfcp_dbf** %8, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %9, align 8
  store %struct.zfcp_fsf_req* %4, %struct.zfcp_fsf_req** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %16 = call i32 @zfcp_dbf_scsi(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12, %struct.zfcp_dbf* %13, %struct.scsi_cmnd* %14, %struct.zfcp_fsf_req* %15, i32 0)
  ret void
}

declare dso_local i32 @zfcp_dbf_scsi(i8*, i8*, i32, %struct.zfcp_dbf*, %struct.scsi_cmnd*, %struct.zfcp_fsf_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
