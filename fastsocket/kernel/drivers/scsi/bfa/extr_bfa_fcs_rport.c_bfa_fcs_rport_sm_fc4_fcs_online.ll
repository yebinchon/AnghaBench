; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_fc4_fcs_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_fc4_fcs_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BFA_RPORT_INITIATOR = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_hal_online = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logosend = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_offline = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_fc4_logorcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_fc4_fcs_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_fc4_fcs_online(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
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
  switch i32 %24, label %104 [
    i32 134, label %25
    i32 130, label %77
    i32 131, label %86
    i32 133, label %86
    i32 137, label %86
    i32 135, label %86
    i32 128, label %86
    i32 132, label %92
    i32 129, label %92
    i32 136, label %98
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BFA_RPORT_INITIATOR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BFA_FCS_PID_IS_WKA(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = call i32 @bfa_fcs_rpf_rport_online(%struct.bfa_fcs_rport_s* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %42 = load i32, i32* @bfa_fcs_rport_sm_online, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %41, i32 %42)
  br label %110

44:                                               ; preds = %25
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %56 = call i32 @bfa_rport_create(i32 %54, %struct.bfa_fcs_rport_s* %55)
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %66 = load i32, i32* @bfa_fcs_rport_sm_hal_online, align 4
  %67 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %65, i32 %66)
  %68 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %69 = call i32 @bfa_fcs_rport_hal_online(%struct.bfa_fcs_rport_s* %68)
  br label %76

70:                                               ; preds = %59
  %71 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %72 = load i32, i32* @bfa_fcs_rport_sm_fc4_logosend, align 4
  %73 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %71, i32 %72)
  %74 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %75 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %110

77:                                               ; preds = %2
  %78 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %79 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %78, i32 %79)
  %81 = load i32, i32* @BFA_TRUE, align 4
  %82 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %85 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %84)
  br label %110

86:                                               ; preds = %2, %2, %2, %2, %2
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %88 = load i32, i32* @bfa_fcs_rport_sm_fc4_offline, align 4
  %89 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %87, i32 %88)
  %90 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %91 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %90)
  br label %110

92:                                               ; preds = %2, %2
  %93 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %94 = load i32, i32* @bfa_fcs_rport_sm_fc4_logorcv, align 4
  %95 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %93, i32 %94)
  %96 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %97 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %96)
  br label %110

98:                                               ; preds = %2
  %99 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %100 = load i32, i32* @bfa_fcs_rport_sm_fc4_logosend, align 4
  %101 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %99, i32 %100)
  %102 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %103 = call i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s* %102)
  br label %110

104:                                              ; preds = %2
  %105 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %106 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %98, %92, %86, %77, %76, %40
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfa_fcs_rpf_rport_online(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_create(i32, %struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_hal_online(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_fcs_offline_action(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
