; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i32, i32 }

@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_cleanup(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %86 [
    i32 132, label %18
    i32 133, label %18
    i32 130, label %18
    i32 129, label %18
    i32 137, label %19
    i32 135, label %23
    i32 136, label %39
    i32 131, label %55
    i32 128, label %71
    i32 134, label %85
  ]

18:                                               ; preds = %2, %2, %2, %2
  br label %92

19:                                               ; preds = %2
  %20 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %21 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %25 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %26 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %24, i32 %25)
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %30, i32 0, i32 2
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = call i32 @bfa_cb_queue(i32 %29, i32* %31, i32 %34, %struct.bfa_ioim_s* %35)
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %37)
  br label %92

39:                                               ; preds = %2
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %41 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %40, i32 %41)
  %43 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %46, i32 0, i32 2
  %48 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %52 = call i32 @bfa_cb_queue(i32 %45, i32* %47, i32 %50, %struct.bfa_ioim_s* %51)
  %53 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %54 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %53)
  br label %92

55:                                               ; preds = %2
  %56 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %57 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %58 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %56, i32 %57)
  %59 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %62, i32 0, i32 2
  %64 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %68 = call i32 @bfa_cb_queue(i32 %61, i32* %63, i32 %66, %struct.bfa_ioim_s* %67)
  %69 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %70 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %69)
  br label %92

71:                                               ; preds = %2
  %72 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %73 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %74 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %72, i32 %73)
  %75 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %76 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %75)
  %77 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %80, i32 0, i32 2
  %82 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %83 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %84 = call i32 @bfa_cb_queue(i32 %79, i32* %81, i32 %82, %struct.bfa_ioim_s* %83)
  br label %92

85:                                               ; preds = %2
  br label %92

86:                                               ; preds = %2
  %87 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @bfa_sm_fault(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %85, %71, %55, %39, %23, %19, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
