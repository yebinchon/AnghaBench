; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.w6692_hw* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__, %struct.w6692_hw* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"w6692.%d\00", align 1
@w6692_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@MAX_DFRAME_LEN_L1 = common dso_local global i32 0, align 4
@W6692_ph_bh = common dso_local global i32 0, align 4
@ISDN_P_TE_S0 = common dso_local global i32 0, align 4
@w6692_l2l1D = common dso_local global i32 0, align 4
@w6692_dctrl = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4
@MAX_DATA_MEM = common dso_local global i32 0, align 4
@w6692_l2l1B = common dso_local global i32 0, align 4
@w6692_bctrl = common dso_local global i32 0, align 4
@w6692_l1callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"W6692 %d cards installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_hw*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.w6692_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load i32, i32* @w6692_cnt, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @snprintf(i32 %9, i64 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %15)
  %17 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %18 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %18, i32* @Cards)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %20)
  %22 = load i32, i32* @w6692_cnt, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %25 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %27 = call i32 @_set_debug(%struct.w6692_hw* %26)
  %28 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %29 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %28, i32 0, i32 8
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %32 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %31, i32 0, i32 2
  %33 = load i32, i32* @MAX_DFRAME_LEN_L1, align 4
  %34 = load i32, i32* @W6692_ph_bh, align 4
  %35 = call i32 @mISDN_initdchannel(%struct.TYPE_17__* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @ISDN_P_TE_S0, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %39 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load i32, i32* @w6692_l2l1D, align 4
  %43 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %44 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @w6692_dctrl, align 4
  %49 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %50 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @ISDN_P_B_RAW, align 4
  %55 = load i32, i32* @ISDN_P_B_MASK, align 4
  %56 = and i32 %54, %55
  %57 = shl i32 1, %56
  %58 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %59 = load i32, i32* @ISDN_P_B_MASK, align 4
  %60 = and i32 %58, %59
  %61 = shl i32 1, %60
  %62 = or i32 %57, %61
  %63 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %64 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %68 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %69 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  store %struct.w6692_hw* %67, %struct.w6692_hw** %70, align 8
  %71 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %72 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  store i32 2, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %160, %1
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %163

78:                                               ; preds = %75
  %79 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %80 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* @MAX_DATA_MEM, align 4
  %87 = call i32 @mISDN_initbchannel(%struct.TYPE_18__* %85, i32 %86)
  %88 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %89 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %90 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %89, i32 0, i32 3
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  store %struct.w6692_hw* %88, %struct.w6692_hw** %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %100 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %99, i32 0, i32 3
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %98, i32* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  %109 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %110 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 %108, i32* %117, align 4
  %118 = load i32, i32* @w6692_l2l1B, align 4
  %119 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %120 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %119, i32 0, i32 3
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  store i32 %118, i32* %127, align 4
  %128 = load i32, i32* @w6692_bctrl, align 4
  %129 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %130 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %129, i32 0, i32 3
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store i32 %128, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  %140 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %141 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @set_channelmap(i32 %139, i32 %144)
  %146 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %147 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %146, i32 0, i32 3
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %156 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = call i32 @list_add(i32* %154, i32* %158)
  br label %160

160:                                              ; preds = %78
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %75

163:                                              ; preds = %75
  %164 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %165 = call i32 @setup_w6692(%struct.w6692_hw* %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %218

169:                                              ; preds = %163
  %170 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %171 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %174 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %173, i32 0, i32 7
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %178 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mISDN_register_device(%struct.TYPE_16__* %172, i32* %176, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %213

184:                                              ; preds = %169
  %185 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %186 = call i32 @init_card(%struct.w6692_hw* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %208

190:                                              ; preds = %184
  %191 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %192 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %191, i32 0, i32 2
  %193 = load i32, i32* @w6692_l1callback, align 4
  %194 = call i32 @create_l1(%struct.TYPE_17__* %192, i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* @w6692_cnt, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @w6692_cnt, align 4
  %200 = load i32, i32* @w6692_cnt, align 4
  %201 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  store i32 0, i32* %2, align 4
  br label %244

202:                                              ; preds = %190
  %203 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %204 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %207 = call i32 @free_irq(i32 %205, %struct.w6692_hw* %206)
  br label %208

208:                                              ; preds = %202, %189
  %209 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %210 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = call i32 @mISDN_unregister_device(%struct.TYPE_16__* %211)
  br label %213

213:                                              ; preds = %208, %183
  %214 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %215 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @release_region(i32 %216, i32 256)
  br label %218

218:                                              ; preds = %213, %168
  %219 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %220 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %219, i32 0, i32 3
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i64 1
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = call i32 @mISDN_freebchannel(%struct.TYPE_18__* %223)
  %225 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %226 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %225, i32 0, i32 3
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = call i32 @mISDN_freebchannel(%struct.TYPE_18__* %229)
  %231 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %232 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %231, i32 0, i32 2
  %233 = call i32 @mISDN_freedchannel(%struct.TYPE_17__* %232)
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %234)
  %236 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %237 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %236, i32 0, i32 1
  %238 = call i32 @list_del(i32* %237)
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %239)
  %241 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %242 = call i32 @kfree(%struct.w6692_hw* %241)
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %218, %197
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.w6692_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mISDN_initdchannel(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @setup_w6692(%struct.w6692_hw*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @init_card(%struct.w6692_hw*) #1

declare dso_local i32 @create_l1(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.w6692_hw*) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @mISDN_freebchannel(%struct.TYPE_18__*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.TYPE_17__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
