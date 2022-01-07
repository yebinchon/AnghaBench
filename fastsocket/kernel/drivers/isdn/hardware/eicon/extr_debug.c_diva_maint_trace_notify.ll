; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_trace_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_trace_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i8*, i8*, i64 }
%struct.TYPE_14__ = type { i32 }

@TraceFilterChannel = common dso_local global i32 0, align 4
@TraceFilterIdent = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_15__* null, align 8
@TraceFilter = common dso_local global i64* null, align 8
@dbg_queue = common dso_local global i32 0, align 4
@dbg_sequence = common dso_local global i32 0, align 4
@MSG_TYPE_MLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i8*, i32)* @diva_maint_trace_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diva_maint_trace_notify(i8* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %11, align 8
  %23 = load i32, i32* @TraceFilterChannel, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @TraceFilterIdent, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %140

27:                                               ; preds = %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %140

30:                                               ; preds = %27
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @clients, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %140

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @clients, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %140

46:                                               ; preds = %35
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @clients, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %55, label %140

55:                                               ; preds = %46
  store i8* null, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %20, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @clients, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %216

67:                                               ; preds = %55
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 24
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %18, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %18, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i8*, i8** %18, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %139

81:                                               ; preds = %78
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 91
  br i1 %86, label %87, label %139

87:                                               ; preds = %81
  %88 = load i8*, i8** %18, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 44
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i8*, i8** %18, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 48
  store i32 %99, i32* %19, align 4
  br label %114

100:                                              ; preds = %87
  %101 = load i8*, i8** %18, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 44
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %18, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %106, %100
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i32, i32* %19, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i8*, i8** %18, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 93
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = mul nsw i32 %124, 10
  %126 = load i8*, i8** %18, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = add nsw i32 %125, %129
  %131 = sub nsw i32 %130, 48
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %123, %117
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %216

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %114
  br label %139

139:                                              ; preds = %138, %81, %78
  br label %147

140:                                              ; preds = %46, %35, %30, %27, %5
  %141 = load i64*, i64** @TraceFilter, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %216

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %139
  %148 = call i32 @diva_os_get_time(i8** %14, i8** %15)
  br label %149

149:                                              ; preds = %167, %147
  %150 = load i32, i32* @dbg_queue, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 56
  %154 = call i64 @queueAllocMsg(i32 %150, i64 %153)
  %155 = inttoptr i64 %154 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %12, align 8
  %156 = icmp ne %struct.TYPE_13__* %155, null
  %157 = xor i1 %156, true
  br i1 %157, label %158, label %168

158:                                              ; preds = %149
  %159 = load i32, i32* @dbg_queue, align 4
  %160 = call i64 @queuePeekMsg(i32 %159, i64* %13)
  %161 = inttoptr i64 %160 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %12, align 8
  %162 = icmp ne %struct.TYPE_13__* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @dbg_queue, align 4
  %165 = call i32 @queueFreeMsg(i32 %164)
  br label %167

166:                                              ; preds = %158
  br label %168

167:                                              ; preds = %163
  br label %149

168:                                              ; preds = %166, %149
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %170 = icmp ne %struct.TYPE_13__* %169, null
  br i1 %170, label %171, label %216

171:                                              ; preds = %168
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 1
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @memcpy(%struct.TYPE_13__* %173, i8* %174, i32 %175)
  %177 = load i32, i32* @dbg_sequence, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @dbg_sequence, align 4
  %179 = sext i32 %177 to i64
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 7
  store i64 %179, i64* %181, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 5
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* @MSG_TYPE_MLOG, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %209 = call i32 @queueCompleteMsg(%struct.TYPE_13__* %208)
  %210 = load i32, i32* @dbg_queue, align 4
  %211 = call i64 @queueCount(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %171
  %214 = call i32 (...) @diva_maint_wakeup_read()
  br label %215

215:                                              ; preds = %213, %171
  br label %216

216:                                              ; preds = %66, %136, %145, %215, %168
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @diva_os_get_time(i8**, i8**) #1

declare dso_local i64 @queueAllocMsg(i32, i64) #1

declare dso_local i64 @queuePeekMsg(i32, i64*) #1

declare dso_local i32 @queueFreeMsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @queueCompleteMsg(%struct.TYPE_13__*) #1

declare dso_local i64 @queueCount(i32) #1

declare dso_local i32 @diva_maint_wakeup_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
