; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_flash_update_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_flash_update_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_flash_s = type { i64, i32, i32, i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8
@bfad_hcb_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_flash_update_part(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_bsg_flash_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bfad_hal_comp, align 8
  %11 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_flash_s*
  store %struct.bfa_bsg_flash_s* %13, %struct.bfa_bsg_flash_s** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %16 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @bfad_chk_iocmd_sz(i32 %14, i32 24, i32 %17)
  %19 = load i64, i64* @BFA_STATUS_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %23 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %27 = bitcast %struct.bfa_bsg_flash_s* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 24
  store i8* %28, i8** %9, align 8
  %29 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %10, i32 0, i32 1
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 1
  %37 = call i32 @BFA_FLASH(i32* %36)
  %38 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %39 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %42 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %46 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @bfad_hcb_comp, align 4
  %49 = call i64 @bfa_flash_update_part(i32 %37, i32 %40, i32 %43, i8* %44, i32 %47, i32 0, i32 %48, %struct.bfad_hal_comp* %10)
  %50 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %51 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %52, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %57 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BFA_STATUS_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %25
  br label %69

62:                                               ; preds = %25
  %63 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %10, i32 0, i32 1
  %64 = call i32 @wait_for_completion(i32* %63)
  %65 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bfa_bsg_flash_s*, %struct.bfa_bsg_flash_s** %8, align 8
  %68 = getelementptr inbounds %struct.bfa_bsg_flash_s, %struct.bfa_bsg_flash_s* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %61
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_flash_update_part(i32, i32, i32, i8*, i32, i32, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @BFA_FLASH(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
