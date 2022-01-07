; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_hrt_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_hrt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }

@I2O_HRT_GET_TRIES = common dso_local global i32 0, align 4
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@SIX_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_4 = common dso_local global i32 0, align 4
@I2O_CMD_HRT_GET = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Unable to get HRT (status=%#x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: Unable to get HRT after %d tries, giving up\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_hrt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_hrt_get(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %10 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %11 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  store i32 8, i32* %7, align 4
  %14 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %15 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %124, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @I2O_HRT_GET_TRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %127

22:                                               ; preds = %18
  %23 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %24 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %25 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %23, i32 %24)
  store %struct.i2o_message* %25, %struct.i2o_message** %9, align 8
  %26 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %27 = call i64 @IS_ERR(%struct.i2o_message* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.i2o_message* %30)
  store i32 %31, i32* %2, align 4
  br label %135

32:                                               ; preds = %22
  %33 = load i32, i32* @SIX_WORD_MSG_SIZE, align 4
  %34 = load i32, i32* @SGL_OFFSET_4, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %38 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %36, i8** %41, align 8
  %42 = load i32, i32* @I2O_CMD_HRT_GET, align 4
  %43 = shl i32 %42, 24
  %44 = load i32, i32* @HOST_TID, align 4
  %45 = shl i32 %44, 12
  %46 = or i32 %43, %45
  %47 = load i32, i32* @ADAPTER_TID, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %51 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %49, i8** %54, align 8
  %55 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %56 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 -805306368, %58
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %62 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  %65 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %66 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %71 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %69, i8** %73, align 8
  %74 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %75 = load %struct.i2o_message*, %struct.i2o_message** %9, align 8
  %76 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %77 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %76, i32 0, i32 1
  %78 = call i32 @i2o_msg_post_wait_mem(%struct.i2o_controller* %74, %struct.i2o_message* %75, i32 20, %struct.TYPE_9__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %32
  %82 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %83 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @osm_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %135

89:                                               ; preds = %32
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = shl i32 %96, 2
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %100 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %98, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %89
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %107 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %106, i32 0, i32 1
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @i2o_dma_realloc(%struct.device* %105, %struct.TYPE_9__* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %135

114:                                              ; preds = %104
  %115 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %116 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %6, align 8
  br label %119

119:                                              ; preds = %114
  br label %123

120:                                              ; preds = %89
  %121 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %122 = call i32 @i2o_parse_hrt(%struct.i2o_controller* %121)
  store i32 %122, i32* %2, align 4
  br label %135

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %18

127:                                              ; preds = %18
  %128 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %129 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @I2O_HRT_GET_TRIES, align 4
  %132 = call i32 @osm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %120, %111, %81, %29
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait_mem(%struct.i2o_controller*, %struct.i2o_message*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @osm_err(i8*, i32, i32) #1

declare dso_local i64 @i2o_dma_realloc(%struct.device*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @i2o_parse_hrt(%struct.i2o_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
