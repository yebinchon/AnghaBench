; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__**, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, %struct.qeth_card*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"initqdqs\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@QETH_QDIO_BUF_EMPTY = common dso_local global i32 0, align 4
@QETH_OUT_Q_UNLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load i32, i32* @SETUP, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32 %14, i32 0, i32 %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = call i32 @qeth_initialize_working_pool_list(%struct.qeth_card* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @qeth_init_input_buffer(%struct.qeth_card* %32, i32* %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = call i32 @CARD_DDEV(%struct.qeth_card* %58)
  %60 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @do_QDIO(i32 %59, i32 %60, i32 0, i32 0, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load i32, i32* @SETUP, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @QETH_DBF_TEXT_(i32 %71, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %202

75:                                               ; preds = %46
  %76 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %77 = call i32 @qeth_cq_init(%struct.qeth_card* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %202

82:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %198, %82
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %201

90:                                               ; preds = %83
  %91 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %94, i64 %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(i32 %100, i32 0, i32 %104)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %135, %90
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %114, i64 %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %120 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %122, i64 %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @QETH_QDIO_BUF_EMPTY, align 4
  %134 = call i32 @qeth_clear_output_buffer(%struct.TYPE_8__* %118, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %110
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %106

138:                                              ; preds = %106
  %139 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %140 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %141 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %143, i64 %145
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  store %struct.qeth_card* %139, %struct.qeth_card** %148, align 8
  %149 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %150 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %152, i64 %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %161, i64 %163
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  %167 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %168 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %170, i64 %172
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = call i32 @atomic_set(i32* %175, i32 0)
  %177 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %178 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %180, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = call i32 @atomic_set(i32* %185, i32 0)
  %187 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %188 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %190, i64 %192
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* @QETH_OUT_Q_UNLOCKED, align 4
  %197 = call i32 @atomic_set(i32* %195, i32 %196)
  br label %198

198:                                              ; preds = %138
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %83

201:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %80, %70
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qeth_initialize_working_pool_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_input_buffer(%struct.qeth_card*, i32*) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @qeth_cq_init(%struct.qeth_card*) #1

declare dso_local i32 @qeth_clear_output_buffer(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
