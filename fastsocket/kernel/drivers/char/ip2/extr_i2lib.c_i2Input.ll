; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2Input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i16, i16, i32, i32, i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32)* }

@CHANN = common dso_local global i32 0, align 4
@ITRC_INPUT = common dso_local global i32 0, align 4
@ITRC_ENTER = common dso_local global i32 0, align 4
@IBUF_SIZE = common dso_local global i32 0, align 4
@NEED_FLOW = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @i2Input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2Input(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CHANN, align 4
  %8 = load i32, i32* @ITRC_INPUT, align 4
  %9 = load i32, i32* @ITRC_ENTER, align 4
  %10 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @i2Validate(%struct.TYPE_13__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %168

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @write_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %4, align 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @write_unlock_irqrestore(i32* %34, i64 %35)
  br label %168

37:                                               ; preds = %15
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @IBUF_SIZE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = load i32, i32* @IBUF_SIZE, align 4
  %57 = load i16, i16* %4, align 2
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %56, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32)** %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = load i16, i16* %4, align 2
  %82 = zext i16 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %3, align 4
  %85 = call i32 %74(%struct.TYPE_14__* %77, i32* %83, i32* null, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %65
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32)** %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 %98(%struct.TYPE_14__* %101, i32* %104, i32* null, i32 %107)
  br label %109

109:                                              ; preds = %89, %65
  %110 = load i32, i32* %5, align 4
  %111 = load i16, i16* %4, align 2
  %112 = zext i16 %111 to i32
  %113 = add nsw i32 %112, %110
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %4, align 2
  %115 = load i16, i16* %4, align 2
  %116 = zext i16 %115 to i32
  %117 = load i32, i32* @IBUF_SIZE, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load i32, i32* @IBUF_SIZE, align 4
  %121 = load i16, i16* %4, align 2
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %122, %120
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %4, align 2
  br label %125

125:                                              ; preds = %119, %109
  %126 = load i16, i16* %4, align 2
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i16 %126, i16* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %129
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %125
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @write_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = load i32, i32* @NEED_FLOW, align 4
  %161 = call i32 @i2QueueNeeds(i32 %158, %struct.TYPE_13__* %159, i32 %160)
  br label %167

162:                                              ; preds = %125
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @write_unlock_irqrestore(i32* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %144
  br label %168

168:                                              ; preds = %167, %32, %14
  %169 = load i32, i32* @CHANN, align 4
  %170 = load i32, i32* @ITRC_INPUT, align 4
  %171 = load i32, i32* @ITRC_RETURN, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %169, i32 %170, i32 %171, i32 1, i32 %172)
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local i32 @i2Validate(%struct.TYPE_13__*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2QueueNeeds(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
