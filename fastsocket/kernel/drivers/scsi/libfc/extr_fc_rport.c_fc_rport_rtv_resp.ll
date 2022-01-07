; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_rtv_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_rtv_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fc_els_rtv_acc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Received a RTV %s\0A\00", align 1
@RPORT_ST_RTV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Received a RTV response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@FC_ELS_RTV_EDRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_rtv_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_rtv_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fc_els_rtv_acc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %13, %struct.fc_rport_priv** %7, align 8
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %15 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %14, i32 0, i32 5
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = call i32 @fc_els_resp_type(%struct.fc_frame* %18)
  %20 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RPORT_ST_RTV, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %29 = call i32 @fc_rport_state(%struct.fc_rport_priv* %28)
  %30 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %32 = call i64 @IS_ERR(%struct.fc_frame* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %97

35:                                               ; preds = %26
  br label %94

36:                                               ; preds = %3
  %37 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %38 = call i64 @IS_ERR(%struct.fc_frame* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %42 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %43 = call i32 @fc_rport_error(%struct.fc_rport_priv* %41, %struct.fc_frame* %42)
  br label %97

44:                                               ; preds = %36
  %45 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %46 = call i64 @fc_frame_payload_op(%struct.fc_frame* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @ELS_LS_ACC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %44
  %51 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %52 = call %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame* %51, i32 12)
  store %struct.fc_els_rtv_acc* %52, %struct.fc_els_rtv_acc** %9, align 8
  %53 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %54 = icmp ne %struct.fc_els_rtv_acc* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %50
  %56 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %57 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %61 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohl(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %70 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %72 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @FC_ELS_RTV_EDRES, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  %81 = sdiv i32 %80, 1000000
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %67
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %89 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %50
  br label %91

91:                                               ; preds = %90, %44
  %92 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %93 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %92)
  br label %94

94:                                               ; preds = %91, %35
  %95 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %96 = call i32 @fc_frame_free(%struct.fc_frame* %95)
  br label %97

97:                                               ; preds = %94, %40, %34
  %98 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %99 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %98, i32 0, i32 5
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %102 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %101, i32 0, i32 4
  %103 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %104 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @kref_put(i32* %102, i32 %108)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohl(i32) #1

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
