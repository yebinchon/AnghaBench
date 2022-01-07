; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FNIC_INTX_NOTIFY = common dso_local global i32 0, align 4
@FNIC_INTX_ERR = common dso_local global i32 0, align 4
@FNIC_INTX_WQ_RQ_COPYWQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fnic_isr_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_isr_legacy(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fnic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fnic*
  store %struct.fnic* %10, %struct.fnic** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.fnic*, %struct.fnic** %6, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vnic_intr_legacy_pba(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FNIC_INTX_NOTIFY, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.fnic*, %struct.fnic** %6, align 8
  %27 = getelementptr inbounds %struct.fnic, %struct.fnic* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @FNIC_INTX_NOTIFY, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @vnic_intr_return_all_credits(i32* %31)
  %33 = load %struct.fnic*, %struct.fnic** %6, align 8
  %34 = call i32 @fnic_handle_link_event(%struct.fnic* %33)
  br label %35

35:                                               ; preds = %25, %19
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FNIC_INTX_ERR, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.fnic*, %struct.fnic** %6, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @FNIC_INTX_ERR, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @vnic_intr_return_all_credits(i32* %47)
  %49 = load %struct.fnic*, %struct.fnic** %6, align 8
  %50 = call i32 @fnic_log_q_error(%struct.fnic* %49)
  br label %51

51:                                               ; preds = %41, %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FNIC_INTX_WQ_RQ_COPYWQ, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.fnic*, %struct.fnic** %6, align 8
  %59 = call i64 @fnic_wq_copy_cmpl_handler(%struct.fnic* %58, i32 -1)
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load %struct.fnic*, %struct.fnic** %6, align 8
  %63 = call i64 @fnic_wq_cmpl_handler(%struct.fnic* %62, i32 -1)
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load %struct.fnic*, %struct.fnic** %6, align 8
  %67 = call i64 @fnic_rq_cmpl_handler(%struct.fnic* %66, i32 -1)
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load %struct.fnic*, %struct.fnic** %6, align 8
  %71 = getelementptr inbounds %struct.fnic, %struct.fnic* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @FNIC_INTX_WQ_RQ_COPYWQ, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @vnic_intr_return_credits(i32* %75, i64 %76, i32 1, i32 1)
  br label %78

78:                                               ; preds = %57, %51
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @vnic_intr_legacy_pba(i32) #1

declare dso_local i32 @vnic_intr_return_all_credits(i32*) #1

declare dso_local i32 @fnic_handle_link_event(%struct.fnic*) #1

declare dso_local i32 @fnic_log_q_error(%struct.fnic*) #1

declare dso_local i64 @fnic_wq_copy_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_wq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_rq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @vnic_intr_return_credits(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
