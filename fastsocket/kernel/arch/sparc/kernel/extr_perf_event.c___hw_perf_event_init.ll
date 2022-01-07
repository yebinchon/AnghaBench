; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, %struct.perf_event_map* (i64)* }
%struct.perf_event_map = type { i32, i32 }
%struct.perf_event = type { i32, %struct.perf_event*, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i64, i32, i32, i64, i32, i64, i32 }
%struct.perf_event_attr = type { i64, i64, i32, i32, i32 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@nmi_active = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@sparc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PCR_UTRACE = common dso_local global i32 0, align 4
@PCR_STRACE = common dso_local global i32 0, align 4
@perf_max_events = common dso_local global i64 0, align 8
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@MAX_PERIOD = common dso_local global i64 0, align 8
@PIC_UPPER = common dso_local global i32 0, align 4
@PIC_UPPER_INDEX = common dso_local global i32 0, align 4
@PIC_LOWER_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.perf_event_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 3
  store %struct.perf_event_attr* %14, %struct.perf_event_attr** %4, align 8
  %15 = load i32, i32* @MAX_HWEVENTS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.perf_event*, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 2
  store %struct.hw_perf_event* %20, %struct.hw_perf_event** %7, align 8
  %21 = load i32, i32* @MAX_HWEVENTS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = call i64 @atomic_read(i32* @nmi_active)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

29:                                               ; preds = %1
  %30 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

46:                                               ; preds = %35
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load %struct.perf_event_map* (i64)*, %struct.perf_event_map* (i64)** %48, align 8
  %50 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.perf_event_map* %49(i64 %52)
  store %struct.perf_event_map* %53, %struct.perf_event_map** %9, align 8
  br label %76

54:                                               ; preds = %29
  %55 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.perf_event_map* @sparc_map_cache_event(i64 %63)
  store %struct.perf_event_map* %64, %struct.perf_event_map** %9, align 8
  %65 = load %struct.perf_event_map*, %struct.perf_event_map** %9, align 8
  %66 = call i64 @IS_ERR(%struct.perf_event_map* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.perf_event_map*, %struct.perf_event_map** %9, align 8
  %70 = call i32 @PTR_ERR(%struct.perf_event_map* %69)
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

71:                                               ; preds = %60
  br label %75

72:                                               ; preds = %54
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %83 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @PCR_UTRACE, align 4
  %88 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %89 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %76
  %93 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %94 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @PCR_STRACE, align 4
  %99 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %100 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %105 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %113 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = load %struct.perf_event_map*, %struct.perf_event_map** %9, align 8
  %118 = call i64 @perf_event_encode(%struct.perf_event_map* %117)
  %119 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %120 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.perf_event_map*, %struct.perf_event_map** %9, align 8
  %122 = getelementptr inbounds %struct.perf_event_map, %struct.perf_event_map* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %124 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %125 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %124, i32 0, i32 1
  %126 = load %struct.perf_event*, %struct.perf_event** %125, align 8
  %127 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %128 = icmp ne %struct.perf_event* %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %116
  %130 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %131 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %130, i32 0, i32 1
  %132 = load %struct.perf_event*, %struct.perf_event** %131, align 8
  %133 = load i64, i64* @perf_max_events, align 8
  %134 = sub nsw i64 %133, 1
  %135 = call i32 @collect_events(%struct.perf_event* %132, i64 %134, %struct.perf_event** %18, i64* %23)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %116
  %143 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %144 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %23, i64 %147
  store i64 %145, i64* %148, align 8
  %149 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %18, i64 %151
  store %struct.perf_event* %149, %struct.perf_event** %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i64 @check_excludes(%struct.perf_event** %18, i32 %153, i32 1)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

159:                                              ; preds = %142
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i64 @sparc_check_constraints(i64* %23, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

167:                                              ; preds = %159
  %168 = call i32 (...) @perf_event_grab_pmc()
  %169 = load i32, i32* @hw_perf_event_destroy, align 4
  %170 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %171 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %173 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %191, label %176

176:                                              ; preds = %167
  %177 = load i64, i64* @MAX_PERIOD, align 8
  %178 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %179 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %181 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %184 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %183, i32 0, i32 5
  store i64 %182, i64* %184, align 8
  %185 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %186 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %185, i32 0, i32 4
  %187 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %188 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @atomic64_set(i32* %186, i64 %189)
  br label %191

191:                                              ; preds = %176, %167
  %192 = load %struct.perf_event_map*, %struct.perf_event_map** %9, align 8
  %193 = getelementptr inbounds %struct.perf_event_map, %struct.perf_event_map* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PIC_UPPER, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load i32, i32* @PIC_UPPER_INDEX, align 4
  %200 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %201 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %10, align 4
  %206 = shl i32 %205, %204
  store i32 %206, i32* %10, align 4
  br label %216

207:                                              ; preds = %191
  %208 = load i32, i32* @PIC_LOWER_INDEX, align 4
  %209 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %210 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = shl i32 %214, %213
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %207, %198
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %219 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %222

222:                                              ; preds = %216, %164, %156, %138, %72, %68, %43, %26
  %223 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local %struct.perf_event_map* @sparc_map_cache_event(i64) #2

declare dso_local i64 @IS_ERR(%struct.perf_event_map*) #2

declare dso_local i32 @PTR_ERR(%struct.perf_event_map*) #2

declare dso_local i64 @perf_event_encode(%struct.perf_event_map*) #2

declare dso_local i32 @collect_events(%struct.perf_event*, i64, %struct.perf_event**, i64*) #2

declare dso_local i64 @check_excludes(%struct.perf_event**, i32, i32) #2

declare dso_local i64 @sparc_check_constraints(i64*, i32) #2

declare dso_local i32 @perf_event_grab_pmc(...) #2

declare dso_local i32 @atomic64_set(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
