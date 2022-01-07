; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_read_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_read_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_throttle_cfg_s = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfa_throttle_cfg_s }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_fcpim_read_throttle(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_throttle_cfg_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %4 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %5 = call %struct.TYPE_4__* @BFA_DCONF_MOD(%struct.bfa_s* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.bfa_throttle_cfg_s* %8, %struct.bfa_throttle_cfg_s** %3, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %10 = call i32 @bfa_dconf_get_min_cfg(%struct.bfa_s* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.bfa_throttle_cfg_s*, %struct.bfa_throttle_cfg_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_throttle_cfg_s, %struct.bfa_throttle_cfg_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.bfa_throttle_cfg_s*, %struct.bfa_throttle_cfg_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_throttle_cfg_s, %struct.bfa_throttle_cfg_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  ret i32 %26
}

declare dso_local %struct.TYPE_4__* @BFA_DCONF_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_dconf_get_min_cfg(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
