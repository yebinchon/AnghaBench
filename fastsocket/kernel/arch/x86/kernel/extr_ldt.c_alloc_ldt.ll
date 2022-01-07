; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_alloc_ldt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_alloc_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@LDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@flush_ldt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @alloc_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ldt(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %24 = sdiv i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = add nsw i32 %21, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %29 = sdiv i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = and i32 %26, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i8* @vmalloc(i32 %41)
  store i8* %42, i8** %9, align 8
  br label %47

43:                                               ; preds = %17
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64 @__get_free_page(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %118

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = call i32 @memcpy(i8* %57, i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %53
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %69, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 @memset(i8* %74, i32 0, i32 %79)
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @paravirt_alloc_ldt(i8* %81, i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = call i32 (...) @wmb()
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = call i32 (...) @wmb()
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %65
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = call i32 @load_LDT(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %94, %65
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @paravirt_free_ldt(i8* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @LDT_ENTRY_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @vfree(i8* %110)
  br label %116

112:                                              ; preds = %100
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @virt_to_page(i8* %113)
  %115 = call i32 @put_page(i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %97
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %50, %16
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @paravirt_alloc_ldt(i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @load_LDT(%struct.TYPE_5__*) #1

declare dso_local i32 @paravirt_free_ldt(i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
