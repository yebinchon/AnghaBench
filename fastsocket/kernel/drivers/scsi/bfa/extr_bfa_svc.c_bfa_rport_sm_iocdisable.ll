; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_iocdisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_iocdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32 }

@sm_iocd_off = common dso_local global i32 0, align 4
@sm_iocd_del = common dso_local global i32 0, align 4
@bfa_rport_sm_uninit = common dso_local global i32 0, align 4
@sm_iocd_on = common dso_local global i32 0, align 4
@bfa_rport_sm_fwcreate = common dso_local global i32 0, align 4
@bfa_rport_sm_fwcreate_qfull = common dso_local global i32 0, align 4
@sm_iocd_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_rport_s*, i32)* @bfa_rport_sm_iocdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_rport_sm_iocdisable(%struct.bfa_rport_s* %0, i32 %1) #0 {
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
    i32 129, label %18
    i32 131, label %24
    i32 128, label %33
    i32 130, label %49
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %20 = load i32, i32* @sm_iocd_off, align 4
  %21 = call i32 @bfa_stats(%struct.bfa_rport_s* %19, i32 %20)
  %22 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %23 = call i32 @bfa_rport_offline_cb(%struct.bfa_rport_s* %22)
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %26 = load i32, i32* @sm_iocd_del, align 4
  %27 = call i32 @bfa_stats(%struct.bfa_rport_s* %25, i32 %26)
  %28 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %29 = load i32, i32* @bfa_rport_sm_uninit, align 4
  %30 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %28, i32 %29)
  %31 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %32 = call i32 @bfa_rport_free(%struct.bfa_rport_s* %31)
  br label %59

33:                                               ; preds = %2
  %34 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %35 = load i32, i32* @sm_iocd_on, align 4
  %36 = call i32 @bfa_stats(%struct.bfa_rport_s* %34, i32 %35)
  %37 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %38 = call i32 @bfa_rport_send_fwcreate(%struct.bfa_rport_s* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %42 = load i32, i32* @bfa_rport_sm_fwcreate, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %41, i32 %42)
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %46 = load i32, i32* @bfa_rport_sm_fwcreate_qfull, align 4
  %47 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %59

49:                                               ; preds = %2
  br label %59

50:                                               ; preds = %2
  %51 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %52 = load i32, i32* @sm_iocd_unexp, align 4
  %53 = call i32 @bfa_stats(%struct.bfa_rport_s* %51, i32 %52)
  %54 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @bfa_sm_fault(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %49, %48, %24, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_offline_cb(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_free(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_rport_send_fwcreate(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
