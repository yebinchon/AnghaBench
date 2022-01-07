; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_fill_wqe_sg_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_fill_wqe_sg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_hw_qp_wqe = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NES_IWARP_SQ_WQE_FRAG0_LOW_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_WQE_LENGTH0_IDX = common dso_local global i64 0, align 8
@NES_IWARP_SQ_WQE_STAG0_IDX = common dso_local global i64 0, align 8
@NES_DBG_IW_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"UC UC UC, sending total_payload_length=%u \0A\00", align 1
@NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_hw_qp_wqe*, %struct.ib_send_wr*, i64)* @fill_wqe_sg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_wqe_sg_send(%struct.nes_hw_qp_wqe* %0, %struct.ib_send_wr* %1, i64 %2) #0 {
  %4 = alloca %struct.nes_hw_qp_wqe*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nes_hw_qp_wqe* %0, %struct.nes_hw_qp_wqe** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %91, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %9
  %16 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %17 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @NES_IWARP_SQ_WQE_FRAG0_LOW_IDX, align 8
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_wqe_64bit_value(i32 %18, i64 %23, i32 %31)
  %33 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %34 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @NES_IWARP_SQ_WQE_LENGTH0_IDX, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_wqe_32bit_value(i32 %35, i64 %40, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %15
  %53 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %54 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @NES_IWARP_SQ_WQE_STAG0_IDX, align 8
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_wqe_32bit_value(i32 %55, i64 %60, i32 %68)
  br label %80

70:                                               ; preds = %15
  %71 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %72 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @NES_IWARP_SQ_WQE_STAG0_IDX, align 8
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = call i32 @set_wqe_32bit_value(i32 %73, i64 %78, i32 0)
  br label %80

80:                                               ; preds = %70, %52
  %81 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %82 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %9

94:                                               ; preds = %9
  %95 = load i32, i32* @NES_DBG_IW_TX, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @nes_debug(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %99 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* @NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @set_wqe_32bit_value(i32 %100, i64 %101, i32 %102)
  ret void
}

declare dso_local i32 @set_wqe_64bit_value(i32, i64, i32) #1

declare dso_local i32 @set_wqe_32bit_value(i32, i64, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
