; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_adisc_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_adisc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.fc_els_adisc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Received a ADISC response\0A\00", align 1
@RPORT_ST_ADISC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Received a ADISC resp but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"ADISC error or mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ADISC OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_adisc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_adisc_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_els_adisc*, align 8
  %9 = alloca i64, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %11, %struct.fc_rport_priv** %7, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %16 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %18 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RPORT_ST_ADISC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %25 = call i32 @fc_rport_state(%struct.fc_rport_priv* %24)
  %26 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %28 = call i64 @IS_ERR(%struct.fc_frame* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %93

31:                                               ; preds = %22
  br label %90

32:                                               ; preds = %3
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call i64 @IS_ERR(%struct.fc_frame* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %38 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %39 = call i32 @fc_rport_error(%struct.fc_rport_priv* %37, %struct.fc_frame* %38)
  br label %93

40:                                               ; preds = %32
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i64 @fc_frame_payload_op(%struct.fc_frame* %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %44 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame* %43, i32 12)
  store %struct.fc_els_adisc* %44, %struct.fc_els_adisc** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ELS_LS_ACC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %79, label %48

48:                                               ; preds = %40
  %49 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %50 = icmp ne %struct.fc_els_adisc* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %53 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ntoh24(i32 %54)
  %56 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %57 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %79, label %61

61:                                               ; preds = %51
  %62 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %63 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %62, i32 0, i32 1
  %64 = call i64 @get_unaligned_be64(i32* %63)
  %65 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %66 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %61
  %71 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %72 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %71, i32 0, i32 0
  %73 = call i64 @get_unaligned_be64(i32* %72)
  %74 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %75 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70, %61, %51, %48, %40
  %80 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %81 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %83 = call i32 @fc_rport_enter_flogi(%struct.fc_rport_priv* %82)
  br label %89

84:                                               ; preds = %70
  %85 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %86 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %88 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %87)
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %31
  %91 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %92 = call i32 @fc_frame_free(%struct.fc_frame* %91)
  br label %93

93:                                               ; preds = %90, %36, %30
  %94 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %95 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 2
  %99 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %100 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @kref_put(i32* %98, i32 %104)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @fc_rport_enter_flogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_ready(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
