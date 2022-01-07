; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_incoming_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_incoming_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.fsf_status_read_buffer = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"iels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_san_incoming_els(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fsf_status_read_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fsf_status_read_buffer*
  store %struct.fsf_status_read_buffer* %12, %struct.fsf_status_read_buffer** %4, align 8
  %13 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_2__* %18 to i8*
  %20 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %21 = bitcast %struct.fsf_status_read_buffer* %20 to i8*
  %22 = ptrtoint i8* %19 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = sub nsw i32 %16, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fc_host_port_id(i32 %33)
  %35 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @zfcp_dbf_san_els(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, %struct.zfcp_fsf_req* %27, i32 %30, i32 %34, i32 %40, i8* %45, i32 %46)
  ret void
}

declare dso_local i32 @zfcp_dbf_san_els(i8*, i32, %struct.zfcp_fsf_req*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
