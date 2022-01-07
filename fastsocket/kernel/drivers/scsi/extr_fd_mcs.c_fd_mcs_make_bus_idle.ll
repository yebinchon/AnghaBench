; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_make_bus_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_make_bus_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@SCSI_Cntl_port = common dso_local global i32 0, align 4
@SCSI_Mode_Cntl_port = common dso_local global i32 0, align 4
@chip = common dso_local global i64 0, align 8
@tmc18c50 = common dso_local global i64 0, align 8
@tmc18c30 = common dso_local global i64 0, align 8
@PARITY_MASK = common dso_local global i32 0, align 4
@TMC_Cntl_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @fd_mcs_make_bus_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_mcs_make_bus_idle(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load i32, i32* @SCSI_Cntl_port, align 4
  %4 = call i32 @outb(i32 0, i32 %3)
  %5 = load i32, i32* @SCSI_Mode_Cntl_port, align 4
  %6 = call i32 @outb(i32 0, i32 %5)
  %7 = load i64, i64* @chip, align 8
  %8 = load i64, i64* @tmc18c50, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @chip, align 8
  %12 = load i64, i64* @tmc18c30, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @PARITY_MASK, align 4
  %16 = or i32 33, %15
  %17 = load i32, i32* @TMC_Cntl_port, align 4
  %18 = call i32 @outb(i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* @PARITY_MASK, align 4
  %21 = or i32 1, %20
  %22 = load i32, i32* @TMC_Cntl_port, align 4
  %23 = call i32 @outb(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
