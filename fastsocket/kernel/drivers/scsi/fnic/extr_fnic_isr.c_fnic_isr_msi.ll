; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fnic_isr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_isr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fnic*
  store %struct.fnic* %8, %struct.fnic** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.fnic*, %struct.fnic** %5, align 8
  %10 = call i64 @fnic_wq_copy_cmpl_handler(%struct.fnic* %9, i32 -1)
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load %struct.fnic*, %struct.fnic** %5, align 8
  %14 = call i64 @fnic_wq_cmpl_handler(%struct.fnic* %13, i32 -1)
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load %struct.fnic*, %struct.fnic** %5, align 8
  %18 = call i64 @fnic_rq_cmpl_handler(%struct.fnic* %17, i32 -1)
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load %struct.fnic*, %struct.fnic** %5, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @vnic_intr_return_credits(i32* %24, i64 %25, i32 1, i32 1)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

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
