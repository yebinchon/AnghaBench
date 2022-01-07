; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fc_frame = type { i32 }

@FC_DEF_E_D_TOV = common dso_local global i64 0, align 8
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error %ld in state %s, retrying\0A\00", align 1
@FC_EX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, %struct.fc_frame*)* @fc_rport_error_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_error_retry(%struct.fc_rport_priv* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %6 = load i64, i64* @FC_DEF_E_D_TOV, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call i32 @PTR_ERR(%struct.fc_frame* %7)
  %9 = load i32, i32* @FC_EX_CLOSED, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %13
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %25 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.fc_frame* %25)
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %28 = call i32 @fc_rport_state(%struct.fc_rport_priv* %27)
  %29 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %31 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.fc_frame* %34)
  %36 = load i32, i32* @FC_EX_TIMEOUT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @schedule_delayed_work(i32* %42, i64 %43)
  br label %50

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %48 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %49 = call i32 @fc_rport_error(%struct.fc_rport_priv* %47, %struct.fc_frame* %48)
  br label %50

50:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
