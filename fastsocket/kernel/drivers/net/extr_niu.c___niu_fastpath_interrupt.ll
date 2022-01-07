; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c___niu_fastpath_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c___niu_fastpath_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.tx_ring_info*, %struct.rx_ring_info*, %struct.niu_parent* }
%struct.tx_ring_info = type { i32 }
%struct.rx_ring_info = type { i32 }
%struct.niu_parent = type { i32* }

@LD_IM0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32, i32)* @__niu_fastpath_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__niu_fastpath_interrupt(%struct.niu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu_parent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_ring_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tx_ring_info*, align 8
  %14 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.niu*, %struct.niu** %4, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 4
  %17 = load %struct.niu_parent*, %struct.niu_parent** %16, align 8
  store %struct.niu_parent* %17, %struct.niu_parent** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %66, %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %21
  %28 = load %struct.niu*, %struct.niu** %4, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 3
  %30 = load %struct.rx_ring_info*, %struct.rx_ring_info** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %30, i64 %32
  store %struct.rx_ring_info* %33, %struct.rx_ring_info** %11, align 8
  %34 = load %struct.rx_ring_info*, %struct.rx_ring_info** %11, align 8
  %35 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LDN_RXDMA(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %39 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %66

48:                                               ; preds = %27
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @LD_IM0(i32 %49)
  %51 = load i32, i32* @LD_IM0_MASK, align 4
  %52 = call i32 @nw64(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %11, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %53, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.niu*, %struct.niu** %4, align 8
  %62 = load %struct.rx_ring_info*, %struct.rx_ring_info** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @niu_rxchan_intr(%struct.niu* %61, %struct.rx_ring_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %48
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %21

69:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %115, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.niu*, %struct.niu** %4, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load %struct.niu*, %struct.niu** %4, align 8
  %78 = getelementptr inbounds %struct.niu, %struct.niu* %77, i32 0, i32 2
  %79 = load %struct.tx_ring_info*, %struct.tx_ring_info** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %79, i64 %81
  store %struct.tx_ring_info* %82, %struct.tx_ring_info** %13, align 8
  %83 = load %struct.tx_ring_info*, %struct.tx_ring_info** %13, align 8
  %84 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @LDN_TXDMA(i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %88 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %115

97:                                               ; preds = %76
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @LD_IM0(i32 %98)
  %100 = load i32, i32* @LD_IM0_MASK, align 4
  %101 = call i32 @nw64(i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.tx_ring_info*, %struct.tx_ring_info** %13, align 8
  %104 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 1, %105
  %107 = and i32 %102, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load %struct.niu*, %struct.niu** %4, align 8
  %111 = load %struct.tx_ring_info*, %struct.tx_ring_info** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @niu_txchan_intr(%struct.niu* %110, %struct.tx_ring_info* %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %97
  br label %115

115:                                              ; preds = %114, %96
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %70

118:                                              ; preds = %70
  ret void
}

declare dso_local i32 @LDN_RXDMA(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @LD_IM0(i32) #1

declare dso_local i32 @niu_rxchan_intr(%struct.niu*, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @LDN_TXDMA(i32) #1

declare dso_local i32 @niu_txchan_intr(%struct.niu*, %struct.tx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
