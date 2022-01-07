; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_get_rx_frame_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_get_rx_frame_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@csum_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"mac100 Error: Oversized Ethernet frame spanned multiple buffers\0A\00", align 1
@discard_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @mac100_get_rx_frame_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac100_get_rx_frame_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmmac_extra_stats*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device_stats*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  %10 = load i32, i32* @csum_none, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device_stats*
  store %struct.net_device_stats* %12, %struct.net_device_stats** %9, align 8
  %13 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = call i32 @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %25 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @discard_frame, align 4
  store i32 %28, i32* %4, align 4
  br label %181

29:                                               ; preds = %3
  %30 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %31 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %125

37:                                               ; preds = %29
  %38 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %39 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %47 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %52 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %50
  %64 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %65 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %73 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %78 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %86 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %76
  %90 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %91 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %99 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %89
  %107 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %108 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %116 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %120 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %114, %106
  %124 = load i32, i32* @discard_frame, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %29
  %126 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %127 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* @discard_frame, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %125
  %136 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %137 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %145 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @discard_frame, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %143, %135
  %150 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %151 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %159 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @discard_frame, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %157, %149
  %164 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %165 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 11
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %172 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %176 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %170, %163
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %22
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
