; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fcpim_cfg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_fcpim_profile_s = type { i32 }
%struct.timeval = type { i32 }

@IOCMD_FCPIM_PROFILE_ON = common dso_local global i32 0, align 4
@IOCMD_FCPIM_PROFILE_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_fcpim_cfg_profile(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_fcpim_profile_s*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_fcpim_profile_s*
  store %struct.bfa_bsg_fcpim_profile_s* %11, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %12 = call i32 @do_gettimeofday(%struct.timeval* %8)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IOCMD_FCPIM_PROFILE_ON, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_fcpim_profile_on(i32* %22, i32 %24)
  %26 = load %struct.bfa_bsg_fcpim_profile_s*, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_fcpim_profile_s, %struct.bfa_bsg_fcpim_profile_s* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IOCMD_FCPIM_PROFILE_OFF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 1
  %35 = call i32 @bfa_fcpim_profile_off(i32* %34)
  %36 = load %struct.bfa_bsg_fcpim_profile_s*, %struct.bfa_bsg_fcpim_profile_s** %7, align 8
  %37 = getelementptr inbounds %struct.bfa_bsg_fcpim_profile_s, %struct.bfa_bsg_fcpim_profile_s* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcpim_profile_on(i32*, i32) #1

declare dso_local i32 @bfa_fcpim_profile_off(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
