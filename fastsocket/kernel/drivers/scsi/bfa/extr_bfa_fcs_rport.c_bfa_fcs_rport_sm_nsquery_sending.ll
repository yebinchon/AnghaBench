; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsquery_sending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_nsquery_sending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_rport_sm_nsquery = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logosend = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logorcv = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_nsquery_sending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_nsquery_sending(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_3__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_3__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %72 [
    i32 133, label %25
    i32 135, label %29
    i32 134, label %43
    i32 131, label %44
    i32 128, label %44
    i32 132, label %58
    i32 129, label %58
    i32 136, label %58
    i32 130, label %58
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_rport_sm_nsquery, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %26, i32 %27)
  br label %78

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %31 = load i32, i32* @bfa_fcs_rport_sm_fc4_logosend, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %30, i32 %31)
  %33 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 3
  %40 = call i32 @bfa_fcxp_walloc_cancel(i32 %37, i32* %39)
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %42 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %41)
  br label %78

43:                                               ; preds = %2
  br label %78

44:                                               ; preds = %2, %2
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %46 = load i32, i32* @bfa_fcs_rport_sm_fc4_logorcv, align 4
  %47 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %45, i32 %46)
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %53, i32 0, i32 3
  %55 = call i32 @bfa_fcxp_walloc_cancel(i32 %52, i32* %54)
  %56 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %57 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %56)
  br label %78

58:                                               ; preds = %2, %2, %2, %2
  %59 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %60 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %61 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %59, i32 %60)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %67, i32 0, i32 3
  %69 = call i32 @bfa_fcxp_walloc_cancel(i32 %66, i32* %68)
  %70 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %71 = call i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s* %70)
  br label %78

72:                                               ; preds = %2
  %73 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %58, %44, %43, %29, %25
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcxp_walloc_cancel(i32, i32*) #1

declare dso_local i32 @bfa_fcs_rport_hal_offline_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
