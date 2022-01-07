; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_init_restart_ledma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_init_restart_ledma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i32, i64, i64 }

@DMA_CSR = common dso_local global i64 0, align 8
@DMA_HNDL_ERROR = common dso_local global i32 0, align 4
@DMA_FIFO_ISDRAIN = common dso_local global i32 0, align 4
@DMA_E_BURSTS = common dso_local global i32 0, align 4
@DMA_BURST32 = common dso_local global i32 0, align 4
@DMA_E_BURST32 = common dso_local global i32 0, align 4
@DMA_E_BURST16 = common dso_local global i32 0, align 4
@DMA_DSBL_RD_DRN = common dso_local global i32 0, align 4
@DMA_DSBL_WR_INV = common dso_local global i32 0, align 4
@DMA_FIFO_INV = common dso_local global i32 0, align 4
@DMA_EN_ENETAUI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_private*)* @init_restart_ledma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_restart_ledma(%struct.lance_private* %0) #0 {
  %2 = alloca %struct.lance_private*, align 8
  %3 = alloca i32, align 4
  store %struct.lance_private* %0, %struct.lance_private** %2, align 8
  %4 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %5 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DMA_CSR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @sbus_readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DMA_HNDL_ERROR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %25, %14
  %16 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %17 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_CSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @sbus_readl(i64 %20)
  %22 = load i32, i32* @DMA_FIFO_ISDRAIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @barrier()
  br label %15

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %30 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_CSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @sbus_readl(i64 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @DMA_E_BURSTS, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %40 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_BURST32, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @DMA_E_BURST32, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %28
  %50 = load i32, i32* @DMA_E_BURST16, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @DMA_DSBL_RD_DRN, align 4
  %55 = load i32, i32* @DMA_DSBL_WR_INV, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DMA_FIFO_INV, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %62 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @DMA_EN_ENETAUI, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %53
  %70 = load i32, i32* @DMA_EN_ENETAUI, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = call i32 @udelay(i32 20)
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %78 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DMA_CSR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @sbus_writel(i32 %76, i64 %81)
  %83 = call i32 @udelay(i32 200)
  ret void
}

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
