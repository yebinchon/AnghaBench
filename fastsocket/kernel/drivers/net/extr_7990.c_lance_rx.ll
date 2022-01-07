; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lance_private = type { i32, i32, %struct.lance_init_block* }
%struct.lance_init_block = type { i32**, %struct.lance_rx_desc* }
%struct.lance_rx_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@LE_C0_RINT = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_R1_OWN = common dso_local global i32 0, align 4
@LE_R1_POK = common dso_local global i8 0, align 1
@LE_R1_ERR = common dso_local global i8 0, align 1
@LE_R1_BUF = common dso_local global i8 0, align 1
@LE_R1_CRC = common dso_local global i8 0, align 1
@LE_R1_OFL = common dso_local global i8 0, align 1
@LE_R1_FRA = common dso_local global i8 0, align 1
@LE_R1_EOP = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [39 x i8] c"%s: Memory squeeze, deferring packet.\0A\00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_rx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lance_private*, align 8
  %5 = alloca %struct.lance_init_block*, align 8
  %6 = alloca %struct.lance_rx_desc*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.lance_private* @netdev_priv(%struct.net_device* %10)
  store %struct.lance_private* %11, %struct.lance_private** %4, align 8
  %12 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %13 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %12, i32 0, i32 2
  %14 = load %struct.lance_init_block*, %struct.lance_init_block** %13, align 8
  store %struct.lance_init_block* %14, %struct.lance_init_block** %5, align 8
  %15 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %16 = load i32, i32* @LE_C0_RINT, align 4
  %17 = load i32, i32* @LE_C0_INEA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @WRITERDP(%struct.lance_private* %15, i32 %18)
  %20 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %21 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %20, i32 0, i32 1
  %22 = load volatile %struct.lance_rx_desc*, %struct.lance_rx_desc** %21, align 8
  %23 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %24 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %22, i64 %26
  store %struct.lance_rx_desc* %27, %struct.lance_rx_desc** %6, align 8
  br label %28

28:                                               ; preds = %222, %1
  %29 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %30 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %29, i32 0, i32 0
  %31 = load volatile i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* @LE_R1_OWN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %231

38:                                               ; preds = %28
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @LE_R1_POK, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = load i8, i8* @LE_R1_POK, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %222

58:                                               ; preds = %38
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @LE_R1_ERR, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %58
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @LE_R1_BUF, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @LE_R1_CRC, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i8, i8* %7, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @LE_R1_OFL, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load i8, i8* %7, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @LE_R1_FRA, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load i8, i8* %7, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* @LE_R1_EOP, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %117
  br label %205

131:                                              ; preds = %58
  %132 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %133 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %132, i32 0, i32 1
  %134 = load volatile i32, i32* %133, align 4
  %135 = and i32 %134, 4095
  %136 = sub nsw i32 %135, 4
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 2
  %139 = call %struct.sk_buff* @dev_alloc_skb(i32 %138)
  store %struct.sk_buff* %139, %struct.sk_buff** %9, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %141 = icmp ne %struct.sk_buff* %140, null
  br i1 %141, label %167, label %142

142:                                              ; preds = %131
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %145)
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %153 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %152, i32 0, i32 1
  store volatile i32 0, i32* %153, align 4
  %154 = load i32, i32* @LE_R1_OWN, align 4
  %155 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %156 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %155, i32 0, i32 0
  store volatile i32 %154, i32* %156, align 4
  %157 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %158 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %162 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %160, %163
  %165 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %166 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %2, align 4
  br label %232

167:                                              ; preds = %131
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = call i32 @skb_reserve(%struct.sk_buff* %168, i32 2)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @skb_put(%struct.sk_buff* %170, i32 %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %174 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %175 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %174, i32 0, i32 0
  %176 = load volatile i32**, i32*** %175, align 8
  %177 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %178 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %176, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = bitcast i32* %183 to i8*
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %173, i8* %184, i32 %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = call i32 @eth_type_trans(%struct.sk_buff* %187, %struct.net_device* %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = call i32 @netif_rx(%struct.sk_buff* %192)
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.net_device*, %struct.net_device** %3, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, %199
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %167, %130
  br label %206

206:                                              ; preds = %205
  %207 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %208 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %207, i32 0, i32 1
  store volatile i32 0, i32* %208, align 4
  %209 = load i32, i32* @LE_R1_OWN, align 4
  %210 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %6, align 8
  %211 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %210, i32 0, i32 0
  store volatile i32 %209, i32* %211, align 4
  %212 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %213 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  %216 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %217 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %215, %218
  %220 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %221 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %206, %47
  %223 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %224 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %223, i32 0, i32 1
  %225 = load volatile %struct.lance_rx_desc*, %struct.lance_rx_desc** %224, align 8
  %226 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %227 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %225, i64 %229
  store %struct.lance_rx_desc* %230, %struct.lance_rx_desc** %6, align 8
  br label %28

231:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %231, %142
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
