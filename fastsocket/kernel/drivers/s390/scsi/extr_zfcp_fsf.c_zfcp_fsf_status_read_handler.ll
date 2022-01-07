; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_status_read_buffer*, %struct.zfcp_adapter* }
%struct.fsf_status_read_buffer = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.zfcp_adapter = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ZFCP_STATUS_FSFREQ_DISMISSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dism\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"The error threshold for checksum statistics has been exceeded\0A\00", align 1
@FCH_EVT_LINKDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"The local link has been restored\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fssrh_1\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_SET = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"fssrh_2\00", align 1
@FCH_EVT_LINKUP = common dso_local global i32 0, align 4
@FSF_STATUS_READ_SUB_ACT_UPDATED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fssrh_3\00", align 1
@FSF_STATUS_READ_SUB_INCOMING_ELS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"fssrh_4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_status_read_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_status_read_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fsf_status_read_buffer*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 1
  %10 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %9, align 8
  store %struct.fsf_status_read_buffer* %10, %struct.fsf_status_read_buffer** %4, align 8
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ZFCP_STATUS_FSFREQ_DISMISSED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %22 = call i32 @zfcp_dbf_hba_fsf_unsol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.fsf_status_read_buffer* %21)
  %23 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mempool_free(%struct.fsf_status_read_buffer* %23, i32 %27)
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %30 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %29)
  br label %136

31:                                               ; preds = %1
  %32 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %36 = call i32 @zfcp_dbf_hba_fsf_unsol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34, %struct.fsf_status_read_buffer* %35)
  %37 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %118 [
    i32 129, label %40
    i32 133, label %43
    i32 128, label %46
    i32 136, label %47
    i32 132, label %58
    i32 131, label %64
    i32 130, label %83
    i32 135, label %105
    i32 134, label %109
  ]

40:                                               ; preds = %31
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %42 = call i32 @zfcp_fsf_status_read_port_closed(%struct.zfcp_fsf_req* %41)
  br label %118

43:                                               ; preds = %31
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = call i32 @zfcp_fc_incoming_els(%struct.zfcp_fsf_req* %44)
  br label %118

46:                                               ; preds = %31
  br label %118

47:                                               ; preds = %31
  %48 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %57 = call i32 @zfcp_dbf_hba_berr(i32 %55, %struct.zfcp_fsf_req* %56)
  br label %118

58:                                               ; preds = %31
  %59 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %60 = call i32 @zfcp_fsf_status_read_link_down(%struct.zfcp_fsf_req* %59)
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %62 = load i32, i32* @FCH_EVT_LINKDOWN, align 4
  %63 = call i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter* %61, i32 %62, i32 0)
  br label %118

64:                                               ; preds = %31
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %71 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %72 = load i32, i32* @ZFCP_SET, align 4
  %73 = call i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %71, i32 %72)
  %74 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %75 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %76 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %79 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %74, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.zfcp_fsf_req* %78)
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %81 = load i32, i32* @FCH_EVT_LINKUP, align 4
  %82 = call i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter* %80, i32 %81, i32 0)
  br label %118

83:                                               ; preds = %31
  %84 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %85 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FSF_STATUS_READ_SUB_ACT_UPDATED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %92 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %93 = call i32 @zfcp_erp_adapter_access_changed(%struct.zfcp_adapter* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.zfcp_fsf_req* %92)
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %96 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FSF_STATUS_READ_SUB_INCOMING_ELS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %103 = call i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter* %102)
  br label %104

104:                                              ; preds = %101, %94
  br label %118

105:                                              ; preds = %31
  %106 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %107 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %108 = call i32 @zfcp_erp_adapter_access_changed(%struct.zfcp_adapter* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.zfcp_fsf_req* %107)
  br label %118

109:                                              ; preds = %31
  %110 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %31, %109, %105, %104, %64, %58, %47, %46, %43, %40
  %119 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %4, align 8
  %120 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mempool_free(%struct.fsf_status_read_buffer* %119, i32 %123)
  %125 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %126 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %125)
  %127 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %127, i32 0, i32 2
  %129 = call i32 @atomic_inc(i32* %128)
  %130 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %133, i32 0, i32 0
  %135 = call i32 @queue_work(i32 %132, i32* %134)
  br label %136

136:                                              ; preds = %118, %17
  ret void
}

declare dso_local i32 @zfcp_dbf_hba_fsf_unsol(i8*, i32, %struct.fsf_status_read_buffer*) #1

declare dso_local i32 @mempool_free(%struct.fsf_status_read_buffer*, i32) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_status_read_port_closed(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_incoming_els(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_dbf_hba_berr(i32, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_status_read_link_down(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_enqueue_event(%struct.zfcp_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_modify_adapter_status(%struct.zfcp_adapter*, i8*, i32*, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_adapter_access_changed(%struct.zfcp_adapter*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_conditional_port_scan(%struct.zfcp_adapter*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
