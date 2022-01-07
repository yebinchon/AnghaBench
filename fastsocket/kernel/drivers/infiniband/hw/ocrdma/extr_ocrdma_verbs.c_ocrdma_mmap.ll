; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.ocrdma_ucontext = type { %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.ocrdma_ucontext*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = call %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext* %13)
  store %struct.ocrdma_ucontext* %14, %struct.ocrdma_ucontext** %6, align 8
  %15 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %16 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %15, i32 0, i32 0
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %16, align 8
  store %struct.ocrdma_dev* %17, %struct.ocrdma_dev** %7, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = sub i64 %29, %33
  store i64 %34, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %159

45:                                               ; preds = %2
  %46 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @ocrdma_search_mmap(%struct.ocrdma_ucontext* %46, i64 %51, i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %159

59:                                               ; preds = %45
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %67 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %65, %69
  %71 = icmp ule i64 %64, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %63
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %75 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ule i64 %73, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %80, i32 %83, i64 %86, i64 %87, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %157

92:                                               ; preds = %72, %63, %59
  %93 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %94 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %92
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %101 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp uge i64 %99, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %98
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %108 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %112 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %110, %114
  %116 = icmp ule i64 %106, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %105
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %120 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ule i64 %118, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pgprot_writecombine(i32 %127)
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %131, i32 %134, i64 %137, i64 %138, i32 %141)
  store i32 %142, i32* %11, align 4
  br label %156

143:                                              ; preds = %117, %105, %98, %92
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %153 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @remap_pfn_range(%struct.vm_area_struct* %144, i32 %147, i64 %150, i64 %151, i32 %154)
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %143, %124
  br label %157

157:                                              ; preds = %156, %79
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %56, %42
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @ocrdma_search_mmap(%struct.ocrdma_ucontext*, i64, i64) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
