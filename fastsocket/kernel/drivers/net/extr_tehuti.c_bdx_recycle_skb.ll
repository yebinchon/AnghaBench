; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_recycle_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_recycle_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.rxdb*, %struct.rxf_fifo }
%struct.rxdb = type { i32 }
%struct.rxf_fifo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rxd_desc = type { i32 }
%struct.rxf_desc = type { i8*, i8*, i8*, i32, i8* }
%struct.rx_map = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"priv=%p rxdd=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"db=%p f=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dm=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"wrapped descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.rxd_desc*)* @bdx_recycle_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_recycle_skb(%struct.bdx_priv* %0, %struct.rxd_desc* %1) #0 {
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca %struct.rxd_desc*, align 8
  %5 = alloca %struct.rxf_desc*, align 8
  %6 = alloca %struct.rx_map*, align 8
  %7 = alloca %struct.rxf_fifo*, align 8
  %8 = alloca %struct.rxdb*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  store %struct.rxd_desc* %1, %struct.rxd_desc** %4, align 8
  %11 = load i32, i32* @ENTER, align 4
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %13 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %14 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.bdx_priv* %12, %struct.rxd_desc* %13)
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %15, i32 0, i32 1
  store %struct.rxf_fifo* %16, %struct.rxf_fifo** %7, align 8
  %17 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %18 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %17, i32 0, i32 0
  %19 = load %struct.rxdb*, %struct.rxdb** %18, align 8
  store %struct.rxdb* %19, %struct.rxdb** %8, align 8
  %20 = load %struct.rxdb*, %struct.rxdb** %8, align 8
  %21 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %22 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.rxdb* %20, %struct.rxf_fifo* %21)
  %23 = load %struct.rxdb*, %struct.rxdb** %8, align 8
  %24 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %25 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb* %23, i32 %26)
  store %struct.rx_map* %27, %struct.rx_map** %6, align 8
  %28 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %29 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.rx_map* %28)
  %30 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %31 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %30, i32 0, i32 1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %9, align 8
  %33 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %34 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %38 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.rxf_desc*
  store %struct.rxf_desc* %43, %struct.rxf_desc** %5, align 8
  %44 = call i8* @CPU_CHIP_SWAP32(i32 65539)
  %45 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %46 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.rxd_desc*, %struct.rxd_desc** %4, align 8
  %48 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %51 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %53 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @L32_64(i32 %54)
  %56 = call i8* @CPU_CHIP_SWAP32(i32 %55)
  %57 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %58 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.rx_map*, %struct.rx_map** %6, align 8
  %60 = getelementptr inbounds %struct.rx_map, %struct.rx_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @H32_64(i32 %61)
  %63 = call i8* @CPU_CHIP_SWAP32(i32 %62)
  %64 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %65 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %67 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @CPU_CHIP_SWAP32(i32 %69)
  %71 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %72 = getelementptr inbounds %struct.rxf_desc, %struct.rxf_desc* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.rxf_desc*, %struct.rxf_desc** %5, align 8
  %74 = call i32 @print_rxfd(%struct.rxf_desc* %73)
  %75 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %76 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 40
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %83 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %87 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %85, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %2
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %99 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %105 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %109 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.rxf_fifo*, %struct.rxf_fifo** %7, align 8
  %113 = getelementptr inbounds %struct.rxf_fifo, %struct.rxf_fifo* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %111, %115
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @memcpy(i32 %107, i32 %116, i32 %117)
  %119 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %103, %96
  br label %121

121:                                              ; preds = %120, %2
  %122 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.rx_map* @bdx_rxdb_addr_elem(%struct.rxdb*, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i32) #1

declare dso_local i32 @L32_64(i32) #1

declare dso_local i32 @H32_64(i32) #1

declare dso_local i32 @print_rxfd(%struct.rxf_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
