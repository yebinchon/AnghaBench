; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_execute_ct_fc_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_execute_ct_fc_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.Scsi_Host*, %struct.fc_rport* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.fc_rport = type { i32 }
%struct.zfcp_adapter = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.zfcp_ct_fc_job = type { %struct.TYPE_16__, %struct.fc_bsg_job* }
%struct.TYPE_16__ = type { i64, i32*, i32*, i32, i32, i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_fc_generic_ct_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fc_execute_ct_fc_job(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.zfcp_adapter*, align 8
  %9 = alloca %struct.zfcp_ct_fc_job*, align 8
  %10 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %11 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %12 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %11, i32 0, i32 5
  %13 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  store %struct.fc_rport* %13, %struct.fc_rport** %6, align 8
  %14 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %15 = icmp ne %struct.fc_rport* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %18 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %21 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %20, i32 0, i32 4
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi %struct.Scsi_Host* [ %18, %16 ], [ %22, %19 ]
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %7, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %30, %struct.zfcp_adapter** %8, align 8
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 1
  %33 = call i32 @atomic_read(i32* %32)
  %34 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %161

40:                                               ; preds = %23
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.zfcp_ct_fc_job* @kzalloc(i32 48, i32 %41)
  store %struct.zfcp_ct_fc_job* %42, %struct.zfcp_ct_fc_job** %9, align 8
  %43 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %44 = icmp ne %struct.zfcp_ct_fc_job* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %161

48:                                               ; preds = %40
  %49 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %50 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, -16777216
  %58 = lshr i32 %57, 24
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %92 [
    i32 131, label %60
    i32 129, label %68
    i32 128, label %76
    i32 130, label %84
  ]

60:                                               ; preds = %48
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %62 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %66 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  br label %97

68:                                               ; preds = %48
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %74 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  store i32* %72, i32** %75, align 8
  br label %97

76:                                               ; preds = %48
  %77 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %78 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %82 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i32* %80, i32** %83, align 8
  br label %97

84:                                               ; preds = %48
  %85 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  %86 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %90 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32* %88, i32** %91, align 8
  br label %97

92:                                               ; preds = %48
  %93 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %94 = call i32 @kfree(%struct.zfcp_ct_fc_job* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %161

97:                                               ; preds = %84, %76, %68, %60
  %98 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %99 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @zfcp_fc_wka_port_get(i32* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %107 = call i32 @kfree(%struct.zfcp_ct_fc_job* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %161

109:                                              ; preds = %97
  %110 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %115 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 8
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %118 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %122 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @zfcp_fc_generic_ct_handler, align 4
  %125 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %126 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %129 = ptrtoint %struct.zfcp_ct_fc_job* %128 to i64
  %130 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %131 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %134 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  store i32* null, i32** %135, align 8
  %136 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %137 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %138 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %137, i32 0, i32 1
  store %struct.fc_bsg_job* %136, %struct.fc_bsg_job** %138, align 8
  %139 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %140 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %139, i32 0, i32 0
  %141 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %142 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HZ, align 4
  %147 = sdiv i32 %145, %146
  %148 = call i32 @zfcp_fsf_send_ct(%struct.TYPE_16__* %140, i32* null, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %109
  %152 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %153 = call i32 @kfree(%struct.zfcp_ct_fc_job* %152)
  %154 = load %struct.zfcp_ct_fc_job*, %struct.zfcp_ct_fc_job** %9, align 8
  %155 = getelementptr inbounds %struct.zfcp_ct_fc_job, %struct.zfcp_ct_fc_job* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @zfcp_fc_wka_port_put(i32* %157)
  br label %159

159:                                              ; preds = %151, %109
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %105, %92, %45, %37
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.zfcp_ct_fc_job* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.zfcp_ct_fc_job*) #1

declare dso_local i32 @zfcp_fc_wka_port_get(i32*) #1

declare dso_local i32 @zfcp_fsf_send_ct(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @zfcp_fc_wka_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
