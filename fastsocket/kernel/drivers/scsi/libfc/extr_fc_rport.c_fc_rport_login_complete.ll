; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_els_flogi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i64 0, align 8
@FC_SP_FT_FPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Fabric bit set in FLOGI\0A\00", align 1
@FC_SP_FT_EDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, %struct.fc_frame*)* @fc_rport_login_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_rport_login_complete(%struct.fc_rport_priv* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_els_flogi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  %10 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %11 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %10, i32 0, i32 2
  %12 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  store %struct.fc_lport* %12, %struct.fc_lport** %6, align 8
  %13 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %14 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame* %13, i32 8)
  store %struct.fc_els_flogi* %14, %struct.fc_els_flogi** %7, align 8
  %15 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %7, align 8
  %16 = icmp ne %struct.fc_els_flogi* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %7, align 8
  %22 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call i64 @fc_frame_payload_op(%struct.fc_frame* %26)
  %28 = load i64, i64* @ELS_FLOGI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FC_SP_FT_FPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %37 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %73

40:                                               ; preds = %30
  br label %65

41:                                               ; preds = %20
  %42 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %7, align 8
  %43 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohl(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FC_SP_FT_EDTR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = udiv i32 %52, 1000000
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %57 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %63 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %7, align 8
  %67 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi* %66, i32 %69)
  %71 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %72 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %35, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
