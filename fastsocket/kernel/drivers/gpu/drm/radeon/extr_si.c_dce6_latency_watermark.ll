; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_latency_watermark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_latency_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce6_wm_params = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce6_wm_params*)* @dce6_latency_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce6_latency_watermark(%struct.dce6_wm_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce6_wm_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  store %struct.dce6_wm_params* %0, %struct.dce6_wm_params** %3, align 8
  store i32 2000, i32* %4, align 4
  %19 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %20 = call i32 @dce6_available_bandwidth(%struct.dce6_wm_params* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 4096000, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 512000, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %26 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 40000000, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %30 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %36 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %10, align 4
  store i32 12288, i32* %15, align 4
  %46 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %47 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %236

51:                                               ; preds = %1
  %52 = call i8* @dfixed_const(i32 2)
  %53 = ptrtoint i8* %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = call i8* @dfixed_const(i32 1)
  %56 = ptrtoint i8* %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %59 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %96, label %65

65:                                               ; preds = %51
  %66 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %67 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %75 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %65
  %79 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %80 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 5
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %85 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %93 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %78, %73, %51
  store i32 4, i32* %11, align 4
  br label %98

97:                                               ; preds = %91, %83
  store i32 2, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @dfixed_const(i32 %99)
  %101 = ptrtoint i8* %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %104 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @dfixed_const(i32 %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @dfixed_div(i64 %110, i64 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 512
  %118 = call i8* @dfixed_const(i32 %117)
  %119 = ptrtoint i8* %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  %121 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %122 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @dfixed_const(i32 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @dfixed_div(i64 %128, i64 %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i8* @dfixed_const(i32 %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @dfixed_div(i64 %139, i64 %141)
  %143 = ptrtoint i8* %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @dfixed_trunc(i64 %146)
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @dfixed_trunc(i64 %149)
  %151 = call i32 @min(i32 %147, i32 %150)
  store i32 %151, i32* %14, align 4
  %152 = call i8* @dfixed_const(i32 1000)
  %153 = ptrtoint i8* %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  %155 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %156 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @dfixed_const(i32 %157)
  %159 = ptrtoint i8* %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @dfixed_div(i64 %162, i64 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %166, i64* %167, align 8
  %168 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %169 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @dfixed_const(i32 %170)
  %172 = ptrtoint i8* %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @dfixed_mul(i64 %175, i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @dfixed_trunc(i64 %182)
  %184 = call i32 @min(i32 %180, i32 %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %187 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %191 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = call i8* @dfixed_const(i32 %193)
  %195 = ptrtoint i8* %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %195, i64* %196, align 8
  %197 = call i8* @dfixed_const(i32 1000)
  %198 = ptrtoint i8* %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %198, i64* %199, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i8* @dfixed_const(i32 %200)
  %202 = ptrtoint i8* %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 %202, i64* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i8* @dfixed_div(i64 %205, i64 %207)
  %209 = ptrtoint i8* %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %209, i64* %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i8* @dfixed_div(i64 %212, i64 %214)
  %216 = ptrtoint i8* %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %216, i64* %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @dfixed_trunc(i64 %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %223 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %98
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %2, align 4
  br label %236

228:                                              ; preds = %98
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %3, align 8
  %232 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %230, %233
  %235 = add nsw i32 %229, %234
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %228, %226, %50
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @dce6_available_bandwidth(%struct.dce6_wm_params*) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dfixed_trunc(i64) #1

declare dso_local i64 @dfixed_mul(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
