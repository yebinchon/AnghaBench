; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_release_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i64, i32*, %struct.mite_struct* }
%struct.mite_struct = type { i32, i64*, i64 }

@CHCR_CLR_DMA_IE = common dso_local global i32 0, align 4
@CHCR_CLR_LINKP_IE = common dso_local global i32 0, align 4
@CHCR_CLR_SAR_IE = common dso_local global i32 0, align 4
@CHCR_CLR_DONE_IE = common dso_local global i32 0, align 4
@CHCR_CLR_MRDY_IE = common dso_local global i32 0, align 4
@CHCR_CLR_DRDY_IE = common dso_local global i32 0, align 4
@CHCR_CLR_LC_IE = common dso_local global i32 0, align 4
@CHCR_CLR_CONT_RB_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_release_channel(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %5 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %6 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %5, i32 0, i32 2
  %7 = load %struct.mite_struct*, %struct.mite_struct** %6, align 8
  store %struct.mite_struct* %7, %struct.mite_struct** %3, align 8
  %8 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %9 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %16 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  %22 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %23 = call i32 @mite_dma_disarm(%struct.mite_channel* %22)
  %24 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %25 = call i32 @mite_dma_reset(%struct.mite_channel* %24)
  %26 = load i32, i32* @CHCR_CLR_DMA_IE, align 4
  %27 = load i32, i32* @CHCR_CLR_LINKP_IE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CHCR_CLR_SAR_IE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CHCR_CLR_DONE_IE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CHCR_CLR_MRDY_IE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CHCR_CLR_DRDY_IE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CHCR_CLR_LC_IE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CHCR_CLR_CONT_RB_IE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %42 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %45 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @MITE_CHCR(i64 %46)
  %48 = add nsw i64 %43, %47
  %49 = call i32 @writel(i32 %40, i64 %48)
  %50 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %51 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %54 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 0, i64* %56, align 8
  %57 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %58 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = call i32 (...) @mmiowb()
  br label %60

60:                                               ; preds = %21, %1
  %61 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %62 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_disarm(%struct.mite_channel*) #1

declare dso_local i32 @mite_dma_reset(%struct.mite_channel*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHCR(i64) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
