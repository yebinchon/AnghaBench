; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_slowpath_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_slowpath_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.tx_ring_info*, %struct.rx_ring_info* }
%struct.tx_ring_info = type { i32 }
%struct.rx_ring_info = type { i32 }
%struct.niu_ldg = type { i32, i32, i32 }

@RX_DMA_CTL_STAT_MEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.niu_ldg*, i32, i32, i32)* @niu_slowpath_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_slowpath_interrupt(%struct.niu* %0, %struct.niu_ldg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.niu_ldg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_ring_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tx_ring_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %6, align 8
  store %struct.niu_ldg* %1, %struct.niu_ldg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %24 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %27 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %30 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, 4294967295
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %78, %35
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.niu*, %struct.niu** %6, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load %struct.niu*, %struct.niu** %6, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 3
  %46 = load %struct.rx_ring_info*, %struct.rx_ring_info** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %46, i64 %48
  store %struct.rx_ring_info* %49, %struct.rx_ring_info** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %52 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %43
  %58 = load %struct.niu*, %struct.niu** %6, align 8
  %59 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %60 = call i32 @niu_rx_error(%struct.niu* %58, %struct.rx_ring_info* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %12, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %70 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RX_DMA_CTL_STAT(i32 %71)
  %73 = load i32, i32* @RX_DMA_CTL_STAT_MEX, align 4
  %74 = call i32 @nw64(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %37

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %81, %5
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, 9223372032559808512
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 32
  %90 = and i32 %89, 2147483647
  store i32 %90, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %121, %87
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.niu*, %struct.niu** %6, align 8
  %94 = getelementptr inbounds %struct.niu, %struct.niu* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %91
  %98 = load %struct.niu*, %struct.niu** %6, align 8
  %99 = getelementptr inbounds %struct.niu, %struct.niu* %98, i32 0, i32 2
  %100 = load %struct.tx_ring_info*, %struct.tx_ring_info** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %100, i64 %102
  store %struct.tx_ring_info* %103, %struct.tx_ring_info** %17, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.tx_ring_info*, %struct.tx_ring_info** %17, align 8
  %106 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = load %struct.niu*, %struct.niu** %6, align 8
  %113 = load %struct.tx_ring_info*, %struct.tx_ring_info** %17, align 8
  %114 = call i32 @niu_tx_error(%struct.niu* %112, %struct.tx_ring_info* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %117, %111
  br label %120

120:                                              ; preds = %119, %97
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %91

124:                                              ; preds = %91
  br label %125

125:                                              ; preds = %124, %82
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = and i64 %129, -9223372036854775808
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.niu*, %struct.niu** %6, align 8
  %134 = call i32 @niu_mif_interrupt(%struct.niu* %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %19, align 4
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %137, %132
  br label %140

140:                                              ; preds = %139, %125
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %168

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = and i32 %144, 495
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load %struct.niu*, %struct.niu** %6, align 8
  %149 = call i32 @niu_mac_interrupt(%struct.niu* %148)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %152, %147
  br label %155

155:                                              ; preds = %154, %143
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 528
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load %struct.niu*, %struct.niu** %6, align 8
  %161 = call i32 @niu_device_error(%struct.niu* %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %21, align 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %155
  br label %168

168:                                              ; preds = %167, %140
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.niu*, %struct.niu** %6, align 8
  %173 = call i32 @niu_enable_interrupts(%struct.niu* %172, i32 0)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %12, align 4
  ret i32 %175
}

declare dso_local i32 @niu_rx_error(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @niu_tx_error(%struct.niu*, %struct.tx_ring_info*) #1

declare dso_local i32 @niu_mif_interrupt(%struct.niu*) #1

declare dso_local i32 @niu_mac_interrupt(%struct.niu*) #1

declare dso_local i32 @niu_device_error(%struct.niu*) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
