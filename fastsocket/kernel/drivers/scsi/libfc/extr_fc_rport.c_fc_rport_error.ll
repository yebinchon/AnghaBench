; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32 }
%struct.fc_frame = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error %ld in state %s, retries %d\0A\00", align 1
@FC_RP_STARTED = common dso_local global i32 0, align 4
@RPORT_EV_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame*)* @fc_rport_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_error(%struct.fc_rport_priv* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %6 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %7 = call i64 @IS_ERR(%struct.fc_frame* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %11 = call i32 @PTR_ERR(%struct.fc_frame* %10)
  %12 = sub nsw i32 0, %11
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 0, %13 ]
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %17 = call i32 @fc_rport_state(%struct.fc_rport_priv* %16)
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %19 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %20)
  %22 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %23 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %42 [
    i32 134, label %25
    i32 132, label %25
    i32 128, label %35
    i32 130, label %38
    i32 136, label %38
    i32 131, label %41
    i32 135, label %41
    i32 129, label %41
    i32 133, label %41
  ]

25:                                               ; preds = %14, %14
  %26 = load i32, i32* @FC_RP_STARTED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %33 = load i32, i32* @RPORT_EV_FAILED, align 4
  %34 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %32, i32 %33)
  br label %42

35:                                               ; preds = %14
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %37 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %36)
  br label %42

38:                                               ; preds = %14, %14
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %40 = call i32 @fc_rport_enter_logo(%struct.fc_rport_priv* %39)
  br label %42

41:                                               ; preds = %14, %14, %14, %14
  br label %42

42:                                               ; preds = %14, %41, %38, %35, %25
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @fc_rport_enter_ready(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_logo(%struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
