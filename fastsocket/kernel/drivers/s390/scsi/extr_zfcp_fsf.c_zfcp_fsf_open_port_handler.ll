; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_port_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_15__*, %struct.TYPE_11__*, %struct.zfcp_port* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.fsf_qtcb_header }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.fsf_qtcb_header = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.zfcp_port = type { i32, i64, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.fsf_plogi = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Not enough FCP adapter resources to open remote port 0x%016Lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsoph_1\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_PORT_PHYS_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_DENIED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@FSF_PLOGI_MIN_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"A port opened with WWPN 0x%016Lx returned data that identifies it as WWPN 0x%016Lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_open_port_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_open_port_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.fsf_qtcb_header*, align 8
  %5 = alloca %struct.fsf_plogi*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 3
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  store %struct.zfcp_port* %8, %struct.zfcp_port** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store %struct.fsf_qtcb_header* %12, %struct.fsf_qtcb_header** %4, align 8
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %142

20:                                               ; preds = %1
  %21 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %22 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %141 [
    i32 132, label %24
    i32 136, label %25
    i32 133, label %29
    i32 135, label %48
    i32 134, label %62
    i32 128, label %135
  ]

24:                                               ; preds = %20
  br label %141

25:                                               ; preds = %20
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %27 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %28 = call i32 @zfcp_fsf_access_denied_port(%struct.zfcp_fsf_req* %26, %struct.zfcp_port* %27)
  br label %141

29:                                               ; preds = %20
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %37 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32*, i8*, i64, ...) @dev_warn(i32* %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %42 = call i32 @zfcp_erp_port_failed(%struct.zfcp_port* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %41)
  %43 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %141

48:                                               ; preds = %20
  %49 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %50 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %61 [
    i32 131, label %55
    i32 129, label %55
    i32 130, label %55
  ]

55:                                               ; preds = %48, %48, %48
  %56 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %48, %55
  br label %141

62:                                               ; preds = %20
  %63 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %64 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %67 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %69 = load i32, i32* @ZFCP_STATUS_PORT_PHYS_OPEN, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %72 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %71, i32 0, i32 4
  %73 = call i32 @atomic_set_mask(i32 %70, i32* %72)
  %74 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_DENIED, align 4
  %75 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %78 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %77, i32 0, i32 4
  %79 = call i32 @atomic_clear_mask(i32 %76, i32* %78)
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %81 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.fsf_plogi*
  store %struct.fsf_plogi* %87, %struct.fsf_plogi** %5, align 8
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %89 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FSF_PLOGI_MIN_LEN, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %134

97:                                               ; preds = %62
  %98 = load %struct.fsf_plogi*, %struct.fsf_plogi** %5, align 8
  %99 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %103 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %97
  %107 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %108 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %107, i32 0, i32 3
  store i32 0, i32* %108, align 8
  %109 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %110 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %109, i32 0, i32 2
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %116 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.fsf_plogi*, %struct.fsf_plogi** %5, align 8
  %119 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32*, i8*, i64, ...) @dev_warn(i32* %114, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i64 %117, i64 %121)
  br label %133

123:                                              ; preds = %97
  %124 = load %struct.fsf_plogi*, %struct.fsf_plogi** %5, align 8
  %125 = getelementptr inbounds %struct.fsf_plogi, %struct.fsf_plogi* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %129 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %131 = load %struct.fsf_plogi*, %struct.fsf_plogi** %5, align 8
  %132 = call i32 @zfcp_fc_plogi_evaluate(%struct.zfcp_port* %130, %struct.fsf_plogi* %131)
  br label %133

133:                                              ; preds = %123, %106
  br label %134

134:                                              ; preds = %133, %62
  br label %141

135:                                              ; preds = %20
  %136 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %137 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %138 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %20, %135, %134, %61, %29, %25, %24
  br label %142

142:                                              ; preds = %141, %19
  %143 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %144 = call i32 @zfcp_port_put(%struct.zfcp_port* %143)
  ret void
}

declare dso_local i32 @zfcp_fsf_access_denied_port(%struct.zfcp_fsf_req*, %struct.zfcp_port*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, ...) #1

declare dso_local i32 @zfcp_erp_port_failed(%struct.zfcp_port*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @zfcp_fc_plogi_evaluate(%struct.zfcp_port*, %struct.fsf_plogi*) #1

declare dso_local i32 @zfcp_port_put(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
