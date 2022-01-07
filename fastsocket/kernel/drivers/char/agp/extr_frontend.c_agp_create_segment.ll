; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_create_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_create_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_client = type { i32 }
%struct.agp_region = type { i32, %struct.agp_segment_priv* }
%struct.agp_segment_priv = type { i32, i32, i32 }
%struct.agp_segment = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_create_segment(%struct.agp_client* %0, %struct.agp_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_client*, align 8
  %5 = alloca %struct.agp_region*, align 8
  %6 = alloca %struct.agp_segment_priv**, align 8
  %7 = alloca %struct.agp_segment_priv*, align 8
  %8 = alloca %struct.agp_segment*, align 8
  %9 = alloca i64, align 8
  store %struct.agp_client* %0, %struct.agp_client** %4, align 8
  store %struct.agp_region* %1, %struct.agp_region** %5, align 8
  %10 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %11 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 12, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.agp_segment_priv* @kzalloc(i32 %15, i32 %16)
  store %struct.agp_segment_priv* %17, %struct.agp_segment_priv** %7, align 8
  %18 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %19 = icmp eq %struct.agp_segment_priv* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %22 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %21, i32 0, i32 1
  %23 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %22, align 8
  %24 = call i32 @kfree(%struct.agp_segment_priv* %23)
  %25 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %26 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %25, i32 0, i32 1
  store %struct.agp_segment_priv* null, %struct.agp_segment_priv** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %2
  %30 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %31 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %30, i32 0, i32 1
  %32 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %31, align 8
  %33 = bitcast %struct.agp_segment_priv* %32 to %struct.agp_segment*
  store %struct.agp_segment* %33, %struct.agp_segment** %8, align 8
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %70, %29
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %37 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = load %struct.agp_segment*, %struct.agp_segment** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %42, i64 %43
  %45 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %47, i64 %48
  %50 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load %struct.agp_segment*, %struct.agp_segment** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %51, i64 %52
  %54 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %56, i64 %57
  %59 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.agp_segment*, %struct.agp_segment** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %60, i64 %61
  %63 = getelementptr inbounds %struct.agp_segment, %struct.agp_segment* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @agp_convert_mmap_flags(i32 %64)
  %66 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %66, i64 %67
  %69 = getelementptr inbounds %struct.agp_segment_priv, %struct.agp_segment_priv* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %41
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %34

73:                                               ; preds = %34
  %74 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %75 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %74, i32 0, i32 1
  %76 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %75, align 8
  %77 = call i32 @kfree(%struct.agp_segment_priv* %76)
  %78 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %79 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %78, i32 0, i32 1
  store %struct.agp_segment_priv* null, %struct.agp_segment_priv** %79, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.agp_segment_priv** @kmalloc(i32 8, i32 %80)
  store %struct.agp_segment_priv** %81, %struct.agp_segment_priv*** %6, align 8
  %82 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %6, align 8
  %83 = icmp eq %struct.agp_segment_priv** %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %86 = call i32 @kfree(%struct.agp_segment_priv* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %99

89:                                               ; preds = %73
  %90 = load %struct.agp_segment_priv*, %struct.agp_segment_priv** %7, align 8
  %91 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %6, align 8
  store %struct.agp_segment_priv* %90, %struct.agp_segment_priv** %91, align 8
  %92 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %93 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %6, align 8
  %94 = load %struct.agp_region*, %struct.agp_region** %5, align 8
  %95 = getelementptr inbounds %struct.agp_region, %struct.agp_region* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = call i32 @agp_add_seg_to_client(%struct.agp_client* %92, %struct.agp_segment_priv** %93, i64 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %89, %84, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.agp_segment_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.agp_segment_priv*) #1

declare dso_local i32 @agp_convert_mmap_flags(i32) #1

declare dso_local %struct.agp_segment_priv** @kmalloc(i32, i32) #1

declare dso_local i32 @agp_add_seg_to_client(%struct.agp_client*, %struct.agp_segment_priv**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
