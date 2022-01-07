; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_is_abortable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_is_abortable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_ioim_sm_uninit = common dso_local global i32 0, align 4
@bfa_ioim_sm_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_abort_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@bfa_ioim_sm_resfree = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioim_s*)* @bfa_ioim_is_abortable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioim_is_abortable(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioim_s*, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  %4 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %5 = load i32, i32* @bfa_ioim_sm_uninit, align 4
  %6 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %14 = call i32 @bfa_q_is_on_q(i32* %12, %struct.bfa_ioim_s* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %8, %1
  %17 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %18 = load i32, i32* @bfa_ioim_sm_abort, align 4
  %19 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = load i32, i32* @bfa_ioim_sm_abort_qfull, align 4
  %24 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %29 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %33 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %34 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = load i32, i32* @bfa_ioim_sm_resfree, align 4
  %39 = call i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31, %26, %21, %16, %8
  %42 = load i32, i32* @BFA_FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @BFA_TRUE, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @bfa_sm_cmp_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_ioim_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
