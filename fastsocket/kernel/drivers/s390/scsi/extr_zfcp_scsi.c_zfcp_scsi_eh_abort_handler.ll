; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zfcp_unit*, %struct.Scsi_Host* }
%struct.zfcp_unit = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32, i32, i32, i32 }
%struct.zfcp_fsf_req = type { i32, i32, i32* }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lte1\00", align 1
@FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nres\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"lte2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @zfcp_scsi_eh_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %25, %struct.zfcp_adapter** %5, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.zfcp_unit*, %struct.zfcp_unit** %29, align 8
  store %struct.zfcp_unit* %30, %struct.zfcp_unit** %6, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* @SUCCESS, align 4
  store i32 %34, i32* %11, align 4
  store i32 3, i32* %13, align 4
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 2
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @write_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %39, i32 0, i32 3
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.zfcp_fsf_req* @zfcp_reqlist_find(%struct.zfcp_adapter* %42, i64 %43)
  store %struct.zfcp_fsf_req* %44, %struct.zfcp_fsf_req** %7, align 8
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %49 = icmp ne %struct.zfcp_fsf_req* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %1
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 2
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @write_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %57, %struct.scsi_cmnd* %58, %struct.zfcp_fsf_req* null, i64 %59)
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %2, align 4
  br label %144

62:                                               ; preds = %1
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 2
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @write_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %104, %62
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %76 = call %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_command(i64 %74, %struct.zfcp_unit* %75)
  store %struct.zfcp_fsf_req* %76, %struct.zfcp_fsf_req** %8, align 8
  %77 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %78 = icmp ne %struct.zfcp_fsf_req* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %105

80:                                               ; preds = %73
  %81 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %82 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %81)
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %84 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %2, align 4
  br label %144

89:                                               ; preds = %80
  %90 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %90, i32 0, i32 1
  %92 = call i32 @atomic_read(i32* %91)
  %93 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @zfcp_dbf_scsi_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %99, %struct.scsi_cmnd* %100, %struct.zfcp_fsf_req* null, i64 %101)
  %103 = load i32, i32* @SUCCESS, align 4
  store i32 %103, i32* %2, align 4
  br label %144

104:                                              ; preds = %89
  br label %69

105:                                              ; preds = %79, %69
  %106 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %107 = icmp ne %struct.zfcp_fsf_req* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @FAILED, align 4
  store i32 %109, i32* %2, align 4
  br label %144

110:                                              ; preds = %105
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %112 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %111, i32 0, i32 1
  %113 = call i32 @wait_for_completion(i32* %112)
  %114 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %115 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %132

121:                                              ; preds = %110
  %122 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %123 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %131

129:                                              ; preds = %121
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  %130 = load i32, i32* @FAILED, align 4
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %129, %128
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i8*, i8** %14, align 8
  %134 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %138 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @zfcp_dbf_scsi_abort(i8* %133, i32 %136, %struct.scsi_cmnd* %137, %struct.zfcp_fsf_req* %138, i64 %139)
  %141 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %142 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %132, %108, %96, %87, %50
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_reqlist_find(%struct.zfcp_adapter*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_dbf_scsi_abort(i8*, i32, %struct.scsi_cmnd*, %struct.zfcp_fsf_req*, i64) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_command(i64, %struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
