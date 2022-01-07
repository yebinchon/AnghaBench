; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_cmnd_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_cmnd_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@bfa_ioim_sm_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_active = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup_qfull = common dso_local global i32 0, align 4
@qwait = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_cmnd_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_cmnd_retry(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %83 [
    i32 129, label %6
    i32 130, label %20
    i32 128, label %57
    i32 131, label %71
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %8 = call i32 @bfa_ioim_update_iotag(%struct.bfa_ioim_s* %7)
  %9 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %10 = call i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %14 = load i32, i32* @bfa_ioim_sm_qfull, align 4
  %15 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %13, i32 %14)
  br label %89

16:                                               ; preds = %6
  %17 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %18 = load i32, i32* @bfa_ioim_sm_active, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %17, i32 %18)
  br label %89

20:                                               ; preds = %2
  %21 = load i32, i32* @BFA_FALSE, align 4
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %30 = call i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %34 = load i32, i32* @bfa_ioim_sm_cleanup, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %33, i32 %34)
  br label %56

36:                                               ; preds = %20
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = load i32, i32* @bfa_ioim_sm_cleanup_qfull, align 4
  %39 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %37, i32 %38)
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @qwait, align 4
  %44 = call i32 @bfa_stats(i32 %42, i32 %43)
  %45 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @bfa_reqq_wait(i32 %47, i32 %50, i32* %54)
  br label %56

56:                                               ; preds = %36, %32
  br label %89

57:                                               ; preds = %2
  %58 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %59 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %60 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %58, i32 %59)
  %61 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %62 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %61)
  %63 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %66, i32 0, i32 1
  %68 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %69 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %70 = call i32 @bfa_cb_queue(i32 %65, i32* %67, i32 %68, %struct.bfa_ioim_s* %69)
  br label %89

71:                                               ; preds = %2
  %72 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %73 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %74 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %72, i32 %73)
  %75 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %78, i32 0, i32 1
  %80 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %81 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %82 = call i32 @bfa_cb_queue(i32 %77, i32* %79, i32 %80, %struct.bfa_ioim_s* %81)
  br label %89

83:                                               ; preds = %2
  %84 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %85 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @bfa_sm_fault(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %71, %57, %56, %16, %12
  ret void
}

declare dso_local i32 @bfa_ioim_update_iotag(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
