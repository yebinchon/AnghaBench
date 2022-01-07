; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_fp_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_fp_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@IRQ_NONE = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@HA_R0_CLR_MSK = common dso_local global i32 0, align 4
@HA_R1_CLR_MSK = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_EXTRA_RING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_fp_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %6, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %13 = icmp ne %struct.lpfc_hba* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %152

20:                                               ; preds = %2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MSIX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %20
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %28 = call i64 @lpfc_intr_state_check(%struct.lpfc_hba* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %152

32:                                               ; preds = %26
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @lpfc_readl(i32 %35, i32* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %152

40:                                               ; preds = %32
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 6
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DEFER_ERATT, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 6
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %3, align 4
  br label %152

58:                                               ; preds = %40
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @HA_R0_CLR_MSK, align 4
  %61 = load i32, i32* @HA_R1_CLR_MSK, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @writel(i32 %63, i32 %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @readl(i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 6
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %80

76:                                               ; preds = %20
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %58
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @HA_RXMASK, align 4
  %89 = load i32, i32* @LPFC_FCP_RING, align 4
  %90 = mul nsw i32 4, %89
  %91 = shl i32 %88, %90
  %92 = and i32 %87, %91
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load i32, i32* @LPFC_FCP_RING, align 4
  %95 = mul nsw i32 4, %94
  %96 = load i64, i64* %8, align 8
  %97 = zext i32 %95 to i64
  %98 = lshr i64 %96, %97
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* @HA_RXMASK, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %99, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %80
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @LPFC_FCP_RING, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %105, i32* %112, i64 %113)
  br label %115

115:                                              ; preds = %104, %80
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %150

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @HA_RXMASK, align 4
  %123 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %124 = mul nsw i32 4, %123
  %125 = shl i32 %122, %124
  %126 = and i32 %121, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %8, align 8
  %128 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i64, i64* %8, align 8
  %131 = zext i32 %129 to i64
  %132 = lshr i64 %130, %131
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i32, i32* @HA_RXMASK, align 4
  %135 = sext i32 %134 to i64
  %136 = and i64 %133, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %120
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %139, i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %138, %120
  br label %150

150:                                              ; preds = %149, %115
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %52, %38, %30, %18
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
