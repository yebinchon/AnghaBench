; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_mem_going_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_mem_going_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_page_array = type { i32, i64*, %struct.cmm_page_array* }
%struct.memory_notify = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Memory going offline, searching 0x%lx (%ld pages).\0A\00", align 1
@cmm_lock = common dso_local global i32 0, align 4
@cmm_page_list = common dso_local global %struct.cmm_page_array* null, align 8
@loaned_pages = common dso_local global i32 0, align 4
@totalram_pages = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Failed to allocate memory for list management. Memory hotplug failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Released %ld pages in the search range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmm_mem_going_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_mem_going_offline(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.memory_notify*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmm_page_array*, align 8
  %8 = alloca %struct.cmm_page_array*, align 8
  %9 = alloca %struct.cmm_page_array*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.memory_notify*
  store %struct.memory_notify* %13, %struct.memory_notify** %4, align 8
  %14 = load %struct.memory_notify*, %struct.memory_notify** %4, align 8
  %15 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @pfn_to_kaddr(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.memory_notify*, %struct.memory_notify** %4, align 8
  %20 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = add i64 %18, %23
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %11, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.memory_notify*, %struct.memory_notify** %4, align 8
  %27 = getelementptr inbounds %struct.memory_notify, %struct.memory_notify* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @cmm_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  %30 = call i32 @spin_lock(i32* @cmm_lock)
  %31 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  store %struct.cmm_page_array* %31, %struct.cmm_page_array** %7, align 8
  store %struct.cmm_page_array* %31, %struct.cmm_page_array** %8, align 8
  br label %32

32:                                               ; preds = %125, %1
  %33 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %34 = icmp ne %struct.cmm_page_array* %33, null
  br i1 %34, label %35, label %129

35:                                               ; preds = %32
  %36 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %37 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %122, %35
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %125

45:                                               ; preds = %41
  %46 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %47 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %56 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %45
  br label %122

64:                                               ; preds = %54
  %65 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %66 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @__pa(i64 %70)
  %72 = call i32 @plpar_page_set_active(i32 %71)
  %73 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %74 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @free_page(i64 %78)
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %11, align 8
  %82 = load i32, i32* @loaned_pages, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @loaned_pages, align 4
  %84 = load i32, i32* @totalram_pages, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @totalram_pages, align 4
  %86 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %87 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %90 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %88, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %97 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  %101 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %102 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %64
  %106 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %107 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %108 = icmp eq %struct.cmm_page_array* %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %111 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %110, i32 0, i32 2
  %112 = load %struct.cmm_page_array*, %struct.cmm_page_array** %111, align 8
  store %struct.cmm_page_array* %112, %struct.cmm_page_array** %7, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %115 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %114, i32 0, i32 2
  %116 = load %struct.cmm_page_array*, %struct.cmm_page_array** %115, align 8
  store %struct.cmm_page_array* %116, %struct.cmm_page_array** %8, align 8
  %117 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  %118 = ptrtoint %struct.cmm_page_array* %117 to i64
  %119 = call i32 @free_page(i64 %118)
  %120 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  store %struct.cmm_page_array* %120, %struct.cmm_page_array** @cmm_page_list, align 8
  br label %122

121:                                              ; preds = %64
  br label %122

122:                                              ; preds = %121, %113, %63
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %10, align 8
  br label %41

125:                                              ; preds = %41
  %126 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %127 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %126, i32 0, i32 2
  %128 = load %struct.cmm_page_array*, %struct.cmm_page_array** %127, align 8
  store %struct.cmm_page_array* %128, %struct.cmm_page_array** %7, align 8
  br label %32

129:                                              ; preds = %32
  store %struct.cmm_page_array* null, %struct.cmm_page_array** %8, align 8
  %130 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  store %struct.cmm_page_array* %130, %struct.cmm_page_array** %7, align 8
  br label %131

131:                                              ; preds = %184, %129
  %132 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %133 = icmp ne %struct.cmm_page_array* %132, null
  br i1 %133, label %134, label %189

134:                                              ; preds = %131
  %135 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %136 = ptrtoint %struct.cmm_page_array* %135 to i64
  %137 = load i64, i64* %5, align 8
  %138 = icmp uge i64 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %134
  %140 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %141 = ptrtoint %struct.cmm_page_array* %140 to i64
  %142 = load i64, i64* %6, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %184

144:                                              ; preds = %139
  %145 = load i32, i32* @GFP_NOIO, align 4
  %146 = load i32, i32* @__GFP_NOWARN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @__GFP_NORETRY, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %151 = or i32 %149, %150
  %152 = call i64 @__get_free_page(i32 %151)
  %153 = inttoptr i64 %152 to %struct.cmm_page_array*
  store %struct.cmm_page_array* %153, %struct.cmm_page_array** %9, align 8
  %154 = load %struct.cmm_page_array*, %struct.cmm_page_array** %9, align 8
  %155 = icmp ne %struct.cmm_page_array* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %144
  %157 = call i32 @spin_unlock(i32* @cmm_lock)
  %158 = call i32 (i8*, ...) @cmm_dbg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  store i32 %159, i32* %2, align 4
  br label %193

160:                                              ; preds = %144
  %161 = load %struct.cmm_page_array*, %struct.cmm_page_array** %9, align 8
  %162 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = call i32 @memcpy(%struct.cmm_page_array* %161, %struct.cmm_page_array* %162, i32 %163)
  %165 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %166 = load %struct.cmm_page_array*, %struct.cmm_page_array** @cmm_page_list, align 8
  %167 = icmp eq %struct.cmm_page_array* %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load %struct.cmm_page_array*, %struct.cmm_page_array** %9, align 8
  store %struct.cmm_page_array* %169, %struct.cmm_page_array** @cmm_page_list, align 8
  br label %170

170:                                              ; preds = %168, %160
  %171 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %172 = icmp ne %struct.cmm_page_array* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.cmm_page_array*, %struct.cmm_page_array** %9, align 8
  %175 = load %struct.cmm_page_array*, %struct.cmm_page_array** %8, align 8
  %176 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %175, i32 0, i32 2
  store %struct.cmm_page_array* %174, %struct.cmm_page_array** %176, align 8
  br label %177

177:                                              ; preds = %173, %170
  %178 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %179 = ptrtoint %struct.cmm_page_array* %178 to i64
  %180 = call i32 @free_page(i64 %179)
  %181 = load i64, i64* %11, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %11, align 8
  %183 = load %struct.cmm_page_array*, %struct.cmm_page_array** %9, align 8
  store %struct.cmm_page_array* %183, %struct.cmm_page_array** %7, align 8
  br label %184

184:                                              ; preds = %177, %139, %134
  %185 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  store %struct.cmm_page_array* %185, %struct.cmm_page_array** %8, align 8
  %186 = load %struct.cmm_page_array*, %struct.cmm_page_array** %7, align 8
  %187 = getelementptr inbounds %struct.cmm_page_array, %struct.cmm_page_array* %186, i32 0, i32 2
  %188 = load %struct.cmm_page_array*, %struct.cmm_page_array** %187, align 8
  store %struct.cmm_page_array* %188, %struct.cmm_page_array** %7, align 8
  br label %131

189:                                              ; preds = %131
  %190 = call i32 @spin_unlock(i32* @cmm_lock)
  %191 = load i64, i64* %11, align 8
  %192 = call i32 (i8*, ...) @cmm_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %191)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %189, %156
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i64 @pfn_to_kaddr(i32) #1

declare dso_local i32 @cmm_dbg(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @plpar_page_set_active(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.cmm_page_array*, %struct.cmm_page_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
