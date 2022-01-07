; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_access_denied_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_access_denied_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.zfcp_port = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Access denied to port 0x%016Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fspad_1\00", align 1
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, %struct.zfcp_port*)* @zfcp_fsf_access_denied_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_access_denied_port(%struct.zfcp_fsf_req* %0, %struct.zfcp_port* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store %struct.zfcp_port* %1, %struct.zfcp_port** %4, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.fsf_qtcb_header* %9, %struct.fsf_qtcb_header** %5, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %24 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zfcp_act_eval_err(%struct.TYPE_8__* %22, i32 %28)
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %34 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zfcp_act_eval_err(%struct.TYPE_8__* %32, i32 %38)
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %42 = call i32 @zfcp_erp_port_access_denied(%struct.zfcp_port* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %41)
  %43 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_act_eval_err(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @zfcp_erp_port_access_denied(%struct.zfcp_port*, i8*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
