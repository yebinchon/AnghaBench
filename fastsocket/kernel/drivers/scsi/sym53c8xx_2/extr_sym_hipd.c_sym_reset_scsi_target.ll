; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_reset_scsi_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_reset_scsi_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }

@SYM_CONF_MAX_TARGET = common dso_local global i64 0, align 8
@SEM = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_reset_scsi_target(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_tcb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %9 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @SYM_CONF_MAX_TARGET, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 2
  %21 = load %struct.sym_tcb*, %struct.sym_tcb** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %21, i64 %23
  store %struct.sym_tcb* %24, %struct.sym_tcb** %6, align 8
  %25 = load %struct.sym_tcb*, %struct.sym_tcb** %6, align 8
  %26 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @SEM, align 4
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %29 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %31 = load i32, i32* @nc_istat, align 4
  %32 = load i32, i32* @SIGP, align 4
  %33 = load i32, i32* @SEM, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @OUTB(%struct.sym_hcb* %30, i32 %31, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
