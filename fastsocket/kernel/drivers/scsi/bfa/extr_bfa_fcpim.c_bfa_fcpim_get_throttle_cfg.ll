; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_get_throttle_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_get_throttle_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcp_mod_s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_fcpim_get_throttle_cfg(%struct.bfa_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcp_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %9 = call %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s* %8)
  store %struct.bfa_fcp_mod_s* %9, %struct.bfa_fcp_mod_s** %7, align 8
  %10 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %11 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %20 = call i64 @bfa_dconf_read_data_valid(%struct.bfa_s* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %24 = call i32 @bfa_fcpim_read_throttle(%struct.bfa_s* %23)
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s*) #1

declare dso_local i64 @bfa_dconf_read_data_valid(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcpim_read_throttle(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
