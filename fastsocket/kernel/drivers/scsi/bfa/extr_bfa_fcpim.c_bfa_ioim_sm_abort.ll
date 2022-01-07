; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup_qfull = common dso_local global i32 0, align 4
@qwait = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_abort(%struct.bfa_ioim_s* %0, i32 %1) #0 {
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
  switch i32 %17, label %116 [
    i32 132, label %18
    i32 133, label %18
    i32 130, label %18
    i32 129, label %18
    i32 135, label %19
    i32 136, label %31
    i32 131, label %45
    i32 134, label %59
    i32 128, label %102
  ]

18:                                               ; preds = %2, %2, %2, %2
  br label %122

19:                                               ; preds = %2
  %20 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %21 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %22 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %20, i32 %21)
  %23 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %26, i32 0, i32 2
  %28 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %29 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %30 = call i32 @bfa_cb_queue(i32 %25, i32* %27, i32 %28, %struct.bfa_ioim_s* %29)
  br label %122

31:                                               ; preds = %2
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %33 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %32, i32 %33)
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %35)
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %40, i32 0, i32 2
  %42 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %43 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %44 = call i32 @bfa_cb_queue(i32 %39, i32* %41, i32 %42, %struct.bfa_ioim_s* %43)
  br label %122

45:                                               ; preds = %2
  %46 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %47 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %48 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %46, i32 %47)
  %49 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %50 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %49)
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %54, i32 0, i32 2
  %56 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %57 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %58 = call i32 @bfa_cb_queue(i32 %53, i32* %55, i32 %56, %struct.bfa_ioim_s* %57)
  br label %122

59:                                               ; preds = %2
  %60 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BFA_TRUE, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load i32, i32* @BFA_FALSE, align 4
  %70 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %75 = call i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %59
  %78 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %79 = load i32, i32* @bfa_ioim_sm_cleanup, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %78, i32 %79)
  br label %101

81:                                               ; preds = %59
  %82 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %83 = load i32, i32* @bfa_ioim_sm_cleanup_qfull, align 4
  %84 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %82, i32 %83)
  %85 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @qwait, align 4
  %89 = call i32 @bfa_stats(i32 %87, i32 %88)
  %90 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %91 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %94 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %97 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @bfa_reqq_wait(i32 %92, i32 %95, i32* %99)
  br label %101

101:                                              ; preds = %81, %77
  br label %122

102:                                              ; preds = %2
  %103 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %104 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %105 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %103, i32 %104)
  %106 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %107 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %106)
  %108 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %109 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %112 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %111, i32 0, i32 2
  %113 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %114 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %115 = call i32 @bfa_cb_queue(i32 %110, i32* %112, i32 %113, %struct.bfa_ioim_s* %114)
  br label %122

116:                                              ; preds = %2
  %117 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %118 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @bfa_sm_fault(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %102, %101, %45, %31, %19, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
