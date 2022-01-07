; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_recv_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_recv_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc }
%struct.fc_disc = type { i32 }
%struct.fc_frame = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Received an unsupported request, the opcode is (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @fc_disc_recv_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_recv_req(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_disc*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  store %struct.fc_disc* %8, %struct.fc_disc** %6, align 8
  %9 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %10 = call i32 @fc_frame_payload_op(%struct.fc_frame* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %22 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.fc_disc*, %struct.fc_disc** %6, align 8
  %14 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fc_disc*, %struct.fc_disc** %6, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %18 = call i32 @fc_disc_recv_rscn_req(%struct.fc_disc* %16, %struct.fc_frame* %17)
  %19 = load %struct.fc_disc*, %struct.fc_disc** %6, align 8
  %20 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.fc_disc*, %struct.fc_disc** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FC_DISC_DBG(%struct.fc_disc* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %27 = call i32 @fc_frame_free(%struct.fc_frame* %26)
  br label %28

28:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_disc_recv_rscn_req(%struct.fc_disc*, %struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
