; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_remove_buffer_from_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_remove_buffer_from_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*, i32)* @ibmveth_remove_buffer_from_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_remove_buffer_from_pool(%struct.ibmveth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = and i64 %12, 4294967295
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %17 = icmp uge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp uge i32 %20, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = icmp eq %struct.sk_buff* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %57
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  %59 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = call i32 @dma_unmap_single(i32* %62, i32 %74, i32 %82, i32 %83)
  %85 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp uge i32 %109, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %2
  %120 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %2
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %128, i32* %139, align 4
  %140 = call i32 (...) @mb()
  %141 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = call i32 @atomic_dec(i32* %147)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
