; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_els_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_recv_els_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_seq_els_data = type { i32, i32 }
%struct.fc_rport_priv = type { i32, i32 }
%struct.fc_lport.0 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.fc_frame.1 = type { i32 }

@ELS_RJT_UNAB = common dso_local global i32 0, align 4
@ELS_EXPL_PLOGI_REQD = common dso_local global i32 0, align 4
@ELS_LS_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_rport_recv_els_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_recv_els_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca %struct.fc_seq_els_data, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport.0*, i32)** %13, align 8
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = bitcast %struct.fc_lport* %15 to %struct.fc_lport.0*
  %17 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %18 = call i32 @fc_frame_sid(%struct.fc_frame.1* %17)
  %19 = call %struct.fc_rport_priv* %14(%struct.fc_lport.0* %16, i32 %18)
  store %struct.fc_rport_priv* %19, %struct.fc_rport_priv** %5, align 8
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %21 = icmp ne %struct.fc_rport_priv* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %89

27:                                               ; preds = %2
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %36 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %39 [
    i32 130, label %38
    i32 128, label %38
    i32 129, label %38
    i32 131, label %38
  ]

38:                                               ; preds = %27, %27, %27, %27
  br label %43

39:                                               ; preds = %27
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %41 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %89

43:                                               ; preds = %38
  %44 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %45 = call i32 @fc_frame_payload_op(%struct.fc_frame.1* %44)
  switch i32 %45, label %82 [
    i32 136, label %46
    i32 135, label %50
    i32 137, label %54
    i32 132, label %58
    i32 134, label %68
    i32 133, label %78
  ]

46:                                               ; preds = %43
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %48 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %49 = call i32 @fc_rport_recv_prli_req(%struct.fc_rport_priv* %47, %struct.fc_frame.1* %48)
  br label %85

50:                                               ; preds = %43
  %51 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %52 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %53 = call i32 @fc_rport_recv_prlo_req(%struct.fc_rport_priv* %51, %struct.fc_frame.1* %52)
  br label %85

54:                                               ; preds = %43
  %55 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %56 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %57 = call i32 @fc_rport_recv_adisc_req(%struct.fc_rport_priv* %55, %struct.fc_frame.1* %56)
  br label %85

58:                                               ; preds = %43
  %59 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %61, align 8
  %63 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %64 = bitcast %struct.fc_frame.1* %63 to %struct.fc_frame*
  %65 = call i32 %62(%struct.fc_frame* %64, i32 132, %struct.fc_seq_els_data* null)
  %66 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %67 = call i32 @fc_frame_free(%struct.fc_frame.1* %66)
  br label %85

68:                                               ; preds = %43
  %69 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %70 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %71, align 8
  %73 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %74 = bitcast %struct.fc_frame.1* %73 to %struct.fc_frame*
  %75 = call i32 %72(%struct.fc_frame* %74, i32 134, %struct.fc_seq_els_data* null)
  %76 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %77 = call i32 @fc_frame_free(%struct.fc_frame.1* %76)
  br label %85

78:                                               ; preds = %43
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %80 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %81 = call i32 @fc_rport_recv_rls_req(%struct.fc_rport_priv* %79, %struct.fc_frame.1* %80)
  br label %85

82:                                               ; preds = %43
  %83 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %84 = call i32 @fc_frame_free(%struct.fc_frame.1* %83)
  br label %85

85:                                               ; preds = %82, %78, %68, %58, %54, %50, %46
  %86 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %87 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %104

89:                                               ; preds = %39, %22
  %90 = load i32, i32* @ELS_RJT_UNAB, align 4
  %91 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @ELS_EXPL_PLOGI_REQD, align 4
  %93 = getelementptr inbounds %struct.fc_seq_els_data, %struct.fc_seq_els_data* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %95 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)*, i32 (%struct.fc_frame*, i32, %struct.fc_seq_els_data*)** %96, align 8
  %98 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %99 = bitcast %struct.fc_frame.1* %98 to %struct.fc_frame*
  %100 = load i32, i32* @ELS_LS_RJT, align 4
  %101 = call i32 %97(%struct.fc_frame* %99, i32 %100, %struct.fc_seq_els_data* %6)
  %102 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %103 = call i32 @fc_frame_free(%struct.fc_frame.1* %102)
  br label %104

104:                                              ; preds = %89, %85
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.1*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_rport_recv_prli_req(%struct.fc_rport_priv*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_rport_recv_prlo_req(%struct.fc_rport_priv*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_rport_recv_adisc_req(%struct.fc_rport_priv*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_rport_recv_rls_req(%struct.fc_rport_priv*, %struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
