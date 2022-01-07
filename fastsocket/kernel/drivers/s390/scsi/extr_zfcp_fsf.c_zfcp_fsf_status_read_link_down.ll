; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.fsf_status_read_buffer* }
%struct.fsf_status_read_buffer = type { i32, i32 }
%struct.fsf_link_down_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fssrld1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fssrld2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fssrld3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_status_read_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_status_read_link_down(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_status_read_buffer*, align 8
  %4 = alloca %struct.fsf_link_down_info*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 0
  %7 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %6, align 8
  store %struct.fsf_status_read_buffer* %7, %struct.fsf_status_read_buffer** %3, align 8
  %8 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to %struct.fsf_link_down_info*
  store %struct.fsf_link_down_info* %10, %struct.fsf_link_down_info** %4, align 8
  %11 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %25 [
    i32 128, label %14
    i32 130, label %18
    i32 129, label %22
  ]

14:                                               ; preds = %1
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %4, align 8
  %17 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.fsf_link_down_info* %16)
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %20 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %4, align 8
  %21 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.fsf_link_down_info* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %24 = call i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.fsf_link_down_info* null)
  br label %25

25:                                               ; preds = %22, %1, %18, %14
  ret void
}

declare dso_local i32 @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req*, i8*, %struct.fsf_link_down_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
