; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slab_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slab_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Slab Perf Counter       Alloc     Free %%Al %%Fr\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"--------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Fastpath             %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Slowpath             %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Page Alloc           %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Add partial          %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Remove partial       %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"RemoteObj/SlabFrozen %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total                %8lu %8lu\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Flushes %8lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Refill %8lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"Deactivate Full=%lu(%lu%%) Empty=%lu(%lu%%) ToHead=%lu(%lu%%) ToTail=%lu(%lu%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @slab_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_stats(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %6 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %7 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %249

11:                                               ; preds = %1
  %12 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %13 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %16 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %20 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %23 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  br label %249

29:                                               ; preds = %11
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %34 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %37 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %40 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 100
  %43 = load i64, i64* %3, align 8
  %44 = udiv i64 %42, %43
  %45 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %46 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %47, 100
  %49 = load i64, i64* %4, align 8
  %50 = udiv i64 %48, %49
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %35, i64 %38, i64 %44, i64 %50)
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %54 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %58 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %62 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = mul i64 %64, 100
  %66 = load i64, i64* %3, align 8
  %67 = udiv i64 %65, %66
  %68 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %69 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = mul i64 %70, 100
  %72 = load i64, i64* %4, align 8
  %73 = udiv i64 %71, %72
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %59, i64 %67, i64 %73)
  %75 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %76 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %79 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %82 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 100
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %3, align 8
  %87 = udiv i64 %85, %86
  %88 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %89 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %90, 100
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %4, align 8
  %94 = udiv i64 %92, %93
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %80, i64 %87, i64 %94)
  %96 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %97 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %100 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %104 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %107 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %110 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %108, %111
  %113 = mul nsw i32 %112, 100
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %3, align 8
  %116 = udiv i64 %114, %115
  %117 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %118 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 100
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %4, align 8
  %123 = udiv i64 %121, %122
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %105, i64 %116, i64 %123)
  %125 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %126 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %129 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %132 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %133, 100
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %3, align 8
  %137 = udiv i64 %135, %136
  %138 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %139 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 100
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %4, align 8
  %144 = udiv i64 %142, %143
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %130, i64 %137, i64 %144)
  %146 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %147 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %150 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %153 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 100
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %3, align 8
  %158 = udiv i64 %156, %157
  %159 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %160 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 100
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %4, align 8
  %165 = udiv i64 %163, %164
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %148, i32 %151, i64 %158, i64 %165)
  %167 = load i64, i64* %3, align 8
  %168 = load i64, i64* %4, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %167, i64 %168)
  %170 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %171 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %170, i32 0, i32 13
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %29
  %175 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %176 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %175, i32 0, i32 13
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %177)
  br label %179

179:                                              ; preds = %174, %29
  %180 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %181 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %180, i32 0, i32 14
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %186 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %185, i32 0, i32 14
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %191 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %190, i32 0, i32 15
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %194 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %193, i32 0, i32 16
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %198 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %196, %200
  %202 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %203 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = add i64 %201, %205
  store i64 %206, i64* %5, align 8
  %207 = load i64, i64* %5, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %249

209:                                              ; preds = %189
  %210 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %211 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %210, i32 0, i32 15
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %214 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %213, i32 0, i32 15
  %215 = load i64, i64* %214, align 8
  %216 = mul i64 %215, 100
  %217 = load i64, i64* %5, align 8
  %218 = udiv i64 %216, %217
  %219 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %220 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %219, i32 0, i32 16
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %223 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %222, i32 0, i32 16
  %224 = load i64, i64* %223, align 8
  %225 = mul i64 %224, 100
  %226 = load i64, i64* %5, align 8
  %227 = udiv i64 %225, %226
  %228 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %229 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %232 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 100
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %5, align 8
  %237 = udiv i64 %235, %236
  %238 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %239 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %242 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = mul nsw i32 %243, 100
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %5, align 8
  %247 = udiv i64 %245, %246
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0), i64 %212, i64 %218, i64 %221, i64 %227, i32 %230, i64 %237, i32 %240, i64 %247)
  br label %249

249:                                              ; preds = %10, %28, %209, %189
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
