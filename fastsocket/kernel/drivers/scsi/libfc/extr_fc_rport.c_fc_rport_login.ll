; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32 }

@FC_RP_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ADISC port\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Restart deleted port\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Login to port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*)* @fc_rport_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_rport_login(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %3 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %4 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @FC_RP_STARTED, align 4
  %7 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %8 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %12 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %1
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %16 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %18 = call i32 @fc_rport_enter_adisc(%struct.fc_rport_priv* %17)
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %21 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %24 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %26 = call i32 @fc_rport_enter_flogi(%struct.fc_rport_priv* %25)
  br label %27

27:                                               ; preds = %22, %19, %14
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local i32 @fc_rport_enter_adisc(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_flogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
