; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_poll_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_poll_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.rx_ring_info*, %struct.tx_ring_info*, %struct.TYPE_2__* }
%struct.rx_ring_info = type { i32 }
%struct.tx_ring_info = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.niu_ldg = type { i32, i32 }

@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: niu_poll_core() v0[%016llx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.niu_ldg*, i32)* @niu_poll_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_poll_core(%struct.niu* %0, %struct.niu_ldg* %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.niu_ldg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tx_ring_info*, align 8
  %13 = alloca %struct.rx_ring_info*, align 8
  %14 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.niu_ldg* %1, %struct.niu_ldg** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.niu_ldg*, %struct.niu_ldg** %5, align 8
  %16 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @INTR, align 4
  %22 = load %struct.niu*, %struct.niu** %4, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @niudbg(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %61, %3
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.niu*, %struct.niu** %4, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.niu*, %struct.niu** %4, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 3
  %39 = load %struct.tx_ring_info*, %struct.tx_ring_info** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %39, i64 %41
  store %struct.tx_ring_info* %42, %struct.tx_ring_info** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.tx_ring_info*, %struct.tx_ring_info** %12, align 8
  %45 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.niu*, %struct.niu** %4, align 8
  %52 = load %struct.tx_ring_info*, %struct.tx_ring_info** %12, align 8
  %53 = call i32 @niu_tx_work(%struct.niu* %51, %struct.tx_ring_info* %52)
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.tx_ring_info*, %struct.tx_ring_info** %12, align 8
  %56 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LDN_TXDMA(i32 %57)
  %59 = call i32 @LD_IM0(i32 %58)
  %60 = call i32 @nw64(i32 %59, i32 0)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %30

64:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %105, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.niu*, %struct.niu** %4, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %65
  %72 = load %struct.niu*, %struct.niu** %4, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 2
  %74 = load %struct.rx_ring_info*, %struct.rx_ring_info** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %74, i64 %76
  store %struct.rx_ring_info* %77, %struct.rx_ring_info** %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.rx_ring_info*, %struct.rx_ring_info** %13, align 8
  %80 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %78, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %71
  %86 = load %struct.niu_ldg*, %struct.niu_ldg** %5, align 8
  %87 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %86, i32 0, i32 1
  %88 = load %struct.niu*, %struct.niu** %4, align 8
  %89 = load %struct.rx_ring_info*, %struct.rx_ring_info** %13, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @niu_rx_work(i32* %87, %struct.niu* %88, %struct.rx_ring_info* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %85, %71
  %99 = load %struct.rx_ring_info*, %struct.rx_ring_info** %13, align 8
  %100 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @LDN_RXDMA(i32 %101)
  %103 = call i32 @LD_IM0(i32 %102)
  %104 = call i32 @nw64(i32 %103, i32 0)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %65

108:                                              ; preds = %65
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i32 @niudbg(i32, i8*, i32, i64) #1

declare dso_local i32 @niu_tx_work(%struct.niu*, %struct.tx_ring_info*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @LD_IM0(i32) #1

declare dso_local i32 @LDN_TXDMA(i32) #1

declare dso_local i32 @niu_rx_work(i32*, %struct.niu*, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @LDN_RXDMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
