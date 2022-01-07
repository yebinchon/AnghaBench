; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_itnim_sm_uninit = common dso_local global i32 0, align 4
@bfa_itnim_sm_fwcreate = common dso_local global i32 0, align 4
@bfa_itnim_sm_fwcreate_qfull = common dso_local global i32 0, align 4
@bfa_itnim_sm_iocdisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*, i32)* @bfa_itnim_sm_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_sm_offline(%struct.bfa_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %45 [
    i32 130, label %20
    i32 128, label %28
    i32 129, label %41
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %22 = load i32, i32* @bfa_itnim_sm_uninit, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %21, i32 %22)
  %24 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %25 = call i32 @bfa_itnim_iotov_delete(%struct.bfa_itnim_s* %24)
  %26 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %27 = call i32 @bfa_fcpim_delitn(%struct.bfa_itnim_s* %26)
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %30 = call i32 @bfa_itnim_send_fwcreate(%struct.bfa_itnim_s* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %34 = load i32, i32* @bfa_itnim_sm_fwcreate, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %33, i32 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %38 = load i32, i32* @bfa_itnim_sm_fwcreate_qfull, align 4
  %39 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %43 = load i32, i32* @bfa_itnim_sm_iocdisable, align 4
  %44 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %42, i32 %43)
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_sm_fault(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %41, %40, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_itnim_iotov_delete(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_fcpim_delitn(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_send_fwcreate(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
