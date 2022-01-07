; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl8169_private = type { i32, i32, i32, i64, i32, i32*, %struct.RxDesc* }
%struct.RxDesc = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RxRES = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Rx ERROR. status = %08x\0A\00", align 1
@RxRWT = common dso_local global i32 0, align 4
@RxRUNT = common dso_local global i32 0, align 4
@RxCRC = common dso_local global i32 0, align 4
@RxFOVF = common dso_local global i32 0, align 4
@RTL_FLAG_TASK_RESET_PENDING = common dso_local global i32 0, align 4
@rx_buf_sz = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_05 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rtl8169_private*, i32)* @rtl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_rx(%struct.net_device* %0, %struct.rtl8169_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RxDesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @NUM_RX_DESC, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %21 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %216, %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %221

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NUM_RX_DESC, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %36, i32 0, i32 6
  %38 = load %struct.RxDesc*, %struct.RxDesc** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %38, i64 %40
  store %struct.RxDesc* %41, %struct.RxDesc** %11, align 8
  %42 = call i32 (...) @rmb()
  %43 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %44 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %48 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @DescOwn, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %32
  br label %221

56:                                               ; preds = %32
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @RxRES, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %114

62:                                               ; preds = %56
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %64 = load i32, i32* @rx_err, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @netif_info(%struct.rtl8169_private* %63, i32 %64, %struct.net_device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @RxRWT, align 4
  %75 = load i32, i32* @RxRUNT, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %62
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @RxCRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @RxFOVF, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %103 = load i32, i32* @RTL_FLAG_TASK_RESET_PENDING, align 4
  %104 = call i32 @rtl_schedule_task(%struct.rtl8169_private* %102, i32 %103)
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %101, %96
  %111 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %112 = load i32, i32* @rx_buf_sz, align 4
  %113 = call i32 @rtl8169_mark_to_asic(%struct.RxDesc* %111, i32 %112)
  br label %197

114:                                              ; preds = %56
  %115 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %116 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le64_to_cpu(i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 16383
  %121 = sub nsw i32 %120, 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @rtl8169_fragmented_frame(i32 %122)
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %114
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %138 = load i32, i32* @rx_buf_sz, align 4
  %139 = call i32 @rtl8169_mark_to_asic(%struct.RxDesc* %137, i32 %138)
  br label %216

140:                                              ; preds = %114
  %141 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %142 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call %struct.sk_buff* @rtl8169_try_rx_copy(i32 %147, %struct.rtl8169_private* %148, i32 %149, i32 %150)
  store %struct.sk_buff* %151, %struct.sk_buff** %13, align 8
  %152 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %153 = load i32, i32* @rx_buf_sz, align 4
  %154 = call i32 @rtl8169_mark_to_asic(%struct.RxDesc* %152, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %140
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %216

163:                                              ; preds = %140
  %164 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @rtl8169_rx_csum(%struct.sk_buff* %164, i32 %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @skb_put(%struct.sk_buff* %167, i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = call i32 @eth_type_trans(%struct.sk_buff* %170, %struct.net_device* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %176 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %178 = call i64 @rtl8169_rx_vlan_skb(%struct.rtl8169_private* %175, %struct.RxDesc* %176, %struct.sk_buff* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %163
  %181 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %182 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %181, i32 0, i32 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %184 = call i32 @napi_gro_receive(i32* %182, %struct.sk_buff* %183)
  br label %185

185:                                              ; preds = %180, %163
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %186
  store i32 %191, i32* %189, align 4
  %192 = load %struct.net_device*, %struct.net_device** %4, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %185, %110
  %198 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %199 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @cpu_to_le32(i32 268427264)
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %197
  %205 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %206 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @RTL_GIGA_MAC_VER_05, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.RxDesc*, %struct.RxDesc** %11, align 8
  %212 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %211, i32 0, i32 0
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %210, %204, %197
  br label %216

216:                                              ; preds = %215, %157, %126
  %217 = load i32, i32* %8, align 4
  %218 = add i32 %217, -1
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %7, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %29

221:                                              ; preds = %55, %29
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %224 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub i32 %222, %225
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %229 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %232 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* %9, align 4
  ret i32 %235
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_info(%struct.rtl8169_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @rtl_schedule_task(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8169_mark_to_asic(%struct.RxDesc*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @rtl8169_fragmented_frame(i32) #1

declare dso_local %struct.sk_buff* @rtl8169_try_rx_copy(i32, %struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl8169_rx_csum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @rtl8169_rx_vlan_skb(%struct.rtl8169_private*, %struct.RxDesc*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
