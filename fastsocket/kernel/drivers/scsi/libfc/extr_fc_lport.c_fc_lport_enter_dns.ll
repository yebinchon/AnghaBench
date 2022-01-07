; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_dns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_rport_priv*)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)* }
%struct.fc_rport_priv = type { i32* }
%struct.fc_lport.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Entered DNS state from %s state\0A\00", align 1
@LPORT_ST_DNS = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@fc_lport_rport_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_dns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_dns(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = call i32 @fc_lport_state(%struct.fc_lport* %5)
  %7 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = load i32, i32* @LPORT_ST_DNS, align 4
  %10 = call i32 @fc_lport_state_enter(%struct.fc_lport* %8, i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)** %17, align 8
  %19 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %20 = bitcast %struct.fc_lport* %19 to %struct.fc_lport.0*
  %21 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %22 = call %struct.fc_rport_priv* %18(%struct.fc_lport.0* %20, i32 %21)
  store %struct.fc_rport_priv* %22, %struct.fc_rport_priv** %3, align 8
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %28 = icmp ne %struct.fc_rport_priv* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %32 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %31, i32 0, i32 0
  store i32* @fc_lport_rport_ops, i32** %32, align 8
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %35, align 8
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %38 = call i32 %36(%struct.fc_rport_priv* %37)
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %41 = call i32 @fc_lport_error(%struct.fc_lport* %40, i32* null)
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_lport_error(%struct.fc_lport*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
