; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_cfg_bbcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_cfg_bbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_bbcr_enable_s = type { i32, i32 }

@IOCMD_PORT_BBCR_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCMD_PORT_BBCR_DISABLE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_port_cfg_bbcr(%struct.bfad_s* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bfa_bsg_bbcr_enable_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.bfa_bsg_bbcr_enable_s*
  store %struct.bfa_bsg_bbcr_enable_s* %12, %struct.bfa_bsg_bbcr_enable_s** %8, align 8
  %13 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IOCMD_PORT_BBCR_ENABLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %21, i32 0, i32 1
  %23 = load i32, i32* @BFA_TRUE, align 4
  %24 = load %struct.bfa_bsg_bbcr_enable_s*, %struct.bfa_bsg_bbcr_enable_s** %8, align 8
  %25 = getelementptr inbounds %struct.bfa_bsg_bbcr_enable_s, %struct.bfa_bsg_bbcr_enable_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_fcport_cfg_bbcr(i32* %22, i32 %23, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IOCMD_PORT_BBCR_DISABLE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 1
  %35 = load i32, i32* @BFA_FALSE, align 4
  %36 = call i32 @bfa_fcport_cfg_bbcr(i32* %34, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  br label %44

37:                                               ; preds = %28
  %38 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.bfa_bsg_bbcr_enable_s*, %struct.bfa_bsg_bbcr_enable_s** %8, align 8
  %52 = getelementptr inbounds %struct.bfa_bsg_bbcr_enable_s, %struct.bfa_bsg_bbcr_enable_s* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcport_cfg_bbcr(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
