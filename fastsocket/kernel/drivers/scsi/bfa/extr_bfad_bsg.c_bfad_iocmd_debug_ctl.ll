; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_debug_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_debug_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i32 }

@IOCMD_DEBUG_FW_STATE_CLR = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCMD_DEBUG_PORTLOG_CLR = common dso_local global i32 0, align 4
@IOCMD_DEBUG_START_DTRC = common dso_local global i32 0, align 4
@IOCMD_DEBUG_STOP_DTRC = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_debug_ctl(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_gen_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %10, %struct.bfa_bsg_gen_s** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IOCMD_DEBUG_FW_STATE_CLR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @BFA_TRUE, align 4
  %20 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %60

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IOCMD_DEBUG_PORTLOG_CLR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %59

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IOCMD_DEBUG_START_DTRC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bfa_trc_init(i32 %46)
  br label %58

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @IOCMD_DEBUG_STOP_DTRC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bfa_trc_stop(i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %14
  %61 = load i32, i32* @BFA_STATUS_OK, align 4
  %62 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %63 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc_init(i32) #1

declare dso_local i32 @bfa_trc_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
