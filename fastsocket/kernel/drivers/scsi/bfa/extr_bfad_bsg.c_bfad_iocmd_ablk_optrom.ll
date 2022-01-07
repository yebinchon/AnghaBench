; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ablk_optrom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ablk_optrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i64 }
%struct.bfad_hal_comp = type { i64, i32 }

@IOCMD_FLASH_ENABLE_OPTROM = common dso_local global i32 0, align 4
@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ablk_optrom(%struct.bfad_s* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_bsg_gen_s*, align 8
  %8 = alloca %struct.bfad_hal_comp, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %11, %struct.bfa_bsg_gen_s** %7, align 8
  %12 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %8, i32 0, i32 1
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IOCMD_FLASH_ENABLE_OPTROM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* @bfad_hcb_comp, align 4
  %27 = call i64 @bfa_ablk_optrom_en(i32* %25, i32 %26, %struct.bfad_hal_comp* %8)
  %28 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %29 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %39

30:                                               ; preds = %3
  %31 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @bfad_hcb_comp, align 4
  %36 = call i64 @bfa_ablk_optrom_dis(i32* %34, i32 %35, %struct.bfad_hal_comp* %8)
  %37 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %45 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BFA_STATUS_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %57

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %8, i32 0, i32 1
  %52 = call i32 @wait_for_completion(i32* %51)
  %53 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %56 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %49
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_ablk_optrom_en(i32*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i64 @bfa_ablk_optrom_dis(i32*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
