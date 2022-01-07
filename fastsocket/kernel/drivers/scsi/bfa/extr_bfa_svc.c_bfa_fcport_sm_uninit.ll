; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling_qwait = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabled = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_uninit(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %46 [
    i32 128, label %11
    i32 130, label %37
    i32 131, label %38
    i32 129, label %42
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @BFA_TRUE, align 4
  %13 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %16 = call i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFA_TRUE, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %25 = load i32, i32* @bfa_fcport_sm_enabling, align 4
  %26 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %24, i32 %25)
  br label %36

27:                                               ; preds = %11
  %28 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BFA_FALSE, align 4
  %32 = call i32 @bfa_trc(i32 %30, i32 %31)
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %34 = load i32, i32* @bfa_fcport_sm_enabling_qwait, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %52

37:                                               ; preds = %2
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %40 = load i32, i32* @bfa_fcport_sm_disabled, align 4
  %41 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %39, i32 %40)
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %44 = load i32, i32* @bfa_fcport_sm_iocdown, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %43, i32 %44)
  br label %52

46:                                               ; preds = %2
  %47 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bfa_sm_fault(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %42, %38, %37, %36
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
