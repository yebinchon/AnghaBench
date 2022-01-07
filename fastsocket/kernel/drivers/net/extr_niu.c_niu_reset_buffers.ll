; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_reset_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_reset_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.tx_ring_info*, %struct.rx_ring_info* }
%struct.tx_ring_info = type { i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rx_ring_info = type { i64, i64, i64, i64, i64, i32*, %struct.page** }
%struct.page = type { i32, i64 }

@MAX_RBR_RING_SIZE = common dso_local global i32 0, align 4
@RBR_DESCR_ADDR_SHIFT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAX_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_reset_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_reset_buffers(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %12 = load %struct.niu*, %struct.niu** %2, align 8
  %13 = getelementptr inbounds %struct.niu, %struct.niu* %12, i32 0, i32 3
  %14 = load %struct.rx_ring_info*, %struct.rx_ring_info** %13, align 8
  %15 = icmp ne %struct.rx_ring_info* %14, null
  br i1 %15, label %16, label %106

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %102, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.niu*, %struct.niu** %2, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %105

23:                                               ; preds = %17
  %24 = load %struct.niu*, %struct.niu** %2, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 3
  %26 = load %struct.rx_ring_info*, %struct.rx_ring_info** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %26, i64 %28
  store %struct.rx_ring_info* %29, %struct.rx_ring_info** %7, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %67, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %36 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %35, i32 0, i32 6
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  store %struct.page* %41, %struct.page** %8, align 8
  br label %42

42:                                               ; preds = %45, %34
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.page*
  store %struct.page* %49, %struct.page** %9, align 8
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @RBR_DESCR_ADDR_SHIFT, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %59 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %65, %struct.page** %8, align 8
  br label %42

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %30

70:                                               ; preds = %30
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.niu*, %struct.niu** %2, align 8
  %77 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @niu_rbr_add_page(%struct.niu* %76, %struct.rx_ring_info* %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %89

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %71

89:                                               ; preds = %84, %71
  %90 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %91 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %95 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %97 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %99 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %101 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %17

105:                                              ; preds = %17
  br label %106

106:                                              ; preds = %105, %1
  %107 = load %struct.niu*, %struct.niu** %2, align 8
  %108 = getelementptr inbounds %struct.niu, %struct.niu* %107, i32 0, i32 2
  %109 = load %struct.tx_ring_info*, %struct.tx_ring_info** %108, align 8
  %110 = icmp ne %struct.tx_ring_info* %109, null
  br i1 %110, label %111, label %162

111:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %158, %111
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.niu*, %struct.niu** %2, align 8
  %115 = getelementptr inbounds %struct.niu, %struct.niu* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %161

118:                                              ; preds = %112
  %119 = load %struct.niu*, %struct.niu** %2, align 8
  %120 = getelementptr inbounds %struct.niu, %struct.niu* %119, i32 0, i32 2
  %121 = load %struct.tx_ring_info*, %struct.tx_ring_info** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %121, i64 %123
  store %struct.tx_ring_info* %124, %struct.tx_ring_info** %11, align 8
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %145, %118
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %131 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load %struct.niu*, %struct.niu** %2, align 8
  %141 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @release_tx_packet(%struct.niu* %140, %struct.tx_ring_info* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %129
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %125

148:                                              ; preds = %125
  %149 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %150 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %151 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %153 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %155 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = load %struct.tx_ring_info*, %struct.tx_ring_info** %11, align 8
  %157 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %112

161:                                              ; preds = %112
  br label %162

162:                                              ; preds = %161, %106
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @niu_rbr_add_page(%struct.niu*, %struct.rx_ring_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @release_tx_packet(%struct.niu*, %struct.tx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
