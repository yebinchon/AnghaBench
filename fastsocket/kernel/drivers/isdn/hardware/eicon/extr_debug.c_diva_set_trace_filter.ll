; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_set_trace_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_set_trace_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 (i32*)*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 }

@dbg_adapter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dbg mask\00", align 1
@dbg_q_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"write_filter\00", align 1
@DIVA_MAX_SELECTIVE_FILTER_LENGTH = common dso_local global i32 0, align 4
@TraceFilter = common dso_local global i8* null, align 8
@TraceFilterIdent = common dso_local global i32 0, align 4
@TraceFilterChannel = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_7__* null, align 8
@DIVA_MGT_DBG_IFC_BCHANNEL = common dso_local global i32 0, align 4
@DIVA_MGT_DBG_IFC_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diva_set_trace_filter(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = call i32 @diva_os_enter_spin_lock(i32* @dbg_adapter_lock, i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DIVA_MAX_SELECTIVE_FILTER_LENGTH, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load i8*, i8** @TraceFilter, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @memcpy(i8* %19, i8* %20, i32 %21)
  %23 = load i8*, i8** @TraceFilter, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i8*, i8** @TraceFilter, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %17
  %35 = load i8*, i8** @TraceFilter, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** @TraceFilter, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %40, %34
  br label %45

44:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43
  store i32 -1, i32* @TraceFilterIdent, align 4
  store i32 -1, i32* @TraceFilterChannel, align 4
  %46 = load i8*, i8** @TraceFilter, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %171, %45
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %174

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %170

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %170

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32 (i32*)*, i32 (i32*)** %78, align 8
  %80 = icmp ne i32 (i32*)* %79, null
  br i1 %80, label %81, label %170

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DIVA_MGT_DBG_IFC_BCHANNEL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %84, %81
  %97 = phi i1 [ false, %81 ], [ %95, %84 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DIVA_MGT_DBG_IFC_AUDIO, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %101, %96
  %114 = phi i1 [ false, %96 ], [ %112, %101 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %166, %113
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %117, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %116
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %10, align 4
  %145 = call i32 %133(i32 %141, i32 %143, i32 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %11, align 4
  %165 = call i32 %153(i32 %161, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %125
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %116

169:                                              ; preds = %116
  br label %170

170:                                              ; preds = %169, %73, %65, %57
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %52

174:                                              ; preds = %52
  store i32 1, i32* %7, align 4
  br label %175

175:                                              ; preds = %246, %174
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %178 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %177)
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %249

180:                                              ; preds = %175
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = icmp ne %struct.TYPE_5__* %186, null
  br i1 %187, label %188, label %245

188:                                              ; preds = %180
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %245

196:                                              ; preds = %188
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32 (i32*)*, i32 (i32*)** %201, align 8
  %203 = icmp ne i32 (i32*)* %202, null
  br i1 %203, label %204, label %245

204:                                              ; preds = %196
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %245

212:                                              ; preds = %204
  %213 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32 (i32*)*, i32 (i32*)** %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i64 (i32)*, i64 (i32)** %231, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clients, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 %232(i32 %240)
  %242 = inttoptr i64 %241 to i32*
  %243 = call i32 %224(i32* %242)
  %244 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %245

245:                                              ; preds = %212, %204, %196, %188, %180
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %175

249:                                              ; preds = %175
  %250 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %251 = call i32 @diva_os_leave_spin_lock(i32* @dbg_adapter_lock, i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
