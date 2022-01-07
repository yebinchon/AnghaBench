; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i8*, i32 (%struct.i2400m*)*, i32, %struct.i2400m_msg_hdr*, i32 }
%struct.i2400m_msg_hdr = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@I2400M_PT_RESET_WARM = common dso_local global i32 0, align 4
@I2400M_PT_RESET_COLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(i2400m %p skb %p [%zu bytes] pt %u)\0A\00", align 1
@I2400M_PL_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"padded_len %zd buf_len %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"closing TX message (fits %u singleton %u num_pls %u)\0A\00", align 1
@I2400M_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"TX: message too big, going new\0A\00", align 1
@TAIL_FULL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"pl append: tail full\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"pl append: all full\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"pld 0x%08x (type 0x%1x len 0x%04zx\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"TX: appended %zu b (up to %u b) pl #%u \0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"TX: appended hdr @%zu %zu b pl #%u @%zu %zu/%zu b\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"(i2400m %p skb %p [%zu bytes] pt %u) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_tx(%struct.i2400m* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2400m_msg_hdr*, align 8
  %16 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %20 = call %struct.device* @i2400m_dev(%struct.i2400m* %19)
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @I2400M_PT_RESET_WARM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I2400M_PT_RESET_COLD, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i1 [ true, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @d_fnstart(i32 3, %struct.device* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %32, i8* %33, i64 %34, i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %39 = call i64 @ALIGN(i64 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 5, %struct.device* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %45 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %44, i32 0, i32 2
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %137, %28
  %49 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %50 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %49, i32 0, i32 3
  %51 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %50, align 8
  %52 = icmp eq %struct.i2400m_msg_hdr* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %58 = call i32 @i2400m_tx_new(%struct.i2400m* %57)
  br label %96

59:                                               ; preds = %48
  %60 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %61 = call i32 @i2400m_tx_fits(%struct.i2400m* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %68 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %67, i32 0, i32 3
  %69 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %68, align 8
  %70 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %66, %63
  %74 = phi i1 [ false, %63 ], [ %72, %66 ]
  br label %75

75:                                               ; preds = %73, %59
  %76 = phi i1 [ true, %59 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %10, align 8
  %82 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %83 = call i32 @i2400m_tx_fits(%struct.i2400m* %82)
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %86 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %85, i32 0, i32 3
  %87 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %86, align 8
  %88 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84, i64 %89)
  %91 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %92 = call i32 @i2400m_tx_close(%struct.i2400m* %91)
  %93 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %94 = call i32 @i2400m_tx_new(%struct.i2400m* %93)
  br label %95

95:                                               ; preds = %80, %75
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %98 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %97, i32 0, i32 3
  %99 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %98, align 8
  %100 = icmp eq %struct.i2400m_msg_hdr* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %246

102:                                              ; preds = %96
  %103 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %104 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %103, i32 0, i32 3
  %105 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %104, align 8
  %106 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %107, %108
  %110 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %111 = sdiv i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = icmp ugt i64 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %10, align 8
  %116 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %118 = call i32 @i2400m_tx_close(%struct.i2400m* %117)
  %119 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %120 = call i32 @i2400m_tx_new(%struct.i2400m* %119)
  br label %121

121:                                              ; preds = %114, %102
  %122 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %123 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %122, i32 0, i32 3
  %124 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %123, align 8
  %125 = icmp eq %struct.i2400m_msg_hdr* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %246

127:                                              ; preds = %121
  %128 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %131 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @i2400m_tx_fifo_push(%struct.i2400m* %128, i64 %129, i32 %132)
  store i8* %133, i8** %13, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i8*, i8** @TAIL_FULL, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %10, align 8
  %139 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %141 = call i32 @i2400m_tx_close(%struct.i2400m* %140)
  %142 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %143 = call i32 @i2400m_tx_skip_tail(%struct.i2400m* %142)
  br label %48

144:                                              ; preds = %127
  %145 = load i8*, i8** %13, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* @ENOSPC, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %9, align 4
  %150 = load %struct.device*, %struct.device** %10, align 8
  %151 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %244

152:                                              ; preds = %144
  %153 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %154 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %153, i32 0, i32 3
  %155 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %154, align 8
  store %struct.i2400m_msg_hdr* %155, %struct.i2400m_msg_hdr** %15, align 8
  %156 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %157 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i8* @le16_to_cpu(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %16, align 4
  %162 = load i8*, i8** %13, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @memcpy(i8* %162, i8* %163, i64 %164)
  %166 = load i8*, i8** %13, align 8
  %167 = load i64, i64* %7, align 8
  %168 = getelementptr i8, i8* %166, i64 %167
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %7, align 8
  %171 = sub i64 %169, %170
  %172 = call i32 @memset(i8* %168, i32 173, i64 %171)
  %173 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %174 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = load i64, i64* %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @i2400m_pld_set(%struct.TYPE_2__* %178, i64 %179, i32 %180)
  %182 = load %struct.device*, %struct.device** %10, align 8
  %183 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %184 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = load i64, i64* %7, align 8
  %194 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 3, %struct.device* %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %191, i32 %192, i64 %193)
  %195 = load i32, i32* %16, align 4
  %196 = add i32 %195, 1
  %197 = call i8* @le16_to_cpu(i32 %196)
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %200 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %203 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, %201
  store i64 %205, i64* %203, align 8
  %206 = load %struct.device*, %struct.device** %10, align 8
  %207 = load i64, i64* %12, align 8
  %208 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %209 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = add i32 %211, 1
  %213 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %206, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %207, i64 %210, i32 %212)
  %214 = load %struct.device*, %struct.device** %10, align 8
  %215 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %216 = bitcast %struct.i2400m_msg_hdr* %215 to i8*
  %217 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %218 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = ptrtoint i8* %216 to i64
  %221 = ptrtoint i8* %219 to i64
  %222 = sub i64 %220, %221
  %223 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %15, align 8
  %224 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add i32 %226, 1
  %228 = load i8*, i8** %13, align 8
  %229 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %230 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = ptrtoint i8* %228 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = load i64, i64* %7, align 8
  %236 = load i64, i64* %12, align 8
  %237 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %214, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 %222, i64 %225, i32 %227, i64 %234, i64 %235, i64 %236)
  store i32 0, i32* %9, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %152
  %241 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %242 = call i32 @i2400m_tx_close(%struct.i2400m* %241)
  br label %243

243:                                              ; preds = %240, %152
  br label %244

244:                                              ; preds = %243, %147
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245, %126, %101
  %247 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %248 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %247, i32 0, i32 2
  %249 = load i64, i64* %11, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  %251 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %252 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %251, i32 0, i32 1
  %253 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %252, align 8
  %254 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %255 = call i32 %253(%struct.i2400m* %254)
  %256 = load %struct.device*, %struct.device** %10, align 8
  %257 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = load i64, i64* %7, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @d_fnend(i32 3, %struct.device* %256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), %struct.i2400m* %257, i8* %258, i64 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %9, align 4
  ret i32 %263
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i2400m_tx_new(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_fits(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_close(%struct.i2400m*) #1

declare dso_local i8* @i2400m_tx_fifo_push(%struct.i2400m*, i64, i32) #1

declare dso_local i32 @i2400m_tx_skip_tail(%struct.i2400m*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @i2400m_pld_set(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
