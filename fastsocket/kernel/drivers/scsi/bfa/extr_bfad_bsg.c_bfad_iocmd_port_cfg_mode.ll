; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_cfg_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_cfg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_bsg_port_cfg_mode_s = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_port_cfg_mode(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_port_cfg_mode_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_port_cfg_mode_s*
  store %struct.bfa_bsg_port_cfg_mode_s* %9, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @bfad_hcb_comp, align 4
  %36 = call i64 @bfa_ablk_port_config(i32* %19, i32 %22, i32 %26, i32 %30, i32 %34, i32 %35, %struct.bfad_hal_comp* %6)
  %37 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BFA_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  br label %56

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bfa_bsg_port_cfg_mode_s*, %struct.bfa_bsg_port_cfg_mode_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_port_cfg_mode_s, %struct.bfa_bsg_port_cfg_mode_s* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %48
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_ablk_port_config(i32*, i32, i32, i32, i32, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
