; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_request_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport = type { i64, i32 }
%struct.device = type { i32 }
%struct.request = type { i32, %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_RPORT_FAST_FAIL_TIMEDOUT = common dso_local global i32 0, align 4
@FC_PORTSTATE_ONLINE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@FC_DISPATCH_BREAK = common dso_local global i32 0, align 4
@FC_DISPATCH_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.Scsi_Host*, %struct.fc_rport*, %struct.device*)* @fc_bsg_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_bsg_request_handler(%struct.request_queue* %0, %struct.Scsi_Host* %1, %struct.fc_rport* %2, %struct.device* %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.fc_bsg_job*, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %6, align 8
  store %struct.fc_rport* %2, %struct.fc_rport** %7, align 8
  store %struct.device* %3, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = call i32 @get_device(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %168

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %156, %102, %82, %54, %16
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = call i32 @blk_queue_plugged(%struct.request_queue* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %157

22:                                               ; preds = %17
  %23 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %24 = icmp ne %struct.fc_rport* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %27 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %33 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FC_RPORT_FAST_FAIL_TIMEDOUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %157

39:                                               ; preds = %31, %25, %22
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = call %struct.request* @blk_fetch_request(%struct.request_queue* %40)
  store %struct.request* %41, %struct.request** %9, align 8
  %42 = load %struct.request*, %struct.request** %9, align 8
  %43 = icmp ne %struct.request* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %157

45:                                               ; preds = %39
  %46 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %47 = icmp ne %struct.fc_rport* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %50 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FC_PORTSTATE_ONLINE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.request*, %struct.request** %9, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @spin_unlock_irq(i32 %61)
  %63 = load %struct.request*, %struct.request** %9, align 8
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @blk_end_request_all(%struct.request* %63, i32 %65)
  %67 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %68 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @spin_lock_irq(i32 %69)
  br label %17

71:                                               ; preds = %48, %45
  %72 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %73 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @spin_unlock_irq(i32 %74)
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %77 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %78 = load %struct.request*, %struct.request** %9, align 8
  %79 = call i32 @fc_req_to_bsgjob(%struct.Scsi_Host* %76, %struct.fc_rport* %77, %struct.request* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %71
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.request*, %struct.request** %9, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.request*, %struct.request** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @blk_end_request_all(%struct.request* %86, i32 %87)
  %89 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %90 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spin_lock_irq(i32 %91)
  br label %17

93:                                               ; preds = %71
  %94 = load %struct.request*, %struct.request** %9, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 1
  %96 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %95, align 8
  store %struct.fc_bsg_job* %96, %struct.fc_bsg_job** %10, align 8
  %97 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %100, 4
  br i1 %101, label %102, label %128

102:                                              ; preds = %93
  %103 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ult i64 %106, 4
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @ENOMSG, align 4
  %115 = sub nsw i32 0, %114
  %116 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %121 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %120, i32 0, i32 1
  store i32 4, i32* %121, align 4
  %122 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %123 = call i32 @fc_bsg_jobdone(%struct.fc_bsg_job* %122)
  %124 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %125 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @spin_lock_irq(i32 %126)
  br label %17

128:                                              ; preds = %93
  %129 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %130 = icmp ne %struct.fc_rport* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %134 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %135 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %136 = call i32 @fc_bsg_rport_dispatch(%struct.request_queue* %132, %struct.Scsi_Host* %133, %struct.fc_rport* %134, %struct.fc_bsg_job* %135)
  store i32 %136, i32* %11, align 4
  br label %142

137:                                              ; preds = %128
  %138 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %139 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %140 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %141 = call i32 @fc_bsg_host_dispatch(%struct.request_queue* %138, %struct.Scsi_Host* %139, %struct.fc_bsg_job* %140)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %137, %131
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @FC_DISPATCH_BREAK, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %157

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @FC_DISPATCH_UNLOCKED, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %153 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @spin_lock_irq(i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  br label %17

157:                                              ; preds = %146, %44, %38, %17
  %158 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %159 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @spin_unlock_irq(i32 %160)
  %162 = load %struct.device*, %struct.device** %8, align 8
  %163 = call i32 @put_device(%struct.device* %162)
  %164 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %165 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @spin_lock_irq(i32 %166)
  br label %168

168:                                              ; preds = %157, %15
  ret void
}

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @blk_queue_plugged(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @fc_req_to_bsgjob(%struct.Scsi_Host*, %struct.fc_rport*, %struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fc_bsg_jobdone(%struct.fc_bsg_job*) #1

declare dso_local i32 @fc_bsg_rport_dispatch(%struct.request_queue*, %struct.Scsi_Host*, %struct.fc_rport*, %struct.fc_bsg_job*) #1

declare dso_local i32 @fc_bsg_host_dispatch(%struct.request_queue*, %struct.Scsi_Host*, %struct.fc_bsg_job*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
