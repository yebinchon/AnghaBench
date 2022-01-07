; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_echo_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_echo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Received ECHO request while in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_lport_recv_echo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_recv_echo_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_frame.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = call i32 @fc_lport_state(%struct.fc_lport* %10)
  %12 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %14 = call i32 @fr_len(%struct.fc_frame.1* %13)
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %18, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %26, i32 %27)
  store %struct.fc_frame.1* %28, %struct.fc_frame.1** %5, align 8
  %29 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %30 = icmp ne %struct.fc_frame.1* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memcpy(i8* %35, i8* %36, i32 %37)
  %39 = load i32, i32* @ELS_LS_ACC, align 4
  %40 = shl i32 %39, 24
  %41 = call i32 @htonl(i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %45 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %46 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %47 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %44, %struct.fc_frame.1* %45, i32 %46, i32 0)
  %48 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %50, align 8
  %52 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %53 = bitcast %struct.fc_lport* %52 to %struct.fc_lport.0*
  %54 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %55 = bitcast %struct.fc_frame.1* %54 to %struct.fc_frame*
  %56 = call i32 %51(%struct.fc_lport.0* %53, %struct.fc_frame* %55)
  br label %57

57:                                               ; preds = %31, %25
  %58 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %59 = call i32 @fc_frame_free(%struct.fc_frame.1* %58)
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fr_len(%struct.fc_frame.1*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
