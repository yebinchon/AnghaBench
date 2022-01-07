; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_corkscrew_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_corkscrew_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"   In rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RxStatus = common dso_local global i64 0, align 8
@RxErrors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c" Rx error: status %2.2x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Receiving packet size %d status %4.4x.\0A\00", align 1
@RX_FIFO = common dso_local global i64 0, align 8
@RxDiscard = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@CmdInProgress = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: Couldn't allocate a sk_buff of size %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @corkscrew_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @corkscrew_debug, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @EL3_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call signext i16 @inw(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @RxStatus, align 8
  %23 = add nsw i64 %21, %22
  %24 = call signext i16 @inw(i64 %23)
  %25 = sext i16 %24 to i32
  %26 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i16 signext %19, i32 %25)
  br label %27

27:                                               ; preds = %14, %1
  br label %28

28:                                               ; preds = %241, %197, %27
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @RxStatus, align 8
  %32 = add nsw i64 %30, %31
  %33 = call signext i16 @inw(i64 %32)
  store i16 %33, i16* %5, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %242

36:                                               ; preds = %28
  %37 = load i16, i16* %5, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %38, 16384
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %114

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @RxErrors, align 8
  %45 = add nsw i64 %43, %44
  %46 = call zeroext i8 @inb(i64 %45)
  store i8 %46, i8* %6, align 1
  %47 = load i32, i32* @corkscrew_debug, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i16
  %52 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i16 signext %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i8, i8* %6, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i8, i8* %6, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 16
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  br label %210

114:                                              ; preds = %36
  %115 = load i16, i16* %5, align 2
  %116 = sext i16 %115 to i32
  %117 = and i32 %116, 8191
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %7, align 2
  %119 = load i16, i16* %7, align 2
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %120, 5
  %122 = add nsw i32 %121, 2
  %123 = trunc i32 %122 to i16
  %124 = call %struct.sk_buff* @dev_alloc_skb(i16 signext %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %8, align 8
  %125 = load i32, i32* @corkscrew_debug, align 4
  %126 = icmp sgt i32 %125, 4
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load i16, i16* %7, align 2
  %129 = load i16, i16* %5, align 2
  %130 = sext i16 %129 to i32
  %131 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i16 signext %128, i32 %130)
  br label %132

132:                                              ; preds = %127, %114
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = icmp ne %struct.sk_buff* %133, null
  br i1 %134, label %135, label %198

135:                                              ; preds = %132
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @skb_reserve(%struct.sk_buff* %136, i32 2)
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @RX_FIFO, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = load i16, i16* %7, align 2
  %144 = call i32 @skb_put(%struct.sk_buff* %142, i16 signext %143)
  %145 = load i16, i16* %7, align 2
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %146, 3
  %148 = ashr i32 %147, 2
  %149 = trunc i32 %148 to i16
  %150 = call i32 @insl(i64 %141, i32 %144, i16 signext %149)
  %151 = load i32, i32* @RxDiscard, align 4
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @EL3_CMD, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outw(i32 %151, i64 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = call i32 @eth_type_trans(%struct.sk_buff* %157, %struct.net_device* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = call i32 @netif_rx(%struct.sk_buff* %162)
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load i16, i16* %7, align 2
  %170 = sext i16 %169 to i32
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i16, i16* %173, align 4
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %175, %170
  %177 = trunc i32 %176 to i16
  store i16 %177, i16* %173, align 4
  store i32 200, i32* %4, align 4
  br label %178

178:                                              ; preds = %194, %135
  %179 = load i32, i32* %4, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %178
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* @EL3_STATUS, align 8
  %185 = add nsw i64 %183, %184
  %186 = call signext i16 @inw(i64 %185)
  %187 = sext i16 %186 to i32
  %188 = load i16, i16* @CmdInProgress, align 2
  %189 = sext i16 %188 to i32
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %181
  br label %197

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %4, align 4
  br label %178

197:                                              ; preds = %192, %178
  br label %28

198:                                              ; preds = %132
  %199 = load i32, i32* @corkscrew_debug, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load %struct.net_device*, %struct.net_device** %2, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 1
  %204 = load i16, i16* %203, align 4
  %205 = load i16, i16* %7, align 2
  %206 = sext i16 %205 to i32
  %207 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i16 signext %204, i32 %206)
  br label %208

208:                                              ; preds = %201, %198
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209, %113
  %211 = load i32, i32* @RxDiscard, align 4
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @EL3_CMD, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @outw(i32 %211, i64 %215)
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  store i32 200, i32* %4, align 4
  br label %222

222:                                              ; preds = %238, %210
  %223 = load i32, i32* %4, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %222
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @EL3_STATUS, align 8
  %229 = add nsw i64 %227, %228
  %230 = call signext i16 @inw(i64 %229)
  %231 = sext i16 %230 to i32
  %232 = load i16, i16* @CmdInProgress, align 2
  %233 = sext i16 %232 to i32
  %234 = and i32 %231, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %225
  br label %241

237:                                              ; preds = %225
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %4, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %4, align 4
  br label %222

241:                                              ; preds = %236, %222
  br label %28

242:                                              ; preds = %28
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i16 signext, ...) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insl(i64, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
