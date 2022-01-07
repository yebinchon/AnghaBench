; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_rscn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i64 }
%struct.fsf_status_read_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fcp_rscn_head = type { i32 }
%struct.fcp_rscn_element = type { i64 }

@rscn_range_mask = common dso_local global i32* null, align 8
@FCH_EVT_RSCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fc_incoming_rscn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_incoming_rscn(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_status_read_buffer*, align 8
  %4 = alloca %struct.fcp_rscn_head*, align 8
  %5 = alloca %struct.fcp_rscn_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.fsf_status_read_buffer*
  store %struct.fsf_status_read_buffer* %13, %struct.fsf_status_read_buffer** %3, align 8
  %14 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.fcp_rscn_head*
  store %struct.fcp_rscn_head* %18, %struct.fcp_rscn_head** %4, align 8
  %19 = load %struct.fcp_rscn_head*, %struct.fcp_rscn_head** %4, align 8
  %20 = bitcast %struct.fcp_rscn_head* %19 to %struct.fcp_rscn_element*
  store %struct.fcp_rscn_element* %20, %struct.fcp_rscn_element** %5, align 8
  %21 = load %struct.fcp_rscn_head*, %struct.fcp_rscn_head** %4, align 8
  %22 = getelementptr inbounds %struct.fcp_rscn_head, %struct.fcp_rscn_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %52, %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.fcp_rscn_element*, %struct.fcp_rscn_element** %5, align 8
  %33 = getelementptr inbounds %struct.fcp_rscn_element, %struct.fcp_rscn_element* %32, i32 1
  store %struct.fcp_rscn_element* %33, %struct.fcp_rscn_element** %5, align 8
  %34 = load i32*, i32** @rscn_range_mask, align 8
  %35 = load %struct.fcp_rscn_element*, %struct.fcp_rscn_element** %5, align 8
  %36 = getelementptr inbounds %struct.fcp_rscn_element, %struct.fcp_rscn_element* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fcp_rscn_element*, %struct.fcp_rscn_element** %5, align 8
  %43 = call i32 @_zfcp_fc_incoming_rscn(%struct.zfcp_fsf_req* %40, i32 %41, %struct.fcp_rscn_element* %42)
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FCH_EVT_RSCN, align 4
  %48 = load %struct.fcp_rscn_element*, %struct.fcp_rscn_element** %5, align 8
  %49 = bitcast %struct.fcp_rscn_element* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @zfcp_fc_enqueue_event(i32 %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %57 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @zfcp_fc_conditional_port_scan(i32 %58)
  ret void
}

declare dso_local i32 @_zfcp_fc_incoming_rscn(%struct.zfcp_fsf_req*, i32, %struct.fcp_rscn_element*) #1

declare dso_local i32 @zfcp_fc_enqueue_event(i32, i32, i32) #1

declare dso_local i32 @zfcp_fc_conditional_port_scan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
