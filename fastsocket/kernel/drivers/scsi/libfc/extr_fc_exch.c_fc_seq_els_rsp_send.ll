; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_els_rsp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_els_rsp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_seq_els_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid ELS CMD:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)* @fc_seq_els_rsp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_seq_els_rsp_send(%struct.fc_frame* %0, i32 %1, %struct.fc_seq_els_data* %2) #0 {
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_seq_els_data*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fc_seq_els_data* %2, %struct.fc_seq_els_data** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 130, label %8
    i32 131, label %17
    i32 128, label %20
    i32 129, label %23
  ]

8:                                                ; preds = %3
  %9 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %10 = load %struct.fc_seq_els_data*, %struct.fc_seq_els_data** %6, align 8
  %11 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fc_seq_els_data*, %struct.fc_seq_els_data** %6, align 8
  %14 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fc_seq_ls_rjt(%struct.fc_frame* %9, i32 %12, i32 %15)
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %19 = call i32 @fc_seq_ls_acc(%struct.fc_frame* %18)
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %22 = call i32 @fc_exch_els_rrq(%struct.fc_frame* %21)
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %25 = call i32 @fc_exch_els_rec(%struct.fc_frame* %24)
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %28 = call i32 @fr_dev(%struct.fc_frame* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FC_LPORT_DBG(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %23, %20, %17, %8
  ret void
}

declare dso_local i32 @fc_seq_ls_rjt(%struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_seq_ls_acc(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_els_rrq(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_els_rec(%struct.fc_frame*) #1

declare dso_local i32 @FC_LPORT_DBG(i32, i8*, i32) #1

declare dso_local i32 @fr_dev(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
