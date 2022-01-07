; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_reset_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i64 }
%struct.bfad_hal_comp = type { i64, i32 }

@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_port_reset_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfa_bsg_gen_s*, align 8
  %7 = alloca %struct.bfad_hal_comp, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %10, %struct.bfa_bsg_gen_s** %6, align 8
  %11 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 1
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @bfad_hcb_comp, align 4
  %22 = call i64 @bfa_port_clear_stats(i32* %20, i32 %21, %struct.bfad_hal_comp* %7)
  %23 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %30 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BFA_STATUS_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %36 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bfa_trc(%struct.bfad_s* %35, i64 %38)
  store i32 0, i32* %3, align 4
  br label %47

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 1
  %42 = call i32 @wait_for_completion(i32* %41)
  %43 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_port_clear_stats(i32*, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
