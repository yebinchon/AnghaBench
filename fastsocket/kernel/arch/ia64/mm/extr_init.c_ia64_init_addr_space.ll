; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_init.c_ia64_init_addr_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_init.c_ia64_init_addr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i8*, %struct.TYPE_5__*, i32 }

@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@VM_DATA_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@MMAP_PAGE_ZERO = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@_PAGE_MA_NAT = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_init_addr_space() #0 {
  %1 = alloca %struct.vm_area_struct*, align 8
  %2 = call i32 (...) @ia64_set_rbs_bot()
  %3 = load i32, i32* @vm_area_cachep, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.vm_area_struct* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.vm_area_struct* %5, %struct.vm_area_struct** %1, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %7 = icmp ne %struct.vm_area_struct* %6, null
  br i1 %7, label %8, label %72

8:                                                ; preds = %0
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 5
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 4
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** @PAGE_SIZE, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @VM_DATA_DEFAULT_FLAGS, align 4
  %34 = load i32, i32* @VM_GROWSUP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VM_ACCOUNT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vm_get_page_prot(i32 %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @down_write(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %55 = call i64 @insert_vm_struct(%struct.TYPE_5__* %53, %struct.vm_area_struct* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @up_write(i32* %61)
  %63 = load i32, i32* @vm_area_cachep, align 4
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %65 = call i32 @kmem_cache_free(i32 %63, %struct.vm_area_struct* %64)
  br label %140

66:                                               ; preds = %8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @up_write(i32* %70)
  br label %72

72:                                               ; preds = %66, %0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MMAP_PAGE_ZERO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %140, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @vm_area_cachep, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.vm_area_struct* @kmem_cache_zalloc(i32 %80, i32 %81)
  store %struct.vm_area_struct* %82, %struct.vm_area_struct** %1, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %84 = icmp ne %struct.vm_area_struct* %83, null
  br i1 %84, label %85, label %139

85:                                               ; preds = %79
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 5
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 4
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %93, align 8
  %94 = load i8*, i8** @PAGE_SIZE, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @PAGE_READONLY, align 4
  %98 = call i32 @pgprot_val(i32 %97)
  %99 = load i32, i32* @_PAGE_MA_NAT, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @__pgprot(i32 %100)
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @VM_READ, align 4
  %105 = load i32, i32* @VM_MAYREAD, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @VM_IO, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VM_RESERVED, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i32 @down_write(i32* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %122 = call i64 @insert_vm_struct(%struct.TYPE_5__* %120, %struct.vm_area_struct* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %85
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = call i32 @up_write(i32* %128)
  %130 = load i32, i32* @vm_area_cachep, align 4
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %1, align 8
  %132 = call i32 @kmem_cache_free(i32 %130, %struct.vm_area_struct* %131)
  br label %140

133:                                              ; preds = %85
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = call i32 @up_write(i32* %137)
  br label %139

139:                                              ; preds = %133, %79
  br label %140

140:                                              ; preds = %57, %124, %139, %72
  ret void
}

declare dso_local i32 @ia64_set_rbs_bot(...) #1

declare dso_local %struct.vm_area_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @insert_vm_struct(%struct.TYPE_5__*, %struct.vm_area_struct*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
