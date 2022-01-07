; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsdisc_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsdisc_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_rport_sm_plogi_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_nsdisc_sending = common dso_local global i32 0, align 4
@BFA_FCS_RPORT_MAX_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_del_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_uninit = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogiacc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_fcs_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_nsdisc_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_nsdisc_sent(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_3__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_3__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %142 [
    i32 137, label %25
    i32 136, label %25
    i32 133, label %45
    i32 135, label %84
    i32 129, label %94
    i32 132, label %104
    i32 128, label %125
    i32 134, label %128
    i32 131, label %129
    i32 130, label %132
  ]

25:                                               ; preds = %2, %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %32 = load i32, i32* @bfa_fcs_rport_sm_plogi_sending, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %31, i32 %32)
  %34 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %35 = call i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s* %34, i32* null)
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %38 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %39 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %37, i32 %38)
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %40, i32 0, i32 6
  store i32 0, i32* %41, align 8
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %43 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %42, i32* null)
  br label %44

44:                                               ; preds = %36, %30
  br label %148

45:                                               ; preds = %2
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BFA_FCS_RPORT_MAX_RETRIES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %57 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %58 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %56, i32 %57)
  %59 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %60 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %59, i32* null)
  br label %83

61:                                               ; preds = %45
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %70 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %71 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %69, i32 %70)
  %72 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %77, i32 0, i32 5
  %79 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %80 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %81 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %82 = call i32 @bfa_timer_start(i32 %76, i32* %78, i32 %79, %struct.bfa_fcs_rport_s* %80, i32 %81)
  br label %83

83:                                               ; preds = %61, %55
  br label %148

84:                                               ; preds = %2
  %85 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %86 = load i32, i32* @bfa_fcs_rport_sm_uninit, align 4
  %87 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %85, i32 %86)
  %88 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bfa_fcxp_discard(i32 %90)
  %92 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %93 = call i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s* %92)
  br label %148

94:                                               ; preds = %2
  %95 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %96 = load i32, i32* @bfa_fcs_rport_sm_plogiacc_sending, align 4
  %97 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %95, i32 %96)
  %98 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %99 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @bfa_fcxp_discard(i32 %100)
  %102 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %103 = call i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s* %102, i32* null)
  br label %148

104:                                              ; preds = %2
  %105 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %106 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %108 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %109 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %107, i32 %108)
  %110 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %111 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bfa_fcxp_discard(i32 %112)
  %114 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %115 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %120 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %119, i32 0, i32 5
  %121 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %122 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %123 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %124 = call i32 @bfa_timer_start(i32 %118, i32* %120, i32 %121, %struct.bfa_fcs_rport_s* %122, i32 %123)
  br label %148

125:                                              ; preds = %2
  %126 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %127 = call i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %126)
  br label %148

128:                                              ; preds = %2
  br label %148

129:                                              ; preds = %2
  %130 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %131 = call i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s* %130)
  br label %148

132:                                              ; preds = %2
  %133 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %134 = load i32, i32* @bfa_fcs_rport_sm_fc4_fcs_online, align 4
  %135 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %133, i32 %134)
  %136 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %137 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bfa_fcxp_discard(i32 %138)
  %140 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %141 = call i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s* %140)
  br label %148

142:                                              ; preds = %2
  %143 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %144 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %143, i32 0, i32 3
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %132, %129, %128, %125, %104, %94, %84, %83, %44
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
