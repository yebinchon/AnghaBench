; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_send_sync_request_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_send_sync_request_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.hpt_iop_request_header* }
%struct.hpt_iop_request_header = type { i32 }

@IOP_REQUEST_FLAG_SYNC_REQUEST = common dso_local global i32 0, align 4
@MVIOP_MU_QUEUE_ADDR_HOST_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, i64, i64)* @iop_send_sync_request_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_send_sync_request_mv(%struct.hptiop_hba* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hptiop_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hpt_iop_request_header*, align 8
  %9 = alloca i64, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %11 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %13, align 8
  store %struct.hpt_iop_request_header* %14, %struct.hpt_iop_request_header** %8, align 8
  %15 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %16 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @IOP_REQUEST_FLAG_SYNC_REQUEST, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %8, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_request_header, %struct.hpt_iop_request_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %24 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MVIOP_MU_QUEUE_ADDR_HOST_BIT, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %29, %30
  %32 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %33 = call i32 @mv_inbound_write(i64 %31, %struct.hptiop_hba* %32)
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %48, %3
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %40 = call i32 @iop_intr_mv(%struct.hptiop_hba* %39)
  %41 = load %struct.hptiop_hba*, %struct.hptiop_hba** %5, align 8
  %42 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %38
  %47 = call i32 @msleep(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %34

51:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mv_inbound_write(i64, %struct.hptiop_hba*) #1

declare dso_local i32 @iop_intr_mv(%struct.hptiop_hba*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
