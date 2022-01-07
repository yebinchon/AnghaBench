; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_access_denied_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_access_denied_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.zfcp_unit = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"Access denied to unit 0x%016Lx on port 0x%016Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsuad_1\00", align 1
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, %struct.zfcp_unit*)* @zfcp_fsf_access_denied_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_access_denied_unit(%struct.zfcp_fsf_req* %0, %struct.zfcp_unit* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store %struct.zfcp_unit* %1, %struct.zfcp_unit** %4, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store %struct.fsf_qtcb_header* %9, %struct.fsf_qtcb_header** %5, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %23)
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %29 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zfcp_act_eval_err(%struct.TYPE_10__* %27, i32 %33)
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %39 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zfcp_act_eval_err(%struct.TYPE_10__* %37, i32 %43)
  %45 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %47 = call i32 @zfcp_erp_unit_access_denied(%struct.zfcp_unit* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %46)
  %48 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @zfcp_act_eval_err(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @zfcp_erp_unit_access_denied(%struct.zfcp_unit*, i8*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
