; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_get_tx_frame_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_get_tx_frame_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32 }
%struct.dma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*, i64)* @mac100_get_tx_frame_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac100_get_tx_frame_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_desc* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmmac_extra_stats*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device_stats*
  store %struct.net_device_stats* %12, %struct.net_device_stats** %10, align 8
  %13 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %4
  %21 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %30 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %20
  %38 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %39 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %47 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %45, %37
  %55 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %56 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %64 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %62, %54
  %72 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %73 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %80 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %87 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %85, %78, %71
  %93 = phi i1 [ true, %78 ], [ true, %71 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %99 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %104 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %109

109:                                              ; preds = %97, %92
  store i32 -1, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %4
  %111 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %112 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %120 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %124 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  store i32 -1, i32* %9, align 4
  br label %127

127:                                              ; preds = %118, %110
  %128 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %129 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %137 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %127
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
