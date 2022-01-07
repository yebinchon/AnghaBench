; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFI_DPORT_ENABLE = common dso_local global i32 0, align 4
@bfa_dport_sm_enabling = common dso_local global i32 0, align 4
@bfa_dport_sm_enabling_qwait = common dso_local global i32 0, align 4
@BFI_DPORT_SCN_DDPORT_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_DPORT_ST_NOTSTART = common dso_local global i32 0, align 4
@bfa_dport_sm_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, i32)* @bfa_dport_sm_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_sm_disabled(%struct.bfa_dport_s* %0, i32 %1) #0 {
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
  switch i32 %10, label %65 [
    i32 130, label %11
    i32 131, label %29
    i32 129, label %30
    i32 128, label %31
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_fcport_dportenable(i32 %14)
  %16 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %17 = load i32, i32* @BFI_DPORT_ENABLE, align 4
  %18 = call i32 @bfa_dport_send_req(%struct.bfa_dport_s* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %22 = load i32, i32* @bfa_dport_sm_enabling, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %21, i32 %22)
  br label %28

24:                                               ; preds = %11
  %25 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %26 = load i32, i32* @bfa_dport_sm_enabling_qwait, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %71

29:                                               ; preds = %2
  br label %71

30:                                               ; preds = %2
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BFI_DPORT_SCN_DDPORT_ENABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bfa_fcport_ddportenable(i32 %42)
  %44 = load i32, i32* @BFA_TRUE, align 4
  %45 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BFA_DPORT_ST_NOTSTART, align 4
  %48 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %51 = load i32, i32* @bfa_dport_sm_enabled, align 4
  %52 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %50, i32 %51)
  br label %64

53:                                               ; preds = %31
  %54 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bfa_trc(i32 %56, i32 %61)
  %63 = call i32 @WARN_ON(i32 1)
  br label %64

64:                                               ; preds = %53, %39
  br label %71

65:                                               ; preds = %2
  %66 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @bfa_sm_fault(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %64, %30, %29, %28
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcport_dportenable(i32) #1

declare dso_local i32 @bfa_dport_send_req(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_fcport_ddportenable(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
