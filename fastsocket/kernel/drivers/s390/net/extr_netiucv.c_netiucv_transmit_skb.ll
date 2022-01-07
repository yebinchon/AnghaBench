; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i64, i64, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i64, i32, %struct.ll_header* }
%struct.ll_header = type { i64 }
%struct.iucv_message = type { i32, i64 }
%struct.netiucv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CONN_STATE_IDLE = common dso_local global i64 0, align 8
@NETIUCV_HDRLEN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EBUSY from netiucv_transmit_skb\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONN_STATE_TX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"rc %d from iucv_send\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_connection*, %struct.sk_buff*)* @netiucv_transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netiucv_transmit_skb(%struct.iucv_connection* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iucv_connection*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iucv_message, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ll_header, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netiucv_priv*, align 8
  store %struct.iucv_connection* %0, %struct.iucv_connection** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %16 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @fsm_getstate(i32 %17)
  %19 = load i64, i64* @CONN_STATE_IDLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %29 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %28, i32 0, i32 7
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %33 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %39 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %21
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @data, align 4
  %48 = call i32 @IUCV_DBF_TEXT(i32 %47, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

49:                                               ; preds = %21
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = call i32 @atomic_inc(i32* %51)
  %53 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %54 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %53, i32 0, i32 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_queue_tail(i32* %54, %struct.sk_buff* %55)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %60 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %49, %44
  %64 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %65 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %64, i32 0, i32 7
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %255

68:                                               ; preds = %2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @skb_tail_pointer(%struct.sk_buff* %70)
  %72 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %73 = add nsw i64 %71, %72
  %74 = lshr i64 %73, 31
  store i64 %74, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_tailroom(%struct.sk_buff* %78)
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %118

81:                                               ; preds = %77, %68
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = load i32, i32* @GFP_DMA, align 4
  %91 = or i32 %89, %90
  %92 = call %struct.sk_buff* @alloc_skb(i64 %88, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %11, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* @data, align 4
  %97 = call i32 @IUCV_DBF_TEXT(i32 %96, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %257

101:                                              ; preds = %81
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %104 = call i32 @skb_reserve(%struct.sk_buff* %102, i64 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @skb_put(%struct.sk_buff* %105, i64 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 2
  %112 = load %struct.ll_header*, %struct.ll_header** %111, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i32 %109, %struct.ll_header* %112, i64 %115)
  br label %117

117:                                              ; preds = %101
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %77
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %123 = add nsw i64 %121, %122
  %124 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %8, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %127 = call i32 @skb_push(%struct.sk_buff* %125, i64 %126)
  %128 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %129 = call i32 @memcpy(i32 %127, %struct.ll_header* %8, i64 %128)
  %130 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %8, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %133 = call i32 @skb_put(%struct.sk_buff* %131, i64 %132)
  %134 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %135 = call i32 @memcpy(i32 %133, %struct.ll_header* %8, i64 %134)
  %136 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %137 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* @CONN_STATE_TX, align 8
  %140 = call i32 @fsm_newstate(i32 %138, i64 %139)
  %141 = call i32 (...) @current_kernel_time()
  %142 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %143 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i32 %141, i32* %144, align 4
  %145 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %6, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %6, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %148 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  %152 = load %struct.ll_header*, %struct.ll_header** %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @iucv_message_send(i32 %149, %struct.iucv_message* %6, i32 0, i32 0, %struct.ll_header* %152, i64 %155)
  store i32 %156, i32* %9, align 4
  %157 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %158 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %166 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, %164
  store i64 %169, i64* %167, align 8
  %170 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %171 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %176 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %180 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %178, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %118
  %185 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %186 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %190 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store i64 %188, i64* %191, align 8
  br label %192

192:                                              ; preds = %184, %118
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %240

195:                                              ; preds = %192
  %196 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %197 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* @CONN_STATE_IDLE, align 8
  %200 = call i32 @fsm_newstate(i32 %198, i64 %199)
  %201 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %202 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, -1
  store i64 %205, i64* %203, align 8
  %206 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %207 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call %struct.netiucv_priv* @netdev_priv(i32 %208)
  store %struct.netiucv_priv* %209, %struct.netiucv_priv** %14, align 8
  %210 = load %struct.netiucv_priv*, %struct.netiucv_priv** %14, align 8
  %211 = icmp ne %struct.netiucv_priv* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %195
  %213 = load %struct.netiucv_priv*, %struct.netiucv_priv** %14, align 8
  %214 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212, %195
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %223 = call i32 @dev_kfree_skb(%struct.sk_buff* %222)
  br label %236

224:                                              ; preds = %218
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %227 = call i32 @skb_pull(%struct.sk_buff* %225, i64 %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %233 = sub nsw i64 %231, %232
  %234 = trunc i64 %233 to i32
  %235 = call i32 @skb_trim(%struct.sk_buff* %228, i32 %234)
  br label %236

236:                                              ; preds = %224, %221
  %237 = load i32, i32* @data, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @IUCV_DBF_TEXT_(i32 %237, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %238)
  br label %254

240:                                              ; preds = %192
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %245 = call i32 @dev_kfree_skb(%struct.sk_buff* %244)
  br label %246

246:                                              ; preds = %243, %240
  %247 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 1
  %249 = call i32 @atomic_inc(i32* %248)
  %250 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %251 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %250, i32 0, i32 2
  %252 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %253 = call i32 @skb_queue_tail(i32* %251, %struct.sk_buff* %252)
  br label %254

254:                                              ; preds = %246, %236
  br label %255

255:                                              ; preds = %254, %63
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %255, %95
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ll_header*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @fsm_newstate(i32, i64) #1

declare dso_local i32 @current_kernel_time(...) #1

declare dso_local i32 @iucv_message_send(i32, %struct.iucv_message*, i32, i32, %struct.ll_header*, i64) #1

declare dso_local %struct.netiucv_priv* @netdev_priv(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @IUCV_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
