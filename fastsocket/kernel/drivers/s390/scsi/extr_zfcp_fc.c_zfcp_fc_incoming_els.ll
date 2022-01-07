; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_incoming_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64 }
%struct.fsf_status_read_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@LS_PLOGI = common dso_local global i32 0, align 4
@LS_LOGO = common dso_local global i32 0, align 4
@LS_RSCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fc_incoming_els(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fsf_status_read_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fsf_status_read_buffer*
  store %struct.fsf_status_read_buffer* %8, %struct.fsf_status_read_buffer** %3, align 8
  %9 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = call i32 @zfcp_dbf_san_incoming_els(%struct.zfcp_fsf_req* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LS_PLOGI, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %22 = call i32 @zfcp_fc_incoming_plogi(%struct.zfcp_fsf_req* %21)
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LS_LOGO, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %29 = call i32 @zfcp_fc_incoming_logo(%struct.zfcp_fsf_req* %28)
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @LS_RSCN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %36 = call i32 @zfcp_fc_incoming_rscn(%struct.zfcp_fsf_req* %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %20
  ret void
}

declare dso_local i32 @zfcp_dbf_san_incoming_els(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_incoming_plogi(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_incoming_logo(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_incoming_rscn(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
