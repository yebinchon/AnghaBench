; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_execute_els_fc_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_execute_els_fc_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.fc_bsg_job = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.Scsi_Host*, %struct.fc_rport* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.Scsi_Host = type { i64* }
%struct.fc_rport = type { i32 }
%struct.zfcp_els_fc_job = type { %struct.TYPE_15__, %struct.fc_bsg_job* }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32 }

@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@zfcp_fc_generic_els_handler = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fc_execute_els_fc_job(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.zfcp_els_fc_job*, align 8
  %5 = alloca %struct.fc_rport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_port*, align 8
  %9 = alloca i32*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %10, i32 0, i32 5
  %12 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  store %struct.fc_rport* %12, %struct.fc_rport** %5, align 8
  %13 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %14 = icmp ne %struct.fc_rport* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %17 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %19, i32 0, i32 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %20, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi %struct.Scsi_Host* [ %17, %15 ], [ %21, %18 ]
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %6, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %29, %struct.zfcp_adapter** %7, align 8
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = call i32 @atomic_read(i32* %31)
  %33 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %141

39:                                               ; preds = %22
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.zfcp_els_fc_job* @kzalloc(i32 48, i32 %40)
  store %struct.zfcp_els_fc_job* %41, %struct.zfcp_els_fc_job** %4, align 8
  %42 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %43 = icmp ne %struct.zfcp_els_fc_job* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %141

47:                                               ; preds = %39
  %48 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %49 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 5
  store %struct.zfcp_adapter* %48, %struct.zfcp_adapter** %51, align 8
  %52 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %53 = icmp ne %struct.fc_rport* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zfcp_data, i32 0, i32 0))
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %57 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %58 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %56, i32 %59)
  store %struct.zfcp_port* %60, %struct.zfcp_port** %8, align 8
  %61 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %62 = icmp ne %struct.zfcp_port* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %65 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %68 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %54
  %71 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zfcp_data, i32 0, i32 0))
  %72 = load %struct.zfcp_port*, %struct.zfcp_port** %8, align 8
  %73 = icmp ne %struct.zfcp_port* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %76 = call i32 @kfree(%struct.zfcp_els_fc_job* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %141

79:                                               ; preds = %70
  br label %104

80:                                               ; preds = %47
  %81 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %82 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = add nsw i32 %91, %95
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %102 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %80, %79
  %105 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %110 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %117 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @zfcp_fc_generic_els_handler, align 4
  %120 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %121 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %124 = ptrtoint %struct.zfcp_els_fc_job* %123 to i64
  %125 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %126 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store i64 %124, i64* %127, align 8
  %128 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %129 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %130 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %129, i32 0, i32 1
  store %struct.fc_bsg_job* %128, %struct.fc_bsg_job** %130, align 8
  %131 = load %struct.zfcp_els_fc_job*, %struct.zfcp_els_fc_job** %4, align 8
  %132 = getelementptr inbounds %struct.zfcp_els_fc_job, %struct.zfcp_els_fc_job* %131, i32 0, i32 0
  %133 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %134 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HZ, align 4
  %139 = sdiv i32 %137, %138
  %140 = call i32 @zfcp_fsf_send_els(%struct.TYPE_15__* %132, i32 %139)
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %104, %74, %44, %36
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.zfcp_els_fc_job* @kzalloc(i32, i32) #1

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.zfcp_els_fc_job*) #1

declare dso_local i32 @zfcp_fsf_send_els(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
