; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw*, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32** }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ath_common = type { i32, i32, i32, %struct.ath9k_htc_priv*, i32, %struct.ath_hw*, i32*, %struct.TYPE_6__* }

@OP_INVALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AH_USE_EEPROM = common dso_local global i32 0, align 4
@ath9k_regread = common dso_local global i32 0, align 4
@ath9k_multi_regread = common dso_local global i32 0, align 4
@ath9k_regwrite = common dso_local global i32 0, align 4
@ath9k_enable_regwrite_buffer = common dso_local global i32 0, align 4
@ath9k_regwrite_flush = common dso_local global i32 0, align 4
@ath9k_reg_rmw = common dso_local global i32 0, align 4
@ath9k_usb_bus_ops = common dso_local global i32 0, align 4
@ath9k_debug = common dso_local global i32 0, align 4
@ath9k_htc_btcoex_enable = common dso_local global i32 0, align 4
@ath9k_rx_tasklet = common dso_local global i32 0, align 4
@ath9k_tx_failed_tasklet = common dso_local global i32 0, align 4
@ath9k_htc_ani_work = common dso_local global i32 0, align 4
@ath9k_ps_work = common dso_local global i32 0, align 4
@ath9k_fatal_work = common dso_local global i32 0, align 4
@ath9k_htc_tx_cleanup_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to initialize hardware; initialization status: %d\0A\00", align 1
@ATH9K_HTC_MAX_BCN_VIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, i32, i8*, i32)* @ath9k_init_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_priv(%struct.ath9k_htc_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_htc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ath_hw* null, %struct.ath_hw** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @OP_INVALID, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 12
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ath_hw* @kzalloc(i32 36, i32 %19)
  store %struct.ath_hw* %20, %struct.ath_hw** %10, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %22 = icmp ne %struct.ath_hw* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %193

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @AH_USE_EEPROM, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @ath9k_regread, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ath9k_multi_regread, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ath9k_regwrite, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @ath9k_enable_regwrite_buffer, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ath9k_regwrite_flush, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %58 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ath9k_reg_rmw, align 4
  %61 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %65, i32 0, i32 0
  store %struct.ath_hw* %64, %struct.ath_hw** %66, align 8
  %67 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %68 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %67)
  store %struct.ath_common* %68, %struct.ath_common** %11, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  %71 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %72 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %71, i32 0, i32 7
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %72, align 8
  %73 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %74 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %73, i32 0, i32 6
  store i32* @ath9k_usb_bus_ops, i32** %74, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %76 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %77 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %76, i32 0, i32 5
  store %struct.ath_hw* %75, %struct.ath_hw** %77, align 8
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %79 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %82 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %84 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %85 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %84, i32 0, i32 3
  store %struct.ath9k_htc_priv* %83, %struct.ath9k_htc_priv** %85, align 8
  %86 = load i32, i32* @ath9k_debug, align 4
  %87 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %88 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @ath9k_htc_btcoex_enable, align 4
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %93 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 10
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %102 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %101, i32 0, i32 9
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %105 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %104, i32 0, i32 8
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %108 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %107, i32 0, i32 7
  %109 = load i32, i32* @ath9k_rx_tasklet, align 4
  %110 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %111 = ptrtoint %struct.ath9k_htc_priv* %110 to i64
  %112 = call i32 @tasklet_init(i32* %108, i32 %109, i64 %111)
  %113 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %114 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %113, i32 0, i32 6
  %115 = load i32, i32* @ath9k_tx_failed_tasklet, align 4
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %117 = ptrtoint %struct.ath9k_htc_priv* %116 to i64
  %118 = call i32 @tasklet_init(i32* %114, i32 %115, i64 %117)
  %119 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %120 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %119, i32 0, i32 5
  %121 = load i32, i32* @ath9k_htc_ani_work, align 4
  %122 = call i32 @INIT_DELAYED_WORK(i32* %120, i32 %121)
  %123 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %124 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %123, i32 0, i32 4
  %125 = load i32, i32* @ath9k_ps_work, align 4
  %126 = call i32 @INIT_WORK(i32* %124, i32 %125)
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 3
  %129 = load i32, i32* @ath9k_fatal_work, align 4
  %130 = call i32 @INIT_WORK(i32* %128, i32 %129)
  %131 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %132 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* @ath9k_htc_tx_cleanup_timer, align 4
  %135 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %136 = ptrtoint %struct.ath9k_htc_priv* %135 to i64
  %137 = call i32 @setup_timer(i32* %133, i32 %134, i64 %136)
  %138 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %139 = call i32 @ath_read_cachesize(%struct.ath_common* %138, i32* %14)
  %140 = load i32, i32* %14, align 4
  %141 = shl i32 %140, 2
  %142 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %143 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %145 = call i32 @ath9k_hw_init(%struct.ath_hw* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %26
  %149 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @ath_err(%struct.ath_common* %149, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %187

152:                                              ; preds = %26
  %153 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %154 = call i32 @ath9k_init_queues(%struct.ath9k_htc_priv* %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %184

158:                                              ; preds = %152
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @ATH9K_HTC_MAX_BCN_VIF, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %165 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %159

174:                                              ; preds = %159
  %175 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %176 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %175)
  %177 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %178 = call i32 @ath9k_init_channels_rates(%struct.ath9k_htc_priv* %177)
  %179 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %180 = call i32 @ath9k_init_misc(%struct.ath9k_htc_priv* %179)
  %181 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @ath9k_htc_init_btcoex(%struct.ath9k_htc_priv* %181, i8* %182)
  store i32 0, i32* %5, align 4
  br label %193

184:                                              ; preds = %157
  %185 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %186 = call i32 @ath9k_hw_deinit(%struct.ath_hw* %185)
  br label %187

187:                                              ; preds = %184, %148
  %188 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %189 = call i32 @kfree(%struct.ath_hw* %188)
  %190 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %191 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %190, i32 0, i32 0
  store %struct.ath_hw* null, %struct.ath_hw** %191, align 8
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %187, %174, %23
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ath_hw* @kzalloc(i32, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ath_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath9k_hw_init(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_init_queues(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_init_channels_rates(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_init_misc(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_init_btcoex(%struct.ath9k_htc_priv*, i8*) #1

declare dso_local i32 @ath9k_hw_deinit(%struct.ath_hw*) #1

declare dso_local i32 @kfree(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
