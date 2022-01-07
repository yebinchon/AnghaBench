; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_11__**, %struct.qdio_outbuf_state* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.qdio_outbuf_state* }
%struct.qdio_outbuf_state = type { i32 }
%struct.TYPE_9__ = type { i64 }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cqon\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nocq\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iqc%d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to create completion queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_alloc_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_alloc_cq(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qdio_outbuf_state*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %112

12:                                               ; preds = %1
  %13 = load i32, i32* @SETUP, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_14__* @kzalloc(i32 4, i32 %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %19, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %139

26:                                               ; preds = %12
  %27 = load i32, i32* @SETUP, align 4
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = call i32 @QETH_DBF_HEX(i32 %27, i32 2, %struct.TYPE_14__** %30, i32 8)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %56, %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32* %45, i32** %55, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 2, i32* %62, align 8
  %63 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.TYPE_14__* @kzalloc(i32 %71, i32 %72)
  %74 = bitcast %struct.TYPE_14__* %73 to %struct.qdio_outbuf_state*
  %75 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  store %struct.qdio_outbuf_state* %74, %struct.qdio_outbuf_state** %77, align 8
  %78 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %79 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %80, align 8
  store %struct.qdio_outbuf_state* %81, %struct.qdio_outbuf_state** %5, align 8
  %82 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %83 = icmp eq %struct.qdio_outbuf_state* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %130

85:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %108, %85
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %89 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %86
  %94 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %95 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %96 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %98, i64 %100
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store %struct.qdio_outbuf_state* %94, %struct.qdio_outbuf_state** %103, align 8
  %104 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %105 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.qdio_outbuf_state, %struct.qdio_outbuf_state* %105, i64 %106
  store %struct.qdio_outbuf_state* %107, %struct.qdio_outbuf_state** %5, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %86

111:                                              ; preds = %86
  br label %121

112:                                              ; preds = %1
  %113 = load i32, i32* @SETUP, align 4
  %114 = call i32 @QETH_DBF_TEXT(i32 %113, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %116 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %117, align 8
  %118 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %112, %111
  %122 = load i32, i32* @SETUP, align 4
  %123 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @QETH_DBF_TEXT_(i32 %122, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %139, %121
  %129 = load i32, i32* %3, align 4
  ret i32 %129

130:                                              ; preds = %84
  %131 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %132 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = call i32 @kfree(%struct.TYPE_14__* %134)
  %136 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %138, align 8
  br label %139

139:                                              ; preds = %130, %25
  %140 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %141 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %128
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.TYPE_14__**, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
