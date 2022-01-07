; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i8*, i32 }
%struct.smsc95xx_priv = type { i64 }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@RX_STS_FL_ = common dso_local global i32 0, align 4
@RX_STS_ES_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error header=0x%08x\00", align 1
@RX_STS_CRC_ = common dso_local global i32 0, align 4
@RX_STS_TL_ = common dso_local global i32 0, align 4
@RX_STS_RF_ = common dso_local global i32 0, align 4
@RX_STS_LE_ = common dso_local global i32 0, align 4
@RX_STS_FT_ = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"size err header=0x%08x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Error allocating skb\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid rx length<0 %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @smsc95xx_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smsc95xx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %17, %struct.smsc95xx_priv** %6, align 8
  br label %18

18:                                               ; preds = %227, %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %228

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @memcpy(i32* %7, i8* %26, i32 4)
  %28 = call i32 @le32_to_cpus(i32* %7)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @NET_IP_ALIGN, align 4
  %31 = add nsw i32 4, %30
  %32 = call i32 @skb_pull(%struct.sk_buff* %29, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RX_STS_FL_, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @NET_IP_ALIGN, align 4
  %42 = add nsw i32 %40, %41
  %43 = srem i32 %42, 4
  %44 = sub nsw i32 4, %43
  %45 = srem i32 %44, 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RX_STS_ES_, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %121

51:                                               ; preds = %23
  %52 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %53 = call i64 @netif_msg_rx_err(%struct.usbnet* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @devdbg(%struct.usbnet* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @RX_STS_CRC_, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %120

86:                                               ; preds = %59
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @RX_STS_TL_, align 4
  %89 = load i32, i32* @RX_STS_RF_, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %93, %86
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @RX_STS_LE_, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @RX_STS_FT_, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %113 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %111, %106, %101
  br label %120

120:                                              ; preds = %119, %78
  br label %215

121:                                              ; preds = %23
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ETH_FRAME_LEN, align 4
  %124 = add nsw i32 %123, 12
  %125 = icmp sgt i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %131 = call i64 @netif_msg_rx_err(%struct.usbnet* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @devdbg(%struct.usbnet* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %129
  store i32 0, i32* %3, align 4
  br label %243

138:                                              ; preds = %121
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %138
  %146 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %6, align 8
  %147 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @smsc95xx_rx_csum_offload(%struct.sk_buff* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32 @skb_trim(%struct.sk_buff* %154, i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 %162, 24
  %164 = trunc i64 %163 to i32
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  store i32 1, i32* %3, align 4
  br label %243

167:                                              ; preds = %138
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load i32, i32* @GFP_ATOMIC, align 4
  %170 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %168, i32 %169)
  store %struct.sk_buff* %170, %struct.sk_buff** %9, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %172 = icmp ne %struct.sk_buff* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %179 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %243

180:                                              ; preds = %167
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %188, i32 %189)
  %191 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %6, align 8
  %192 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %180
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = call i32 @smsc95xx_rx_csum_offload(%struct.sk_buff* %196)
  br label %198

198:                                              ; preds = %195, %180
  %199 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i32 @skb_trim(%struct.sk_buff* %199, i32 %204)
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 %207, 24
  %209 = trunc i64 %208 to i32
  %210 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %214 = call i32 @usbnet_skb_return(%struct.usbnet* %212, %struct.sk_buff* %213)
  br label %215

215:                                              ; preds = %198, %120
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @skb_pull(%struct.sk_buff* %216, i32 %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @skb_pull(%struct.sk_buff* %224, i32 %225)
  br label %227

227:                                              ; preds = %223, %215
  br label %18

228:                                              ; preds = %18
  %229 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %228
  %237 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %238 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 (%struct.usbnet*, i8*, ...) @devwarn(%struct.usbnet* %237, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %240)
  store i32 0, i32* %3, align 4
  br label %243

242:                                              ; preds = %228
  store i32 1, i32* %3, align 4
  br label %243

243:                                              ; preds = %242, %236, %177, %153, %137
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @smsc95xx_rx_csum_offload(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
