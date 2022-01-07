; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_free_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.hw_dma* }
%struct.hw_dma = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@BNX2X_VF_CIDS = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_iov_free_mem(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_dma*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @IS_SRIOV(%struct.bnx2x* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %81

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BNX2X_VF_CIDS, align 4
  %13 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %14 = sdiv i32 %12, %13
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.hw_dma*, %struct.hw_dma** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %21, i64 %23
  store %struct.hw_dma* %24, %struct.hw_dma** %4, align 8
  %25 = load %struct.hw_dma*, %struct.hw_dma** %4, align 8
  %26 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hw_dma*, %struct.hw_dma** %4, align 8
  %29 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hw_dma*, %struct.hw_dma** %4, align 8
  %32 = getelementptr inbounds %struct.hw_dma, %struct.hw_dma* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BNX2X_PCI_FREE(i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = call %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x* %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = call %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = call %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x* %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BNX2X_PCI_FREE(i32 %43, i32 %48, i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = call %struct.TYPE_8__* @BP_VF_MBX_DMA(%struct.bnx2x* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = call %struct.TYPE_8__* @BP_VF_MBX_DMA(%struct.bnx2x* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %64 = call %struct.TYPE_8__* @BP_VF_MBX_DMA(%struct.bnx2x* %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BNX2X_PCI_FREE(i32 %58, i32 %62, i32 %66)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = call %struct.TYPE_9__* @BP_VF_BULLETIN_DMA(%struct.bnx2x* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = call %struct.TYPE_9__* @BP_VF_BULLETIN_DMA(%struct.bnx2x* %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %77 = call %struct.TYPE_9__* @BP_VF_BULLETIN_DMA(%struct.bnx2x* %76)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BNX2X_PCI_FREE(i32 %71, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_PCI_FREE(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x*) #1

declare dso_local %struct.TYPE_8__* @BP_VF_MBX_DMA(%struct.bnx2x*) #1

declare dso_local %struct.TYPE_9__* @BP_VF_BULLETIN_DMA(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
