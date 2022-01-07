; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_debug_fw_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_debug_fw_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_bsg_debug_s = type { i64, i64, i32 }

@BFA_DEBUG_FW_CORE_CHUNK_SZ = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i32 0, align 4
@BFA_STATUS_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_debug_fw_core(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_bsg_debug_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_debug_s*
  store %struct.bfa_bsg_debug_s* %13, %struct.bfa_bsg_debug_s** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* @BFA_DEBUG_FW_CORE_CHUNK_SZ, align 8
  %16 = call i64 @bfad_chk_iocmd_sz(i32 %14, i32 24, i64 %15)
  %17 = load i64, i64* @BFA_STATUS_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @BFA_STATUS_VERSION_FAIL, align 4
  %21 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  %24 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %25 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BFA_DEBUG_FW_CORE_CHUNK_SZ, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %31 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IS_ALIGNED(i64 %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %37 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @IS_ALIGNED(i64 %38, i32 8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %35, %29, %23
  %42 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %43 = load i64, i64* @BFA_DEBUG_FW_CORE_CHUNK_SZ, align 8
  %44 = call i32 @bfa_trc(%struct.bfad_s* %42, i64 %43)
  %45 = load i32, i32* @BFA_STATUS_EINVAL, align 4
  %46 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %75

48:                                               ; preds = %35
  %49 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %50 = bitcast %struct.bfa_bsg_debug_s* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 24
  store i8* %51, i8** %9, align 8
  %52 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %52, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %57 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %64 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %63, i32 0, i32 0
  %65 = call i32 @bfa_ioc_debug_fwcore(i32* %61, i8* %62, i64* %11, i64* %64)
  %66 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %67 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.bfa_bsg_debug_s*, %struct.bfa_bsg_debug_s** %8, align 8
  %70 = getelementptr inbounds %struct.bfa_bsg_debug_s, %struct.bfa_bsg_debug_s* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %71, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %48, %41
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_ioc_debug_fwcore(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
