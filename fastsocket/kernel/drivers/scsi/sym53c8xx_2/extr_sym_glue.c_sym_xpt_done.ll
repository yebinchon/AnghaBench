; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_xpt_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_xpt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }
%struct.sym_ucmd = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_xpt_done(%struct.sym_hcb* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sym_ucmd*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = call %struct.sym_ucmd* @SYM_UCMD_PTR(%struct.scsi_cmnd* %6)
  store %struct.sym_ucmd* %7, %struct.sym_ucmd** %5, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 1)
  %9 = load %struct.sym_ucmd*, %struct.sym_ucmd** %5, align 8
  %10 = getelementptr inbounds %struct.sym_ucmd, %struct.sym_ucmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.sym_ucmd*, %struct.sym_ucmd** %5, align 8
  %15 = getelementptr inbounds %struct.sym_ucmd, %struct.sym_ucmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @complete(i64 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %22, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = call i32 %23(%struct.scsi_cmnd* %24)
  ret void
}

declare dso_local %struct.sym_ucmd* @SYM_UCMD_PTR(%struct.scsi_cmnd*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
