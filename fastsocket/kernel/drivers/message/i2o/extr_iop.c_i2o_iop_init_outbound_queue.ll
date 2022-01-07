; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_init_outbound_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_init_outbound_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.i2o_controller = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i8** }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"%s: Initializing Outbound Queue...\0A\00", align 1
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@EIGHT_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_6 = common dso_local global i32 0, align 4
@I2O_CMD_OUTBOUND_INIT = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@i2o_exec_driver = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@I2O_OUTBOUND_MSG_FRAME_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@I2O_TIMEOUT_INIT_OUTBOUND_QUEUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@I2O_CMD_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Timeout Initializing\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@I2O_MAX_OUTBOUND_MSG_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_init_outbound_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_init_outbound_queue(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.i2o_message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %9 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %10 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %5, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @osm_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %18 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @memset(i64* %20, i32 0, i32 4)
  %22 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %23 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %24 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %22, i32 %23)
  store %struct.i2o_message* %24, %struct.i2o_message** %6, align 8
  %25 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %26 = call i64 @IS_ERR(%struct.i2o_message* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.i2o_message* %29)
  store i32 %30, i32* %2, align 4
  br label %157

31:                                               ; preds = %1
  %32 = load i32, i32* @EIGHT_WORD_MSG_SIZE, align 4
  %33 = load i32, i32* @SGL_OFFSET_6, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %37 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @I2O_CMD_OUTBOUND_INIT, align 4
  %42 = shl i32 %41, 24
  %43 = load i32, i32* @HOST_TID, align 4
  %44 = shl i32 %43, 12
  %45 = or i32 %42, %44
  %46 = load i32, i32* @ADAPTER_TID, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %50 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %48, i8** %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i2o_exec_driver, i32 0, i32 0), align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %57 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = call i8* @cpu_to_le32(i32 0)
  %61 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %62 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %68 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* @I2O_OUTBOUND_MSG_FRAME_SIZE, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %72, 128
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %76 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* %74, i8** %78, align 8
  %79 = call i8* @cpu_to_le32(i32 -805306364)
  %80 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %81 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  store i8* %79, i8** %83, align 8
  %84 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %85 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @i2o_dma_low(i32 %87)
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %91 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 3
  store i8* %89, i8** %93, align 8
  %94 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %95 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @i2o_dma_high(i32 %97)
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %101 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 4
  store i8* %99, i8** %103, align 8
  %104 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %105 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %106 = call i32 @i2o_msg_post(%struct.i2o_controller* %104, %struct.i2o_message* %105)
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i32, i32* @I2O_TIMEOUT_INIT_OUTBOUND_QUEUE, align 4
  %109 = load i32, i32* @HZ, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %107, %111
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %130, %31
  %114 = load i64*, i64** %5, align 8
  %115 = load volatile i64, i64* %114, align 8
  %116 = load volatile i64, i64* @I2O_CMD_IN_PROGRESS, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load i64, i64* @jiffies, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @time_after(i64 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %125 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @osm_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %157

130:                                              ; preds = %118
  %131 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %113

132:                                              ; preds = %113
  %133 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %134 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %153, %132
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @I2O_MAX_OUTBOUND_MSG_FRAMES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @i2o_flush_reply(%struct.i2o_controller* %142, i32 %143)
  %145 = call i32 @udelay(i32 1)
  %146 = load i32, i32* @I2O_OUTBOUND_MSG_FRAME_SIZE, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %137

156:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %123, %28
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_dma_low(i32) #1

declare dso_local i32 @i2o_dma_high(i32) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @osm_warn(i8*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @i2o_flush_reply(%struct.i2o_controller*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
