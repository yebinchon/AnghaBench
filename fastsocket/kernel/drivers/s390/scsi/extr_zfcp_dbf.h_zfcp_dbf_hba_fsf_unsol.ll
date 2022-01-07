; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_unsol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_unsol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsf_status_read_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.zfcp_dbf*, %struct.fsf_status_read_buffer*)* @zfcp_dbf_hba_fsf_unsol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_fsf_unsol(i8* %0, %struct.zfcp_dbf* %1, %struct.fsf_status_read_buffer* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zfcp_dbf*, align 8
  %6 = alloca %struct.fsf_status_read_buffer*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.zfcp_dbf* %1, %struct.zfcp_dbf** %5, align 8
  store %struct.fsf_status_read_buffer* %2, %struct.fsf_status_read_buffer** %6, align 8
  store i32 2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %10 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %8, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %19 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %6, align 8
  %20 = call i32 @_zfcp_dbf_hba_fsf_unsol(i8* %16, i32 %17, %struct.zfcp_dbf* %18, %struct.fsf_status_read_buffer* %19)
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @_zfcp_dbf_hba_fsf_unsol(i8*, i32, %struct.zfcp_dbf*, %struct.fsf_status_read_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
