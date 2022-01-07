; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_flogi_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_flogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, i32, %struct.fc_lport*, i32, i32, %struct.TYPE_5__ }
%struct.fc_lport = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.fc_els_flogi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Received a FLOGI %s\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@RPORT_ST_FLOGI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Received a FLOGI response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@RPORT_ST_PLOGI_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Bad FLOGI response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_flogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_flogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_els_flogi*, align 8
  %10 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %12, %struct.fc_rport_priv** %7, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %14 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %13, i32 0, i32 2
  %15 = load %struct.fc_lport*, %struct.fc_lport** %14, align 8
  store %struct.fc_lport* %15, %struct.fc_lport** %8, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %18 = call i32 @fc_els_resp_type(%struct.fc_frame* %17)
  %19 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %21 = load i32, i32* @FC_EX_CLOSED, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.fc_frame* @ERR_PTR(i32 %22)
  %24 = icmp eq %struct.fc_frame* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %28 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %27, i32 0, i32 4
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %31 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RPORT_ST_FLOGI, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %38 = call i32 @fc_rport_state(%struct.fc_rport_priv* %37)
  %39 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %41 = call i64 @IS_ERR(%struct.fc_frame* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %106

44:                                               ; preds = %35
  br label %103

45:                                               ; preds = %26
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = call i64 @IS_ERR(%struct.fc_frame* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %51 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %52 = call i32 @fc_rport_error(%struct.fc_rport_priv* %50, %struct.fc_frame* %51)
  br label %106

53:                                               ; preds = %45
  %54 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %55 = call i64 @fc_frame_payload_op(%struct.fc_frame* %54)
  %56 = load i64, i64* @ELS_LS_ACC, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %120

59:                                               ; preds = %53
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %61 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %62 = call i64 @fc_rport_login_complete(%struct.fc_rport_priv* %60, %struct.fc_frame* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %120

65:                                               ; preds = %59
  %66 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %67 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame* %66, i32 4)
  store %struct.fc_els_flogi* %67, %struct.fc_els_flogi** %9, align 8
  %68 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %69 = icmp ne %struct.fc_els_flogi* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %120

71:                                               ; preds = %65
  %72 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %73 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntohl(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %79 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %85 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %88 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %92 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %97 = call i32 @fc_rport_enter_plogi(%struct.fc_rport_priv* %96)
  br label %102

98:                                               ; preds = %86
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %100 = load i32, i32* @RPORT_ST_PLOGI_WAIT, align 4
  %101 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %120, %102, %44
  %104 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %105 = call i32 @fc_frame_free(%struct.fc_frame* %104)
  br label %106

106:                                              ; preds = %103, %49, %43
  %107 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %108 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %107, i32 0, i32 4
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %25
  %111 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %112 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %111, i32 0, i32 3
  %113 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %114 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %113, i32 0, i32 2
  %115 = load %struct.fc_lport*, %struct.fc_lport** %114, align 8
  %116 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @kref_put(i32* %112, i32 %118)
  ret void

120:                                              ; preds = %70, %64, %58
  %121 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %122 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %124 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %125 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %123, %struct.fc_frame* %124)
  br label %103
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i64 @fc_rport_login_complete(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
