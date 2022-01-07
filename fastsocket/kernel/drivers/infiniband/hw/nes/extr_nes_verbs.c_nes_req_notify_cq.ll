; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64 }
%struct.nes_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NES_DBG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Requesting notification for CQ%u.\0A\00", align 1
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@NES_CQE_ALLOC_NOTIFY_NEXT = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@NES_CQE_ALLOC_NOTIFY_SE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NES_CQE_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32)* @nes_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca %struct.nes_cq*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %11 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nes_vnic* @to_nesvnic(i32 %12)
  store %struct.nes_vnic* %13, %struct.nes_vnic** %6, align 8
  %14 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %15 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %14, i32 0, i32 0
  %16 = load %struct.nes_device*, %struct.nes_device** %15, align 8
  store %struct.nes_device* %16, %struct.nes_device** %7, align 8
  %17 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %18 = call %struct.nes_cq* @to_nescq(%struct.ib_cq* %17)
  store %struct.nes_cq* %18, %struct.nes_cq** %8, align 8
  %19 = load i32, i32* @NES_DBG_CQ, align 4
  %20 = load %struct.nes_cq*, %struct.nes_cq** %8, align 8
  %21 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nes_debug(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.nes_cq*, %struct.nes_cq** %8, align 8
  %26 = getelementptr inbounds %struct.nes_cq, %struct.nes_cq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @NES_CQE_ALLOC_NOTIFY_NEXT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %52

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @NES_CQE_ALLOC_NOTIFY_SE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %54 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NES_CQE_ALLOC, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @nes_write32(i64 %57, i32 %58)
  %60 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %61 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NES_CQE_ALLOC, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @nes_read32(i64 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %48
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local %struct.nes_cq* @to_nescq(%struct.ib_cq*) #1

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @nes_read32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
