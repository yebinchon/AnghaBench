; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.e1000_adapter = type { i64, i64, i32, %struct.e1000_ring*, %struct.e1000_ring*, i32 }
%struct.e1000_ring = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@E1000_MIN_RXD = common dso_local global i32 0, align 4
@E1000_MAX_RXD = common dso_local global i32 0, align 4
@REQ_RX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@E1000_MIN_TXD = common dso_local global i32 0, align 4
@E1000_MAX_TXD = common dso_local global i32 0, align 4
@REQ_TX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @e1000_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_ring*, align 8
  %8 = alloca %struct.e1000_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %6, align 8
  store %struct.e1000_ring* null, %struct.e1000_ring** %7, align 8
  store %struct.e1000_ring* null, %struct.e1000_ring** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %229

29:                                               ; preds = %21
  %30 = load i32, i32* @u32, align 4
  %31 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @E1000_MIN_RXD, align 4
  %35 = load i32, i32* @E1000_MAX_RXD, align 4
  %36 = call i64 @clamp_t(i32 %30, i32 %33, i32 %34, i32 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* @REQ_RX_DESCRIPTOR_MULTIPLE, align 4
  %39 = call i64 @ALIGN(i64 %37, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* @u32, align 4
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @E1000_MIN_TXD, align 4
  %45 = load i32, i32* @E1000_MAX_TXD, align 4
  %46 = call i64 @clamp_t(i32 %40, i32 %43, i32 %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* @REQ_TX_DESCRIPTOR_MULTIPLE, align 4
  %49 = call i64 @ALIGN(i64 %47, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %29
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %229

62:                                               ; preds = %55, %29
  br label %63

63:                                               ; preds = %69, %62
  %64 = load i32, i32* @__E1000_RESETTING, align 4
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 2
  %67 = call i64 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %63

71:                                               ; preds = %63
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netif_running(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %79, i32 0, i32 4
  %81 = load %struct.e1000_ring*, %struct.e1000_ring** %80, align 8
  %82 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %84, i32 0, i32 3
  %86 = load %struct.e1000_ring*, %struct.e1000_ring** %85, align 8
  %87 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %86, i32 0, i32 0
  store i64 %83, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %223

94:                                               ; preds = %71
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %94
  %110 = load i32, i32* %10, align 4
  %111 = call %struct.e1000_ring* @vmalloc(i32 %110)
  store %struct.e1000_ring* %111, %struct.e1000_ring** %7, align 8
  %112 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %113 = icmp ne %struct.e1000_ring* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %218

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %94
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = call %struct.e1000_ring* @vmalloc(i32 %122)
  store %struct.e1000_ring* %123, %struct.e1000_ring** %8, align 8
  %124 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %125 = icmp ne %struct.e1000_ring* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %218

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %118
  %131 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %132 = call i32 @e1000e_down(%struct.e1000_adapter* %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %137 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %137, i32 0, i32 4
  %139 = load %struct.e1000_ring*, %struct.e1000_ring** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @memcpy(%struct.e1000_ring* %136, %struct.e1000_ring* %139, i32 %140)
  %142 = load i64, i64* %14, align 8
  %143 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %144 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %146 = call i32 @e1000e_setup_tx_resources(%struct.e1000_ring* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %215

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %130
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %156 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %156, i32 0, i32 3
  %158 = load %struct.e1000_ring*, %struct.e1000_ring** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @memcpy(%struct.e1000_ring* %155, %struct.e1000_ring* %158, i32 %159)
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %163 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %165 = call i32 @e1000e_setup_rx_resources(%struct.e1000_ring* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %154
  br label %205

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %151
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %175 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %174, i32 0, i32 4
  %176 = load %struct.e1000_ring*, %struct.e1000_ring** %175, align 8
  %177 = call i32 @e1000e_free_tx_resources(%struct.e1000_ring* %176)
  %178 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %179 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %178, i32 0, i32 4
  %180 = load %struct.e1000_ring*, %struct.e1000_ring** %179, align 8
  %181 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @memcpy(%struct.e1000_ring* %180, %struct.e1000_ring* %181, i32 %182)
  %184 = load i64, i64* %14, align 8
  %185 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %186 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %173, %170
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %192 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %191, i32 0, i32 3
  %193 = load %struct.e1000_ring*, %struct.e1000_ring** %192, align 8
  %194 = call i32 @e1000e_free_rx_resources(%struct.e1000_ring* %193)
  %195 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %196 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %195, i32 0, i32 3
  %197 = load %struct.e1000_ring*, %struct.e1000_ring** %196, align 8
  %198 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @memcpy(%struct.e1000_ring* %197, %struct.e1000_ring* %198, i32 %199)
  %201 = load i64, i64* %13, align 8
  %202 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %203 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %190, %187
  br label %205

205:                                              ; preds = %204, %168
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %213 = call i32 @e1000e_free_tx_resources(%struct.e1000_ring* %212)
  br label %214

214:                                              ; preds = %211, %208, %205
  br label %215

215:                                              ; preds = %214, %149
  %216 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %217 = call i32 @e1000e_up(%struct.e1000_adapter* %216)
  br label %218

218:                                              ; preds = %215, %126, %114
  %219 = load %struct.e1000_ring*, %struct.e1000_ring** %7, align 8
  %220 = call i32 @vfree(%struct.e1000_ring* %219)
  %221 = load %struct.e1000_ring*, %struct.e1000_ring** %8, align 8
  %222 = call i32 @vfree(%struct.e1000_ring* %221)
  br label %223

223:                                              ; preds = %218, %77
  %224 = load i32, i32* @__E1000_RESETTING, align 4
  %225 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %226 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %225, i32 0, i32 2
  %227 = call i32 @clear_bit(i32 %224, i32* %226)
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %223, %61, %26
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.e1000_ring* @vmalloc(i32) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*) #1

declare dso_local i32 @memcpy(%struct.e1000_ring*, %struct.e1000_ring*, i32) #1

declare dso_local i32 @e1000e_setup_tx_resources(%struct.e1000_ring*) #1

declare dso_local i32 @e1000e_setup_rx_resources(%struct.e1000_ring*) #1

declare dso_local i32 @e1000e_free_tx_resources(%struct.e1000_ring*) #1

declare dso_local i32 @e1000e_free_rx_resources(%struct.e1000_ring*) #1

declare dso_local i32 @e1000e_up(%struct.e1000_adapter*) #1

declare dso_local i32 @vfree(%struct.e1000_ring*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
