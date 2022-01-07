; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_trace.c_fnic_get_trace_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_trace.c_fnic_get_trace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64* }
%struct.TYPE_10__ = type { i64 }
%struct.timespec = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@KSYM_SYMBOL_LEN = common dso_local global i32 0, align 4
@fnic_trace_lock = common dso_local global i32 0, align 4
@fnic_trace_entries = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@trace_max_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%16lu.%16lu %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\0A\00", align 1
@fnic_max_trace_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_get_trace_data(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @KSYM_SYMBOL_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @fnic_trace_lock, i64 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fnic_trace_entries, i32 0, i32 0), align 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fnic_trace_entries, i32 0, i32 1), align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %113, %24
  br label %26

26:                                               ; preds = %25
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fnic_trace_entries, i32 0, i32 2), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %11, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @fnic_trace_lock, i64 %36)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %209

38:                                               ; preds = %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sprint_symbol(i8* %16, i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @jiffies_to_timespec(i32 %47, %struct.timespec* %10)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load i32, i32* @trace_max_pages, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = mul nsw i32 %57, 3
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @snprintf(i64 %54, i32 %60, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i8* %16, i32 %67, i32 %70, i32 %75, i32 %80, i32 %85, i32 %90, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @fnic_max_trace_entries, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %38
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %38
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %114

113:                                              ; preds = %108
  br label %25

114:                                              ; preds = %112
  br label %205

115:                                              ; preds = %1
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %204

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %202, %119
  br label %121

121:                                              ; preds = %120
  %122 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fnic_trace_entries, i32 0, i32 2), align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %11, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = icmp ne %struct.TYPE_9__* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* @fnic_trace_lock, i64 %131)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %209

133:                                              ; preds = %121
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @sprint_symbol(i8* %16, i32 %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @jiffies_to_timespec(i32 %142, %struct.timespec* %10)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32, i32* @trace_max_pages, align 4
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = mul nsw i32 %150, %151
  %153 = mul nsw i32 %152, 3
  %154 = load i32, i32* %6, align 4
  %155 = sub nsw i32 %153, %154
  %156 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @snprintf(i64 %149, i32 %155, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %159, i8* %16, i32 %162, i32 %165, i32 %170, i32 %175, i32 %180, i32 %185, i32 %190)
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %133
  br label %203

202:                                              ; preds = %133
  br label %120

203:                                              ; preds = %201
  br label %204

204:                                              ; preds = %203, %115
  br label %205

205:                                              ; preds = %204, %114
  %206 = load i64, i64* %7, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* @fnic_trace_lock, i64 %206)
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %209

209:                                              ; preds = %205, %130, %35
  %210 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @sprint_symbol(i8*, i32) #2

declare dso_local i32 @jiffies_to_timespec(i32, %struct.timespec*) #2

declare dso_local i64 @snprintf(i64, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
