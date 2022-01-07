; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_save_and_clear_buserr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_save_and_clear_buserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_18__, %struct.TYPE_16__, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_22__*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_22__ = type { i64, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }

@sgimc = common dso_local global %struct.TYPE_13__* null, align 8
@cpu_err_addr = common dso_local global i32 0, align 4
@cpu_err_stat = common dso_local global i32 0, align 4
@gio_err_addr = common dso_local global i32 0, align 4
@gio_err_stat = common dso_local global i32 0, align 4
@sgioc = common dso_local global %struct.TYPE_24__* null, align 8
@extio_stat = common dso_local global i32 0, align 4
@hpc3c0 = common dso_local global %struct.TYPE_14__* null, align 8
@hpc3_berr_stat = common dso_local global i32 0, align 4
@hpc3 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CPU_ERRMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_and_clear_buserr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_and_clear_buserr() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %3 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @cpu_err_addr, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @cpu_err_stat, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @gio_err_addr, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @gio_err_stat, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sgioc, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @extio_stat, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* @hpc3_berr_stat, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = ptrtoint %struct.TYPE_16__* %21 to i64
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = ptrtoint %struct.TYPE_18__* %48 to i64
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 3), align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 4
  %77 = ptrtoint i64* %76 to i64
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 2, i32 0), align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 2, i32 3), align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 2, i32 2), align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 2, i32 1), align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = ptrtoint i64* %92 to i64
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 1, i32 0), align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 1, i32 3), align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 1, i32 2), align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 1, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %106

106:                                              ; preds = %161, %0
  %107 = load i32, i32* %1, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %164

109:                                              ; preds = %106
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i64 %114
  %116 = ptrtoint %struct.TYPE_23__* %115 to i64
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 0), align 8
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  store i64 %116, i64* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 0), align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  store i32 %129, i32* %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 0), align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hpc3c0, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hpc3, i32 0, i32 0), align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store i32 %155, i32* %160, align 8
  br label %161

161:                                              ; preds = %109
  %162 = load i32, i32* %1, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %1, align 4
  br label %106

164:                                              ; preds = %106
  store i32 0, i32* %1, align 4
  %165 = load i32, i32* @gio_err_stat, align 4
  %166 = load i32, i32* @CPU_ERRMASK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @gio_err_addr, align 4
  store i32 %170, i32* %1, align 4
  br label %171

171:                                              ; preds = %169, %164
  %172 = load i32, i32* @cpu_err_stat, align 4
  %173 = load i32, i32* @CPU_ERRMASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @cpu_err_addr, align 4
  store i32 %177, i32* %1, align 4
  br label %178

178:                                              ; preds = %176, %171
  %179 = load i32, i32* %1, align 4
  %180 = call i32 @save_cache_tags(i32 %179)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  store i32 0, i32* %182, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sgimc, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  ret void
}

declare dso_local i32 @save_cache_tags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
