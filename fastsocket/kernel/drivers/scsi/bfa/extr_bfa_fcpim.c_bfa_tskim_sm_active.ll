; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_tskim_sm_iocleanup = common dso_local global i32 0, align 4
@bfa_tskim_sm_cleanup = common dso_local global i32 0, align 4
@bfa_tskim_sm_cleanup_qfull = common dso_local global i32 0, align 4
@tm_qwait = common dso_local global i32 0, align 4
@bfa_tskim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_tskim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_tskim_s*, i32)* @bfa_tskim_sm_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_tskim_sm_active(%struct.bfa_tskim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_tskim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bfa_trc(i32 %7, i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %59 [
    i32 129, label %16
    i32 130, label %22
    i32 128, label %50
  ]

16:                                               ; preds = %2
  %17 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %18 = load i32, i32* @bfa_tskim_sm_iocleanup, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %17, i32 %18)
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %21 = call i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s* %20)
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %24 = load i32, i32* @bfa_tskim_sm_cleanup, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %23, i32 %24)
  %26 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %27 = call i32 @bfa_tskim_send_abort(%struct.bfa_tskim_s* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %30 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %31 = load i32, i32* @bfa_tskim_sm_cleanup_qfull, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %30, i32 %31)
  %33 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* @tm_qwait, align 4
  %37 = call i32 @bfa_stats(%struct.TYPE_2__* %35, i32 %36)
  %38 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %46, i32 0, i32 2
  %48 = call i32 @bfa_reqq_wait(i32 %40, i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %29, %22
  br label %65

50:                                               ; preds = %2
  %51 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %52 = load i32, i32* @bfa_tskim_sm_hcb, align 4
  %53 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %51, i32 %52)
  %54 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %55 = call i32 @bfa_tskim_iocdisable_ios(%struct.bfa_tskim_s* %54)
  %56 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %57 = load i32, i32* @__bfa_cb_tskim_failed, align 4
  %58 = call i32 @bfa_tskim_qcomp(%struct.bfa_tskim_s* %56, i32 %57)
  br label %65

59:                                               ; preds = %2
  %60 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bfa_sm_fault(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %50, %49, %16
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_tskim_send_abort(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_stats(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfa_tskim_iocdisable_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_tskim_qcomp(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
