; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_created.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_created.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32 }

@sm_cr_on = common dso_local global i32 0, align 4
@bfa_rport_sm_fwcreate = common dso_local global i32 0, align 4
@bfa_rport_sm_fwcreate_qfull = common dso_local global i32 0, align 4
@sm_cr_del = common dso_local global i32 0, align 4
@bfa_rport_sm_uninit = common dso_local global i32 0, align 4
@sm_cr_hwf = common dso_local global i32 0, align 4
@bfa_rport_sm_iocdisable = common dso_local global i32 0, align 4
@sm_cr_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_rport_s*, i32)* @bfa_rport_sm_created to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_rport_sm_created(%struct.bfa_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %50 [
    i32 128, label %18
    i32 130, label %34
    i32 129, label %43
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %20 = load i32, i32* @sm_cr_on, align 4
  %21 = call i32 @bfa_stats(%struct.bfa_rport_s* %19, i32 %20)
  %22 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %23 = call i32 @bfa_rport_send_fwcreate(%struct.bfa_rport_s* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %27 = load i32, i32* @bfa_rport_sm_fwcreate, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %26, i32 %27)
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %31 = load i32, i32* @bfa_rport_sm_fwcreate_qfull, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %59

34:                                               ; preds = %2
  %35 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %36 = load i32, i32* @sm_cr_del, align 4
  %37 = call i32 @bfa_stats(%struct.bfa_rport_s* %35, i32 %36)
  %38 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %39 = load i32, i32* @bfa_rport_sm_uninit, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %38, i32 %39)
  %41 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %42 = call i32 @bfa_rport_free(%struct.bfa_rport_s* %41)
  br label %59

43:                                               ; preds = %2
  %44 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %45 = load i32, i32* @sm_cr_hwf, align 4
  %46 = call i32 @bfa_stats(%struct.bfa_rport_s* %44, i32 %45)
  %47 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %48 = load i32, i32* @bfa_rport_sm_iocdisable, align 4
  %49 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %47, i32 %48)
  br label %59

50:                                               ; preds = %2
  %51 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %52 = load i32, i32* @sm_cr_unexp, align 4
  %53 = call i32 @bfa_stats(%struct.bfa_rport_s* %51, i32 %52)
  %54 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @bfa_sm_fault(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %43, %34, %33
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_send_fwcreate(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_free(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
