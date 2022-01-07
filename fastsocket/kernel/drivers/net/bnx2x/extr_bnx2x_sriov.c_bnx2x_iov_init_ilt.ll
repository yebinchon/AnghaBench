; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_init_ilt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_init_ilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_ilt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hw_dma = type { i32, i32, i32 }

@BNX2X_VF_CIDS = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_iov_init_ilt(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_ilt*, align 8
  %8 = alloca %struct.hw_dma*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = call %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x* %9)
  store %struct.bnx2x_ilt* %10, %struct.bnx2x_ilt** %7, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = call i32 @IS_SRIOV(%struct.bnx2x* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BNX2X_VF_CIDS, align 4
  %20 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %21 = sdiv i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %17
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.hw_dma* @BP_VF_CXT_PAGE(%struct.bnx2x* %24, i32 %25)
  store %struct.hw_dma* %26, %struct.hw_dma** %8, align 8
  %27 = load %struct.hw_dma*, %struct.hw_dma** %8, align 8
  %28 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %31 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %29, i32* %38, align 4
  %39 = load %struct.hw_dma*, %struct.hw_dma** %8, align 8
  %40 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %43 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %41, i32* %50, align 4
  %51 = load %struct.hw_dma*, %struct.hw_dma** %8, align 8
  %52 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bnx2x_ilt*, %struct.bnx2x_ilt** %7, align 8
  %55 = getelementptr inbounds %struct.bnx2x_ilt, %struct.bnx2x_ilt* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %53, i32* %62, align 4
  br label %63

63:                                               ; preds = %23
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.bnx2x_ilt* @BP_ILT(%struct.bnx2x*) #1

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local %struct.hw_dma* @BP_VF_CXT_PAGE(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
