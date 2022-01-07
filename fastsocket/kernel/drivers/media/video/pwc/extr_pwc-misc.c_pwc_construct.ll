; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-misc.c_pwc_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-misc.c_pwc_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PSZ_SQCIF = common dso_local global i32 0, align 4
@PSZ_QCIF = common dso_local global i32 0, align 4
@PSZ_CIF = common dso_local global i32 0, align 4
@PSZ_QSIF = common dso_local global i32 0, align 4
@PSZ_SIF = common dso_local global i32 0, align 4
@PSZ_VGA = common dso_local global i32 0, align 4
@TOUCAM_HEADER_SIZE = common dso_local global i64 0, align 8
@TOUCAM_TRAILER_SIZE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_construct(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %3 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %4 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @DEVICE_USE_CODEC1(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 128, i32* %11, align 4
  %12 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %13 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 96, i32* %14, align 4
  %15 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 352, i32* %17, align 8
  %18 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %19 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 288, i32* %20, align 4
  %21 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %22 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 352, i32* %23, align 4
  %24 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 288, i32* %26, align 4
  %27 = load i32, i32* @PSZ_SQCIF, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @PSZ_QCIF, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @PSZ_CIF, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %36 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  %39 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %40 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %39, i32 0, i32 2
  store i32 4, i32* %40, align 8
  %41 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %44 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  br label %137

45:                                               ; preds = %1
  %46 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %47 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @DEVICE_USE_CODEC3(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %45
  %52 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %53 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 160, i32* %54, align 4
  %55 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %56 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 120, i32* %57, align 4
  %58 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %59 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 640, i32* %60, align 8
  %61 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %62 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 480, i32* %63, align 4
  %64 = load i32, i32* @PSZ_QSIF, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* @PSZ_SIF, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @PSZ_VGA, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %73 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %75 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 640, i32* %76, align 4
  %77 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 480, i32* %79, align 4
  %80 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %81 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %80, i32 0, i32 1
  store i32 3, i32* %81, align 4
  %82 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %83 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %82, i32 0, i32 2
  store i32 5, i32* %83, align 8
  %84 = load i64, i64* @TOUCAM_HEADER_SIZE, align 8
  %85 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %86 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %85, i32 0, i32 9
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @TOUCAM_TRAILER_SIZE, align 8
  %88 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %89 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %88, i32 0, i32 8
  store i64 %87, i64* %89, align 8
  br label %136

90:                                               ; preds = %45
  %91 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %92 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 128, i32* %93, align 4
  %94 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %95 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 96, i32* %96, align 4
  %97 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %98 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 640, i32* %99, align 8
  %100 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %101 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 480, i32* %102, align 4
  %103 = load i32, i32* @PSZ_SQCIF, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* @PSZ_QSIF, align 4
  %106 = shl i32 1, %105
  %107 = or i32 %104, %106
  %108 = load i32, i32* @PSZ_QCIF, align 4
  %109 = shl i32 1, %108
  %110 = or i32 %107, %109
  %111 = load i32, i32* @PSZ_SIF, align 4
  %112 = shl i32 1, %111
  %113 = or i32 %110, %112
  %114 = load i32, i32* @PSZ_CIF, align 4
  %115 = shl i32 1, %114
  %116 = or i32 %113, %115
  %117 = load i32, i32* @PSZ_VGA, align 4
  %118 = shl i32 1, %117
  %119 = or i32 %116, %118
  %120 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %121 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %123 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 640, i32* %124, align 4
  %125 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %126 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 480, i32* %127, align 4
  %128 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %129 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %128, i32 0, i32 1
  store i32 3, i32* %129, align 4
  %130 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %131 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %130, i32 0, i32 2
  store i32 4, i32* %131, align 8
  %132 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %133 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %132, i32 0, i32 9
  store i64 0, i64* %133, align 8
  %134 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %135 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %134, i32 0, i32 8
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %90, %51
  br label %137

137:                                              ; preds = %136, %8
  %138 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %139 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %140 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %142 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %146 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %144, %148
  %150 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %151 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  %153 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %154 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %158 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %156, %160
  %162 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %163 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %166 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %170 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %168, %172
  %174 = mul nsw i32 %173, 3
  %175 = sdiv i32 %174, 2
  %176 = call i32 @PAGE_ALIGN(i32 %175)
  %177 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %178 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  ret void
}

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
