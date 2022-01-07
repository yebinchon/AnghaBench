; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_set_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_set_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type opaque
%struct.fc_exch = type { void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*, i32, i8* }
%struct.fc_frame.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i8*)* @fc_seq_set_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_set_resp(%struct.fc_seq* %0, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_exch*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %1, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %9 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %8)
  store %struct.fc_exch* %9, %struct.fc_exch** %7, align 8
  %10 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %11 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %5, align 8
  %14 = bitcast void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %13 to void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*
  %15 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %16 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %15, i32 0, i32 0
  store void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)* %14, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %19 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %21 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
