; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFI_DPORT_START = common dso_local global i32 0, align 4
@bfa_dport_sm_starting = common dso_local global i32 0, align 4
@bfa_dport_sm_starting_qwait = common dso_local global i32 0, align 4
@BFI_DPORT_DISABLE = common dso_local global i32 0, align 4
@bfa_dport_sm_disabling = common dso_local global i32 0, align 4
@bfa_dport_sm_disabling_qwait = common dso_local global i32 0, align 4
@bfa_dport_sm_disabled = common dso_local global i32 0, align 4
@BFA_DPORT_ST_COMP = common dso_local global i32 0, align 4
@BFA_DPORT_ST_INP = common dso_local global i32 0, align 4
@BFA_DPORT_ST_NO_SFP = common dso_local global i32 0, align 4
@BFI_DPORT_DYN_DISABLE = common dso_local global i32 0, align 4
@bfa_dport_sm_dynamic_disabling = common dso_local global i32 0, align 4
@bfa_dport_sm_dynamic_disabling_qwait = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, i32)* @bfa_dport_sm_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_sm_enabled(%struct.bfa_dport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %111 [
    i32 135, label %11
    i32 138, label %25
    i32 137, label %43
    i32 136, label %47
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %13 = load i32, i32* @BFI_DPORT_START, align 4
  %14 = call i32 @bfa_dport_send_req(%struct.bfa_dport_s* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %18 = load i32, i32* @bfa_dport_sm_starting, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %17, i32 %18)
  br label %24

20:                                               ; preds = %11
  %21 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %22 = load i32, i32* @bfa_dport_sm_starting_qwait, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_fcport_dportdisable(i32 %28)
  %30 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %31 = load i32, i32* @BFI_DPORT_DISABLE, align 4
  %32 = call i32 @bfa_dport_send_req(%struct.bfa_dport_s* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %36 = load i32, i32* @bfa_dport_sm_disabling, align 4
  %37 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %35, i32 %36)
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %40 = load i32, i32* @bfa_dport_sm_disabling_qwait, align 4
  %41 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %117

43:                                               ; preds = %2
  %44 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %45 = load i32, i32* @bfa_dport_sm_disabled, align 4
  %46 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %44, i32 %45)
  br label %117

47:                                               ; preds = %2
  %48 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %95 [
    i32 130, label %53
    i32 128, label %57
    i32 129, label %61
    i32 131, label %61
    i32 132, label %62
    i32 134, label %66
    i32 133, label %84
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* @BFA_DPORT_ST_COMP, align 4
  %55 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %110

57:                                               ; preds = %47
  %58 = load i32, i32* @BFA_DPORT_ST_INP, align 4
  %59 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %110

61:                                               ; preds = %47, %47
  br label %110

62:                                               ; preds = %47
  %63 = load i32, i32* @BFA_DPORT_ST_NO_SFP, align 4
  %64 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %110

66:                                               ; preds = %47
  %67 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bfa_fcport_ddportdisable(i32 %69)
  %71 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %72 = load i32, i32* @BFI_DPORT_DYN_DISABLE, align 4
  %73 = call i32 @bfa_dport_send_req(%struct.bfa_dport_s* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %77 = load i32, i32* @bfa_dport_sm_dynamic_disabling, align 4
  %78 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %76, i32 %77)
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %81 = load i32, i32* @bfa_dport_sm_dynamic_disabling_qwait, align 4
  %82 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %110

84:                                               ; preds = %47
  %85 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bfa_fcport_ddportdisable(i32 %87)
  %89 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %90 = load i32, i32* @bfa_dport_sm_disabled, align 4
  %91 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %89, i32 %90)
  %92 = load i32, i32* @BFA_FALSE, align 4
  %93 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %94 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %110

95:                                               ; preds = %47
  %96 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %100 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bfa_trc(i32 %98, i32 %103)
  %105 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %106 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @bfa_sm_fault(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %95, %84, %83, %62, %61, %57, %53
  br label %117

111:                                              ; preds = %2
  %112 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %113 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @bfa_sm_fault(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %110, %43, %42, %24
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_dport_send_req(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_fcport_dportdisable(i32) #1

declare dso_local i32 @bfa_fcport_ddportdisable(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
