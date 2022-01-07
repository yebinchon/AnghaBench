; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_els_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_els_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { void (%struct.fc_lport.0*, %struct.fc_frame*)*, void (%struct.fc_lport.1*, %struct.fc_frame.2*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_lport.1 = type opaque
%struct.fc_frame.2 = type opaque
%struct.fc_frame.3 = type { i32 }

@FC_FID_FLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_els_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_recv_els_req(%struct.fc_lport* %0, %struct.fc_frame.3* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.3*, align 8
  %5 = alloca void (%struct.fc_lport*, %struct.fc_frame.3*)*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.3* %1, %struct.fc_frame.3** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %15 = call i32 @fc_frame_free(%struct.fc_frame.3* %14)
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load void (%struct.fc_lport.0*, %struct.fc_frame*)*, void (%struct.fc_lport.0*, %struct.fc_frame*)** %19, align 8
  %21 = bitcast void (%struct.fc_lport.0*, %struct.fc_frame*)* %20 to void (%struct.fc_lport*, %struct.fc_frame.3*)*
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* %21, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  %22 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %23 = call i32 @fc_frame_payload_op(%struct.fc_frame.3* %22)
  switch i32 %23, label %47 [
    i32 132, label %24
    i32 131, label %31
    i32 128, label %38
    i32 133, label %44
    i32 130, label %45
    i32 129, label %46
  ]

24:                                               ; preds = %16
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_flogi_req, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %30

30:                                               ; preds = %29, %24
  br label %47

31:                                               ; preds = %16
  %32 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  %33 = call i32 @fc_frame_sid(%struct.fc_frame.3* %32)
  %34 = load i32, i32* @FC_FID_FLOGI, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_logo_req, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %37

37:                                               ; preds = %36, %31
  br label %47

38:                                               ; preds = %16
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load void (%struct.fc_lport.1*, %struct.fc_frame.2*)*, void (%struct.fc_lport.1*, %struct.fc_frame.2*)** %41, align 8
  %43 = bitcast void (%struct.fc_lport.1*, %struct.fc_frame.2*)* %42 to void (%struct.fc_lport*, %struct.fc_frame.3*)*
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* %43, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %47

44:                                               ; preds = %16
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_echo_req, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %47

45:                                               ; preds = %16
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_rlir_req, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %47

46:                                               ; preds = %16
  store void (%struct.fc_lport*, %struct.fc_frame.3*)* @fc_lport_recv_rnid_req, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  br label %47

47:                                               ; preds = %16, %46, %45, %44, %38, %37, %30
  %48 = load void (%struct.fc_lport*, %struct.fc_frame.3*)*, void (%struct.fc_lport*, %struct.fc_frame.3*)** %5, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %50 = load %struct.fc_frame.3*, %struct.fc_frame.3** %4, align 8
  call void %48(%struct.fc_lport* %49, %struct.fc_frame.3* %50)
  br label %51

51:                                               ; preds = %47, %13
  %52 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %53 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.3*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame.3*) #1

declare dso_local void @fc_lport_recv_flogi_req(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.3*) #1

declare dso_local void @fc_lport_recv_logo_req(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local void @fc_lport_recv_echo_req(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local void @fc_lport_recv_rlir_req(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local void @fc_lport_recv_rnid_req(%struct.fc_lport*, %struct.fc_frame.3*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
