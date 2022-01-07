; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_space_in_req_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_space_in_req_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.scsi_qla_host*)* }

@REQUEST_QUEUE_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i64)* @qla4xxx_space_in_req_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_space_in_req_ring(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add nsw i64 %7, 2
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.scsi_qla_host*)*, i64 (%struct.scsi_qla_host*)** %17, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %20 = call i64 %18(%struct.scsi_qla_host* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %44

34:                                               ; preds = %13
  %35 = load i64, i64* @REQUEST_QUEUE_DEPTH, align 8
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub nsw i64 %38, %39
  %41 = sub nsw i64 %35, %40
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %34, %26
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 2
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
