; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_wka_port_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_wka_port_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.zfcp_wka_port* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { i32, i32 }
%struct.zfcp_wka_port = type { i32, i8*, i32, i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_WKA_PORT_OFFLINE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Opening WKA port 0x%x failed\0A\00", align 1
@ZFCP_WKA_PORT_ONLINE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_open_wka_port_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_open_wka_port_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_wka_port*, align 8
  %4 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 3
  %7 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %6, align 8
  store %struct.zfcp_wka_port* %7, %struct.zfcp_wka_port** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.fsf_qtcb_header* %11, %struct.fsf_qtcb_header** %4, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** @ZFCP_WKA_PORT_OFFLINE, align 8
  %20 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %24 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %57 [
    i32 129, label %26
    i32 131, label %37
    i32 132, label %43
    i32 130, label %47
    i32 128, label %53
  ]

26:                                               ; preds = %22
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %34 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %22, %26
  %38 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %22, %37
  %44 = load i8*, i8** @ZFCP_WKA_PORT_OFFLINE, align 8
  %45 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %46 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %57

47:                                               ; preds = %22
  %48 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %49 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %22, %47
  %54 = load i8*, i8** @ZFCP_WKA_PORT_ONLINE, align 8
  %55 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %56 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %22, %43
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %3, align 8
  %60 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %59, i32 0, i32 0
  %61 = call i32 @wake_up(i32* %60)
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
