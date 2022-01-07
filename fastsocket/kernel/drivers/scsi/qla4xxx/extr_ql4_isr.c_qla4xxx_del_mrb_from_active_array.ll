; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_del_mrb_from_active_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4xxx_del_mrb_from_active_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb = type { i64 }
%struct.scsi_qla_host = type { i32, %struct.mrb** }

@MAX_MRB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb* (%struct.scsi_qla_host*, i64)* @qla4xxx_del_mrb_from_active_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb* @qla4xxx_del_mrb_from_active_array(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca %struct.mrb*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mrb*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mrb* null, %struct.mrb** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAX_MRB, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.mrb*, %struct.mrb** %6, align 8
  store %struct.mrb* %11, %struct.mrb** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  %15 = load %struct.mrb**, %struct.mrb*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.mrb*, %struct.mrb** %15, i64 %16
  %18 = load %struct.mrb*, %struct.mrb** %17, align 8
  store %struct.mrb* %18, %struct.mrb** %6, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load %struct.mrb**, %struct.mrb*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.mrb*, %struct.mrb** %21, i64 %22
  store %struct.mrb* null, %struct.mrb** %23, align 8
  %24 = load %struct.mrb*, %struct.mrb** %6, align 8
  %25 = icmp ne %struct.mrb* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = load %struct.mrb*, %struct.mrb** %6, align 8
  store %struct.mrb* %27, %struct.mrb** %3, align 8
  br label %39

28:                                               ; preds = %12
  %29 = load %struct.mrb*, %struct.mrb** %6, align 8
  %30 = getelementptr inbounds %struct.mrb, %struct.mrb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.mrb*, %struct.mrb** %6, align 8
  store %struct.mrb* %38, %struct.mrb** %3, align 8
  br label %39

39:                                               ; preds = %28, %26, %10
  %40 = load %struct.mrb*, %struct.mrb** %3, align 8
  ret %struct.mrb* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
