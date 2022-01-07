; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_tx_2page_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_tx_2page_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meth_private = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i64 }

@METH_TX_CMD_INT_EN = common dso_local global i32 0, align 4
@TX_CATBUF1 = common dso_local global i32 0, align 4
@TX_CATBUF2 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meth_private*, %struct.sk_buff*)* @meth_tx_2page_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_tx_2page_prepare(%struct.meth_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.meth_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.meth_private* %0, %struct.meth_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %14 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %17 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %18
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 7
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @PAGE_ALIGN(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = sub i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @METH_TX_CMD_INT_EN, align 4
  %52 = load i32, i32* @TX_CATBUF1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @TX_CATBUF2, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = or i32 %55, %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %2
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 120, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %67, i64 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 128, %78
  %80 = shl i32 %79, 16
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %66, %2
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i32 @dma_map_single(i32* null, i8* %87, i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %101, i32* %108, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @DMA_TO_DEVICE, align 4
  %112 = call i32 @dma_map_single(i32* null, i8* %109, i32 %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = ashr i32 %113, 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
