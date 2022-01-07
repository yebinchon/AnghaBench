; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_rport_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_rport_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.fc_rport_priv*)* }
%struct.TYPE_6__ = type { %struct.fcoe_ctlr* }
%struct.fcoe_ctlr = type { i32 }
%struct.fc_rport_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fcoe_rport = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"vn_rport_callback %x event %d\0A\00", align 1
@FCOE_CTLR_VN2VN_LOGIN_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"rport FLOGI limited port_id %6.6x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_rport_priv*, i32)* @fcoe_ctlr_vn_rport_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_rport_callback(%struct.fc_lport* %0, %struct.fc_rport_priv* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcoe_ctlr*, align 8
  %8 = alloca %struct.fcoe_rport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %11, align 8
  store %struct.fcoe_ctlr* %12, %struct.fcoe_ctlr** %7, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %14 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %13)
  store %struct.fcoe_rport* %14, %struct.fcoe_rport** %8, align 8
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.fcoe_ctlr*, i8*, i32, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %23 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %53 [
    i32 129, label %26
    i32 130, label %29
    i32 131, label %29
    i32 128, label %29
  ]

26:                                               ; preds = %3
  %27 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %28 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %54

29:                                               ; preds = %3, %3, %3
  %30 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %31 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %35 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FCOE_CTLR_VN2VN_LOGIN_LIMIT, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.fcoe_ctlr*, i8*, i32, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %48, align 8
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %51 = call i32 %49(%struct.fc_rport_priv* %50)
  br label %52

52:                                               ; preds = %39, %29
  br label %54

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %53, %52, %26
  %55 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %56 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  ret void
}

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
