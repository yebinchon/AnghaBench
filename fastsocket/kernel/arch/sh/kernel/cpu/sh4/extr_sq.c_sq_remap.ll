; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sq_mapping = type { i64, i32, i8*, i64 }

@EINVAL = common dso_local global i64 0, align 8
@high_memory = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@sq_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@sq_bitmap = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@P4SEG_STORE_QUE = common dso_local global i64 0, align 8
@PAGE_KERNEL_NOCACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"sqremap: %15s  [%4d page%s]  va 0x%08lx   pa 0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sq_remap(i64 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sq_mapping*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = sub i64 %18, 1
  store i64 %19, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br label %26

26:                                               ; preds = %22, %4
  %27 = phi i1 [ true, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %156

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @high_memory, align 4
  %37 = call i64 @virt_to_phys(i32 %36)
  %38 = icmp ult i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %156

45:                                               ; preds = %34
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  %51 = call i64 @PAGE_ALIGN(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @sq_cache, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.sq_mapping* @kmem_cache_alloc(i32 %55, i32 %56)
  store %struct.sq_mapping* %57, %struct.sq_mapping** %10, align 8
  %58 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %59 = icmp ne %struct.sq_mapping* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i64, i64* @ENOMEM, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %156

67:                                               ; preds = %45
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %70 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %73 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %76 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @sq_bitmap, align 4
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = ashr i32 67108864, %78
  %80 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %81 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @get_order(i32 %82)
  %84 = call i32 @bitmap_find_free_region(i32 %77, i32 %79, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %67
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %150

93:                                               ; preds = %67
  %94 = load i64, i64* @P4SEG_STORE_QUE, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = add i64 %94, %98
  %100 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %101 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %103 = load i32, i32* @PAGE_KERNEL_NOCACHE, align 4
  %104 = call i64 @pgprot_val(i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = or i64 %104, %105
  %107 = call i32 @__sq_remap(%struct.sq_mapping* %102, i64 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %93
  br label %150

114:                                              ; preds = %93
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = sub nsw i32 %116, 1
  %118 = add i32 %115, %117
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = lshr i32 %118, %119
  store i32 %120, i32* %12, align 4
  %121 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %122 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @likely(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %128 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  br label %131

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i8* [ %129, %126 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %130 ]
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 1
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %138 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %139 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %142 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %132, i32 %133, i8* %137, i64 %140, i64 %143)
  %145 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %146 = call i32 @sq_mapping_list_add(%struct.sq_mapping* %145)
  %147 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %148 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %5, align 8
  br label %156

150:                                              ; preds = %113, %90
  %151 = load i32, i32* @sq_cache, align 4
  %152 = load %struct.sq_mapping*, %struct.sq_mapping** %10, align 8
  %153 = call i32 @kmem_cache_free(i32 %151, %struct.sq_mapping* %152)
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %5, align 8
  br label %156

156:                                              ; preds = %150, %131, %64, %42, %31
  %157 = load i64, i64* %5, align 8
  ret i64 %157
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.sq_mapping* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @__sq_remap(%struct.sq_mapping*, i64) #1

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i8*, i64, i64) #1

declare dso_local i64 @likely(i8*) #1

declare dso_local i32 @sq_mapping_list_add(%struct.sq_mapping*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sq_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
