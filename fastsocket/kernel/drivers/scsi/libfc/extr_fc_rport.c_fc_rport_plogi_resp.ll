; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_plogi_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_plogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, %struct.fc_lport*, i32, i32, i32, i64, i8*, %struct.TYPE_5__ }
%struct.fc_lport = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.fc_els_flogi = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Received a PLOGI %s\0A\00", align 1
@RPORT_ST_PLOGI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Received a PLOGI response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_plogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_plogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_els_flogi*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %14, %struct.fc_rport_priv** %7, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %16 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %15, i32 0, i32 1
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %8, align 8
  store %struct.fc_els_flogi* null, %struct.fc_els_flogi** %9, align 8
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %19 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i32 @fc_els_resp_type(%struct.fc_frame* %22)
  %24 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %26 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RPORT_ST_PLOGI, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %33 = call i32 @fc_rport_state(%struct.fc_rport_priv* %32)
  %34 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %36 = call i64 @IS_ERR(%struct.fc_frame* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %127

39:                                               ; preds = %30
  br label %124

40:                                               ; preds = %3
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i64 @IS_ERR(%struct.fc_frame* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %45, %struct.fc_frame* %46)
  br label %127

48:                                               ; preds = %40
  %49 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %50 = call i64 @fc_frame_payload_op(%struct.fc_frame* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @ELS_LS_ACC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %119

54:                                               ; preds = %48
  %55 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %56 = call %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame* %55, i32 24)
  store %struct.fc_els_flogi* %56, %struct.fc_els_flogi** %9, align 8
  %57 = icmp ne %struct.fc_els_flogi* %56, null
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %60 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %59, i32 0, i32 3
  %61 = call i8* @get_unaligned_be64(i32* %60)
  %62 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %63 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %66 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %65, i32 0, i32 2
  %67 = call i8* @get_unaligned_be64(i32* %66)
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %69 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %72 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @ntohs(i32 %74)
  %76 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %77 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %79 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %58
  %83 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %84 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %85 = call i32 @fc_rport_login_complete(%struct.fc_rport_priv* %83, %struct.fc_frame* %84)
  br label %86

86:                                               ; preds = %82, %58
  %87 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %88 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @ntohs(i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %10, align 8
  %93 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %94 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @ntohs(i32 %98)
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %86
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %109 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  %110 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %111 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %112 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi* %110, i32 %113)
  %115 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %116 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %118 = call i32 @fc_rport_enter_prli(%struct.fc_rport_priv* %117)
  br label %123

119:                                              ; preds = %54, %48
  %120 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %121 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %122 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %120, %struct.fc_frame* %121)
  br label %123

123:                                              ; preds = %119, %106
  br label %124

124:                                              ; preds = %123, %39
  %125 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %126 = call i32 @fc_frame_free(%struct.fc_frame* %125)
  br label %127

127:                                              ; preds = %124, %44, %38
  %128 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %129 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %128, i32 0, i32 3
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %132 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %131, i32 0, i32 2
  %133 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %134 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %133, i32 0, i32 1
  %135 = load %struct.fc_lport*, %struct.fc_lport** %134, align 8
  %136 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @kref_put(i32* %132, i32 %138)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_flogi* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i8* @get_unaligned_be64(i32*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @fc_rport_login_complete(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @fc_plogi_get_maxframe(%struct.fc_els_flogi*, i32) #1

declare dso_local i32 @fc_rport_enter_prli(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
