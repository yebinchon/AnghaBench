; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_fw_realloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_fw_realloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware_priv = type { i32, i32, %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware_priv*, i32)* @fw_realloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_realloc_buffer(%struct.firmware_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  store %struct.firmware_priv* %0, %struct.firmware_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32 @ALIGN(i32 %9, i32 %10)
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %15 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %22 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @max(i32 %20, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.page** @kmalloc(i32 %29, i32 %30)
  store %struct.page** %31, %struct.page*** %8, align 8
  %32 = load %struct.page**, %struct.page*** %8, align 8
  %33 = icmp ne %struct.page** %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %19
  %35 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %36 = call i32 @fw_load_abort(%struct.firmware_priv* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %117

39:                                               ; preds = %19
  %40 = load %struct.page**, %struct.page*** %8, align 8
  %41 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %42 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %41, i32 0, i32 2
  %43 = load %struct.page**, %struct.page*** %42, align 8
  %44 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %45 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(%struct.page** %40, %struct.page** %43, i32 %49)
  %51 = load %struct.page**, %struct.page*** %8, align 8
  %52 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %53 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page*, %struct.page** %51, i64 %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %59 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(%struct.page** %56, i32 0, i32 %64)
  %66 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %67 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %66, i32 0, i32 2
  %68 = load %struct.page**, %struct.page*** %67, align 8
  %69 = call i32 @kfree(%struct.page** %68)
  %70 = load %struct.page**, %struct.page*** %8, align 8
  %71 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %72 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %71, i32 0, i32 2
  store %struct.page** %70, %struct.page*** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %75 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %39, %2
  br label %77

77:                                               ; preds = %111, %76
  %78 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %79 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %77
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* @__GFP_HIGHMEM, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.page* @alloc_page(i32 %86)
  %88 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %89 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %88, i32 0, i32 2
  %90 = load %struct.page**, %struct.page*** %89, align 8
  %91 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %92 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.page*, %struct.page** %90, i64 %94
  store %struct.page* %87, %struct.page** %95, align 8
  %96 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %97 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %96, i32 0, i32 2
  %98 = load %struct.page**, %struct.page*** %97, align 8
  %99 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %100 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.page*, %struct.page** %98, i64 %102
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = icmp ne %struct.page* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %83
  %107 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %108 = call i32 @fw_load_abort(%struct.firmware_priv* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %117

111:                                              ; preds = %83
  %112 = load %struct.firmware_priv*, %struct.firmware_priv** %4, align 8
  %113 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %77

116:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %106, %34
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local i32 @fw_load_abort(%struct.firmware_priv*) #1

declare dso_local i32 @memcpy(%struct.page**, %struct.page**, i32) #1

declare dso_local i32 @memset(%struct.page**, i32, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
