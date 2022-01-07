; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_rjt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_ls_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_els_ls_rjt = type { i32, i32, i32 }

@ELS_LS_RJT = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*, i32, i32)* @fc_seq_ls_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_ls_rjt(%struct.fc_frame* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_els_ls_rjt*, align 8
  %9 = alloca %struct.fc_frame*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %11 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %10)
  store %struct.fc_lport* %11, %struct.fc_lport** %7, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %13 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %12, i32 12)
  store %struct.fc_frame* %13, %struct.fc_frame** %9, align 8
  %14 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %15 = icmp ne %struct.fc_frame* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %19 = call %struct.fc_els_ls_rjt* @fc_frame_payload_get(%struct.fc_frame* %18, i32 12)
  store %struct.fc_els_ls_rjt* %19, %struct.fc_els_ls_rjt** %8, align 8
  %20 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %21 = call i32 @memset(%struct.fc_els_ls_rjt* %20, i32 0, i32 12)
  %22 = load i32, i32* @ELS_LS_RJT, align 4
  %23 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %24 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %27 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %8, align 8
  %30 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %32 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %33 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %34 = call i32 @fc_fill_reply_hdr(%struct.fc_frame* %31, %struct.fc_frame* %32, i32 %33, i32 0)
  %35 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %37, align 8
  %39 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %40 = bitcast %struct.fc_lport* %39 to %struct.fc_lport.0*
  %41 = load %struct.fc_frame*, %struct.fc_frame** %9, align 8
  %42 = bitcast %struct.fc_frame* %41 to %struct.fc_frame.1*
  %43 = call i32 %38(%struct.fc_lport.0* %40, %struct.fc_frame.1* %42)
  br label %44

44:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_els_ls_rjt* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_ls_rjt*, i32, i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame*, %struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
