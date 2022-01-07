; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_data_b3_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_data_b3_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32*, i32* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"data_b3_res\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"free(%d)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@N_DATA_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_16__*)* @data_b3_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @data_b3_res(i32 %0, i32 %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3, %struct.TYPE_15__* %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %13, align 8
  %17 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @dbug(i32 1, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 16
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %120

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %120

26:                                               ; preds = %23
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_WORD(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 @dbug(i32 1, i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %119

47:                                               ; preds = %26
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %47
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %57
  %72 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @dbug(i32 1, i32 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @channel_can_xon(%struct.TYPE_13__* %80, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %71
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @channel_request_xon(%struct.TYPE_13__* %91, i32 %98)
  br label %100

100:                                              ; preds = %90, %71
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = call i32 @channel_xmit_xon(%struct.TYPE_13__* %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = load i32, i32* @N_DATA_ACK, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = call i32 @nl_req_ncci(%struct.TYPE_13__* %113, i32 %114, i64 %116)
  store i64 1, i64* %7, align 8
  br label %121

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %57, %47, %26
  br label %120

120:                                              ; preds = %119, %23, %6
  store i64 0, i64* %7, align 8
  br label %121

121:                                              ; preds = %120, %112
  %122 = load i64, i64* %7, align 8
  ret i64 %122
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @GET_WORD(i32) #1

declare dso_local i64 @channel_can_xon(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @channel_request_xon(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @channel_xmit_xon(%struct.TYPE_13__*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_13__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
