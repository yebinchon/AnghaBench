; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_16__*, %struct.fc_rport*, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.Scsi_Host*, %struct.TYPE_9__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.fc_rport = type { i32, %struct.fc_rport_priv* }
%struct.fc_rport_priv = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_9__ = type { %struct.request* }
%struct.request = type { i32 }
%struct.fc_lport = type { i32, i32, %struct.TYPE_13__, %struct.fc_rport_priv* }
%struct.TYPE_13__ = type { %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)* }
%struct.fc_lport.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_lport_bsg_request(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %11 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %10, i32 0, i32 5
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %3, align 8
  %15 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %16 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %15, i32 0, i32 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %18)
  store %struct.fc_lport* %19, %struct.fc_lport** %5, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %23 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = icmp ne %struct.request* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %137 [
    i32 128, label %44
    i32 129, label %64
    i32 131, label %84
    i32 130, label %121
  ]

44:                                               ; preds = %35
  %45 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %46 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %45, i32 0, i32 1
  %47 = load %struct.fc_rport*, %struct.fc_rport** %46, align 8
  store %struct.fc_rport* %47, %struct.fc_rport** %6, align 8
  %48 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %49 = icmp ne %struct.fc_rport* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %137

51:                                               ; preds = %44
  %52 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %53 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %52, i32 0, i32 1
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %53, align 8
  store %struct.fc_rport_priv* %54, %struct.fc_rport_priv** %7, align 8
  %55 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %56 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %57 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %58 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %61 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fc_lport_els_request(%struct.fc_bsg_job* %55, %struct.fc_lport* %56, i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %137

64:                                               ; preds = %35
  %65 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %66 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %65, i32 0, i32 1
  %67 = load %struct.fc_rport*, %struct.fc_rport** %66, align 8
  store %struct.fc_rport* %67, %struct.fc_rport** %6, align 8
  %68 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %69 = icmp ne %struct.fc_rport* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %137

71:                                               ; preds = %64
  %72 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %73 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %72, i32 0, i32 1
  %74 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %73, align 8
  store %struct.fc_rport_priv* %74, %struct.fc_rport_priv** %7, align 8
  %75 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %76 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %77 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %78 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %81 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fc_lport_ct_request(%struct.fc_bsg_job* %75, %struct.fc_lport* %76, i32 %79, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %137

84:                                               ; preds = %35
  %85 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %86 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntoh24(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 3
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %98, align 8
  store %struct.fc_rport_priv* %99, %struct.fc_rport_priv** %7, align 8
  br label %109

100:                                              ; preds = %84
  %101 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %102 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)** %103, align 8
  %105 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %106 = bitcast %struct.fc_lport* %105 to %struct.fc_lport.0*
  %107 = load i32, i32* %9, align 4
  %108 = call %struct.fc_rport_priv* %104(%struct.fc_lport.0* %106, i32 %107)
  store %struct.fc_rport_priv* %108, %struct.fc_rport_priv** %7, align 8
  br label %109

109:                                              ; preds = %100, %96
  %110 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %111 = icmp ne %struct.fc_rport_priv* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %137

113:                                              ; preds = %109
  %114 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %115 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %118 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @fc_lport_ct_request(%struct.fc_bsg_job* %114, %struct.fc_lport* %115, i32 %116, i32 %119)
  store i32 %120, i32* %8, align 4
  br label %137

121:                                              ; preds = %35
  %122 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %122, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ntoh24(i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %131 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %134 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fc_lport_els_request(%struct.fc_bsg_job* %130, %struct.fc_lport* %131, i32 %132, i32 %135)
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %35, %121, %113, %112, %71, %70, %51, %50
  %138 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %139 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_els_request(%struct.fc_bsg_job*, %struct.fc_lport*, i32, i32) #1

declare dso_local i32 @fc_lport_ct_request(%struct.fc_bsg_job*, %struct.fc_lport*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
