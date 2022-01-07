; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_itnim_sm_cleanup_offline = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i8* null, align 8
@bfa_itnim_sm_cleanup_delete = common dso_local global i32 0, align 4
@bfa_itnim_sm_sler = common dso_local global i32 0, align 4
@bfa_itnim_sm_iocdisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*, i32)* @bfa_itnim_sm_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_sm_online(%struct.bfa_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 2
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
  switch i32 %19, label %62 [
    i32 129, label %20
    i32 131, label %31
    i32 128, label %40
    i32 130, label %51
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %22 = load i32, i32* @bfa_itnim_sm_cleanup_offline, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %21, i32 %22)
  %24 = load i8*, i8** @BFA_FALSE, align 8
  %25 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %28 = call i32 @bfa_itnim_iotov_start(%struct.bfa_itnim_s* %27)
  %29 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %30 = call i32 @bfa_itnim_cleanup(%struct.bfa_itnim_s* %29)
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %33 = load i32, i32* @bfa_itnim_sm_cleanup_delete, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %32, i32 %33)
  %35 = load i8*, i8** @BFA_FALSE, align 8
  %36 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %39 = call i32 @bfa_itnim_cleanup(%struct.bfa_itnim_s* %38)
  br label %68

40:                                               ; preds = %2
  %41 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %42 = load i32, i32* @bfa_itnim_sm_sler, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %41, i32 %42)
  %44 = load i8*, i8** @BFA_FALSE, align 8
  %45 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %48 = call i32 @bfa_itnim_iotov_start(%struct.bfa_itnim_s* %47)
  %49 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %50 = call i32 @bfa_itnim_sler_cb(%struct.bfa_itnim_s* %49)
  br label %68

51:                                               ; preds = %2
  %52 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %53 = load i32, i32* @bfa_itnim_sm_iocdisable, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %52, i32 %53)
  %55 = load i8*, i8** @BFA_FALSE, align 8
  %56 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %59 = call i32 @bfa_itnim_iotov_start(%struct.bfa_itnim_s* %58)
  %60 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %61 = call i32 @bfa_itnim_iocdisable_cleanup(%struct.bfa_itnim_s* %60)
  br label %68

62:                                               ; preds = %2
  %63 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @bfa_sm_fault(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %51, %40, %31, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_itnim_iotov_start(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_cleanup(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_sler_cb(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_iocdisable_cleanup(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
