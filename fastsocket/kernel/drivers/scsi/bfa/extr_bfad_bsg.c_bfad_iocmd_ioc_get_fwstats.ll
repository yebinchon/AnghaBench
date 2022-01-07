; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_fwstats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_fwstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_bsg_ioc_fwstats_s = type { i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ioc_get_fwstats(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_ioc_fwstats_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_ioc_fwstats_s*
  store %struct.bfa_bsg_ioc_fwstats_s* %11, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @bfad_chk_iocmd_sz(i32 %12, i32 8, i32 4)
  %14 = load i64, i64* @BFA_STATUS_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %18 = load %struct.bfa_bsg_ioc_fwstats_s*, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %19 = getelementptr inbounds %struct.bfa_bsg_ioc_fwstats_s, %struct.bfa_bsg_ioc_fwstats_s* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.bfa_bsg_ioc_fwstats_s*, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %22 = bitcast %struct.bfa_bsg_ioc_fwstats_s* %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @bfa_ioc_fw_stats_get(i32* %30, i8* %31)
  %33 = load %struct.bfa_bsg_ioc_fwstats_s*, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_ioc_fwstats_s, %struct.bfa_bsg_ioc_fwstats_s* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.bfa_bsg_ioc_fwstats_s*, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %40 = getelementptr inbounds %struct.bfa_bsg_ioc_fwstats_s, %struct.bfa_bsg_ioc_fwstats_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BFA_STATUS_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %20
  %45 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %46 = load %struct.bfa_bsg_ioc_fwstats_s*, %struct.bfa_bsg_ioc_fwstats_s** %7, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_ioc_fwstats_s, %struct.bfa_bsg_ioc_fwstats_s* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @bfa_trc(%struct.bfad_s* %45, i32 %49)
  br label %52

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51, %44, %16
  %53 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %54 = call i32 @bfa_trc(%struct.bfad_s* %53, i32 26214)
  ret i32 0
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_ioc_fw_stats_get(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
