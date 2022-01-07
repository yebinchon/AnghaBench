; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_nego_rejected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_nego_rejected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i32 }

@HS_PRT = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*)* @sym_nego_rejected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_nego_rejected(%struct.sym_hcb* %0, %struct.sym_tcb* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_tcb* %1, %struct.sym_tcb** %5, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %8 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %9 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %10 = call i32 @sym_nego_default(%struct.sym_hcb* %7, %struct.sym_tcb* %8, %struct.sym_ccb* %9)
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %12 = load i32, i32* @HS_PRT, align 4
  %13 = load i32, i32* @HS_BUSY, align 4
  %14 = call i32 @OUTB(%struct.sym_hcb* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @sym_nego_default(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
