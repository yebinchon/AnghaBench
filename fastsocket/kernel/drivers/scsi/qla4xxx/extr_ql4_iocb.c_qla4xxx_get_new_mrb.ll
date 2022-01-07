; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_get_new_mrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_get_new_mrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb* (%struct.scsi_qla_host*)* @qla4xxx_get_new_mrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb* @qla4xxx_get_new_mrb(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.mrb*, align 8
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.mrb*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mrb* @kzalloc(i32 8, i32 %5)
  store %struct.mrb* %6, %struct.mrb** %4, align 8
  %7 = load %struct.mrb*, %struct.mrb** %4, align 8
  %8 = icmp ne %struct.mrb* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.mrb*, %struct.mrb** %4, align 8
  store %struct.mrb* %10, %struct.mrb** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = load %struct.mrb*, %struct.mrb** %4, align 8
  %14 = getelementptr inbounds %struct.mrb, %struct.mrb* %13, i32 0, i32 0
  store %struct.scsi_qla_host* %12, %struct.scsi_qla_host** %14, align 8
  %15 = load %struct.mrb*, %struct.mrb** %4, align 8
  store %struct.mrb* %15, %struct.mrb** %2, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = load %struct.mrb*, %struct.mrb** %2, align 8
  ret %struct.mrb* %17
}

declare dso_local %struct.mrb* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
