; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_make_bus_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_make_bus_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@port_base = common dso_local global i64 0, align 8
@SCSI_Cntl = common dso_local global i64 0, align 8
@SCSI_Mode_Cntl = common dso_local global i64 0, align 8
@chip = common dso_local global i64 0, align 8
@tmc18c50 = common dso_local global i64 0, align 8
@tmc18c30 = common dso_local global i64 0, align 8
@PARITY_MASK = common dso_local global i32 0, align 4
@TMC_Cntl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fdomain_make_bus_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdomain_make_bus_idle() #0 {
  %1 = load i64, i64* @port_base, align 8
  %2 = load i64, i64* @SCSI_Cntl, align 8
  %3 = add nsw i64 %1, %2
  %4 = call i32 @outb(i32 0, i64 %3)
  %5 = load i64, i64* @port_base, align 8
  %6 = load i64, i64* @SCSI_Mode_Cntl, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outb(i32 0, i64 %7)
  %9 = load i64, i64* @chip, align 8
  %10 = load i64, i64* @tmc18c50, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* @chip, align 8
  %14 = load i64, i64* @tmc18c30, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %0
  %17 = load i32, i32* @PARITY_MASK, align 4
  %18 = or i32 33, %17
  %19 = load i64, i64* @port_base, align 8
  %20 = load i64, i64* @TMC_Cntl, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %18, i64 %21)
  br label %30

23:                                               ; preds = %12
  %24 = load i32, i32* @PARITY_MASK, align 4
  %25 = or i32 1, %24
  %26 = load i64, i64* @port_base, align 8
  %27 = load i64, i64* @TMC_Cntl, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
