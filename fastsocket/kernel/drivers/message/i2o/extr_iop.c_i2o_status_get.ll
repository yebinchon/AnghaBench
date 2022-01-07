; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_status_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2o_controller = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.i2o_message = type { i8**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8** }
%struct.TYPE_5__ = type { i8*, i8* }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@NINE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_STATUS_GET = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@i2o_exec_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@I2O_TIMEOUT_STATUS_GET = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: Get status timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_status_get(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %7 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %8 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %13 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @memset(i64 %15, i32 0, i32 4)
  %17 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %18 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %19 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %17, i32 %18)
  store %struct.i2o_message* %19, %struct.i2o_message** %4, align 8
  %20 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %21 = call i64 @IS_ERR(%struct.i2o_message* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.i2o_message* %24)
  store i32 %25, i32* %2, align 4
  br label %123

26:                                               ; preds = %1
  %27 = load i32, i32* @NINE_WORD_MSG_SIZE, align 4
  %28 = load i32, i32* @SGL_OFFSET_0, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %32 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* @I2O_CMD_STATUS_GET, align 4
  %37 = shl i32 %36, 24
  %38 = load i32, i32* @HOST_TID, align 4
  %39 = shl i32 %38, 12
  %40 = or i32 %37, %39
  %41 = load i32, i32* @ADAPTER_TID, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %45 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2o_exec_driver, i32 0, i32 0), align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %52 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = call i8* @cpu_to_le32(i32 0)
  %56 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %57 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = call i8* @cpu_to_le32(i32 0)
  %61 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %62 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  %65 = call i8* @cpu_to_le32(i32 0)
  %66 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %67 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %65, i8** %69, align 8
  %70 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %71 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @i2o_dma_low(i32 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %77 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 2
  store i8* %75, i8** %79, align 8
  %80 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %81 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @i2o_dma_high(i32 %83)
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %87 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  store i8* %85, i8** %89, align 8
  %90 = call i8* @cpu_to_le32(i32 4)
  %91 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %92 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 4
  store i8* %90, i8** %94, align 8
  %95 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %96 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %97 = call i32 @i2o_msg_post(%struct.i2o_controller* %95, %struct.i2o_message* %96)
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i64, i64* @I2O_TIMEOUT_STATUS_GET, align 8
  %100 = load i64, i64* @HZ, align 8
  %101 = mul i64 %99, %100
  %102 = add i64 %98, %101
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %120, %26
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 87
  %106 = load volatile i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 255
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i64, i64* @jiffies, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @time_after(i64 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %115 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @osm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %123

120:                                              ; preds = %108
  %121 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %103

122:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %113, %23
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_dma_low(i32) #1

declare dso_local i32 @i2o_dma_high(i32) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @osm_err(i8*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
