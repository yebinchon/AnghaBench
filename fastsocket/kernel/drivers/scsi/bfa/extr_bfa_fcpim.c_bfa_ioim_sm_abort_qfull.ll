; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_abort_qfull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_abort_qfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@bfa_ioim_sm_abort = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_abort_qfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_abort_qfull(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %99 [
    i32 128, label %18
    i32 133, label %24
    i32 131, label %42
    i32 132, label %42
    i32 130, label %61
    i32 129, label %80
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = load i32, i32* @bfa_ioim_sm_abort, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %19, i32 %20)
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = call i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %22)
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BFA_TRUE, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i32, i32* @BFA_FALSE, align 4
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %40 = load i32, i32* @bfa_ioim_sm_cleanup_qfull, align 4
  %41 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %39, i32 %40)
  br label %105

42:                                               ; preds = %2, %2
  %43 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %44 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %43, i32 %44)
  %46 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @bfa_reqq_wcancel(i32* %49)
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %52 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %51)
  %53 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %56, i32 0, i32 2
  %58 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %59 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %60 = call i32 @bfa_cb_queue(i32 %55, i32* %57, i32 %58, %struct.bfa_ioim_s* %59)
  br label %105

61:                                               ; preds = %2
  %62 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %63 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %64 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %62, i32 %63)
  %65 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @bfa_reqq_wcancel(i32* %68)
  %70 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %71 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %70)
  %72 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %75, i32 0, i32 2
  %77 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %78 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %79 = call i32 @bfa_cb_queue(i32 %74, i32* %76, i32 %77, %struct.bfa_ioim_s* %78)
  br label %105

80:                                               ; preds = %2
  %81 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %82 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %83 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %81, i32 %82)
  %84 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %85 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @bfa_reqq_wcancel(i32* %87)
  %89 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %90 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %89)
  %91 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %95 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %94, i32 0, i32 2
  %96 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %97 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %98 = call i32 @bfa_cb_queue(i32 %93, i32* %95, i32 %96, %struct.bfa_ioim_s* %97)
  br label %105

99:                                               ; preds = %2
  %100 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %101 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @bfa_sm_fault(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %80, %61, %42, %24, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
