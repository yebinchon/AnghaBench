; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_rx_fixup_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_rx_fixup_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.asix_rx_fixup_info = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [51 x i8] c"asix_rx_fixup() Bad Header Length 0x%x, offset %d\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"asix_rx_fixup() Bad RX Length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"asix_rx_fixup() Bad SKB Length %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asix_rx_fixup_internal(%struct.usbnet* %0, %struct.sk_buff* %1, %struct.asix_rx_fixup_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.asix_rx_fixup_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.asix_rx_fixup_info* %2, %struct.asix_rx_fixup_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %222, %3
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ule i64 %14, %18
  br i1 %19, label %20, label %234

20:                                               ; preds = %11
  store i8* null, i8** %9, align 8
  %21 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %22 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %137, label %25

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %35 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %33, %25
  %39 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %40 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @get_unaligned_le16(i32 %48)
  %50 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %51 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %53 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  br label %234

58:                                               ; preds = %38
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @get_unaligned_le16(i32 %63)
  %65 = shl i32 %64, 16
  %66 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %67 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %71 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %58
  br label %90

77:                                               ; preds = %33
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @get_unaligned_le32(i32 %82)
  %84 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %85 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 4
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %77, %76
  %91 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %92 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 2047
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %99 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %101 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %104 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = xor i32 %105, -1
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 2047
  %109 = icmp ne i32 %102, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %90
  %111 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %112 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %115 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @netdev_err(%struct.TYPE_3__* %113, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %120 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  store i32 0, i32* %4, align 4
  br label %250

121:                                              ; preds = %90
  %122 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %123 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %126 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32* @netdev_alloc_skb_ip_align(%struct.TYPE_3__* %124, i32 %127)
  %129 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %130 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %129, i32 0, i32 3
  store i32* %128, i32** %130, align 8
  %131 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %132 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %250

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %20
  %138 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %139 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %142 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ETH_HLEN, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @VLAN_HLEN, align 4
  %149 = add nsw i32 %147, %148
  %150 = icmp sgt i32 %140, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %137
  %152 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %153 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %156 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @netdev_err(%struct.TYPE_3__* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %160 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @kfree_skb(i32* %161)
  %163 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %164 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %163, i32 0, i32 3
  store i32* null, i32** %164, align 8
  %165 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %166 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  store i32 0, i32* %4, align 4
  br label %250

167:                                              ; preds = %137
  %168 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %169 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %173, %174
  %176 = icmp sgt i32 %170, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %167
  %178 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %179 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %8, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sub nsw i32 %180, %185
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %9, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %8, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %195 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %177, %167
  %197 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %198 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %201 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @skb_put(i32* %199, i32 %202)
  store i8* %203, i8** %10, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %207, %208
  %210 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %211 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @memcpy(i8* %204, i32 %209, i32 %212)
  %214 = load i8*, i8** %9, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %196
  %217 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %218 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %219 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @usbnet_skb_return(%struct.usbnet* %217, i32* %220)
  br label %222

222:                                              ; preds = %216, %196
  %223 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %224 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  %227 = and i32 %226, 65534
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %8, align 4
  %230 = load i8*, i8** %9, align 8
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %233 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %11

234:                                              ; preds = %43, %11
  %235 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %234
  %241 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %242 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %241, i32 0, i32 0
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 (%struct.TYPE_3__*, i8*, i32, ...) @netdev_err(%struct.TYPE_3__* %243, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %246, i32 %247)
  store i32 0, i32* %4, align 4
  br label %250

249:                                              ; preds = %234
  store i32 1, i32* %4, align 4
  br label %250

250:                                              ; preds = %249, %240, %151, %135, %110
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_3__*, i8*, i32, ...) #1

declare dso_local i32* @netdev_alloc_skb_ip_align(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i8* @skb_put(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
