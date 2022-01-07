; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.i2o_controller = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i8** }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"%s: Resetting controller\0A\00", align 1
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i64 0, align 8
@EIGHT_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_ADAPTER_RESET = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@i2o_exec_driver = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@I2O_TIMEOUT_RESET = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: IOP reset rejected\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: Reset in progress, waiting for reboot...\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: IOP reset timeout.\0A\00", align 1
@ADAPTER_STATE_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"%s: reset completed, but adapter not in RESET state.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: reset completed.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_reset(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i2o_message*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %9 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %10 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %18 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @osm_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %22 = load i64, i64* @I2O_TIMEOUT_MESSAGE_GET, align 8
  %23 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %21, i64 %22)
  store %struct.i2o_message* %23, %struct.i2o_message** %5, align 8
  %24 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %25 = call i64 @IS_ERR(%struct.i2o_message* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.i2o_message* %28)
  store i32 %29, i32* %2, align 4
  br label %196

30:                                               ; preds = %1
  %31 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %32 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = call i32 @memset(%struct.TYPE_12__* %34, i32 0, i32 8)
  %36 = call i32 (...) @i2o_iop_quiesce_all()
  %37 = load i32, i32* @EIGHT_WORD_MSG_SIZE, align 4
  %38 = load i32, i32* @SGL_OFFSET_0, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %42 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* @I2O_CMD_ADAPTER_RESET, align 4
  %47 = shl i32 %46, 24
  %48 = load i32, i32* @HOST_TID, align 4
  %49 = shl i32 %48, 12
  %50 = or i32 %47, %49
  %51 = load i32, i32* @ADAPTER_TID, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %55 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  store i8* %53, i8** %58, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @i2o_exec_driver, i32 0, i32 0), align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %62 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = call i8* @cpu_to_le32(i32 0)
  %66 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %67 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = call i8* @cpu_to_le32(i32 0)
  %71 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %72 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %70, i8** %74, align 8
  %75 = call i8* @cpu_to_le32(i32 0)
  %76 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %77 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  store i8* %75, i8** %79, align 8
  %80 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %81 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @i2o_dma_low(i32 %83)
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %87 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  store i8* %85, i8** %89, align 8
  %90 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %91 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @i2o_dma_high(i32 %93)
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %97 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  store i8* %95, i8** %99, align 8
  %100 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %101 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %102 = call i32 @i2o_msg_post(%struct.i2o_controller* %100, %struct.i2o_message* %101)
  %103 = load i64, i64* @jiffies, align 8
  %104 = load i64, i64* @I2O_TIMEOUT_RESET, align 8
  %105 = load i64, i64* @HZ, align 8
  %106 = mul i64 %104, %105
  %107 = add i64 %103, %106
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %119, %30
  %109 = load i32*, i32** %4, align 8
  %110 = load volatile i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @time_after(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %121

119:                                              ; preds = %113
  %120 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %108

121:                                              ; preds = %118, %108
  %122 = load i32*, i32** %4, align 8
  %123 = load volatile i32, i32* %122, align 4
  switch i32 %123, label %185 [
    i32 128, label %124
    i32 129, label %131
  ]

124:                                              ; preds = %121
  %125 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %126 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @osm_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EPERM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %192

131:                                              ; preds = %121
  %132 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %133 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @osm_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %154, %131
  %137 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %138 = load i64, i64* @I2O_TIMEOUT_RESET, align 8
  %139 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %137, i64 %138)
  store %struct.i2o_message* %139, %struct.i2o_message** %5, align 8
  %140 = call i64 @IS_ERR(%struct.i2o_message* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load i64, i64* @jiffies, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i64 @time_after(i64 %143, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %149 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @osm_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %153 = call i32 @PTR_ERR(%struct.i2o_message* %152)
  store i32 %153, i32* %8, align 4
  br label %193

154:                                              ; preds = %142
  %155 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %136

156:                                              ; preds = %136
  %157 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %158 = load %struct.i2o_message*, %struct.i2o_message** %5, align 8
  %159 = call i32 @i2o_msg_nop(%struct.i2o_controller* %157, %struct.i2o_message* %158)
  %160 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %161 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %160, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %163 = call i32 @i2o_status_get(%struct.i2o_controller* %162)
  %164 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %165 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %156
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ADAPTER_STATE_RESET, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %176 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @osm_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %184

179:                                              ; preds = %168, %156
  %180 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %181 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @osm_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %179, %174
  br label %192

185:                                              ; preds = %121
  %186 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %187 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @osm_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @ETIMEDOUT, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %185, %184, %124
  br label %193

193:                                              ; preds = %192, %147
  %194 = call i32 (...) @i2o_iop_enable_all()
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %27
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i64) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @i2o_iop_quiesce_all(...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_dma_low(i32) #1

declare dso_local i32 @i2o_dma_high(i32) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @osm_warn(i8*, i32) #1

declare dso_local i32 @osm_err(i8*, i32) #1

declare dso_local i32 @i2o_msg_nop(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i32 @i2o_status_get(%struct.i2o_controller*) #1

declare dso_local i32 @i2o_iop_enable_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
