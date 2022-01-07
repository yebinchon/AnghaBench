; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_ia32_do_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_ia32_do_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"ia32_do_mmap(file=%p,addr=0x%lx,len=0x%lx,prot=%x,flags=%x,offset=0x%llx)\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@IA32_PAGE_OFFSET = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_HUGETLB = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ia32_do_mmap: returning 0x%lx\0A\00", align 1
@ia32_mmap_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia32_do_mmap(%struct.file* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), %struct.file* %14, i64 %15, i64 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %23
  %36 = load i64, i64* @ENODEV, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %7, align 8
  br label %104

38:                                               ; preds = %28, %6
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @IA32_PAGE_ALIGN(i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %7, align 8
  br label %104

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @IA32_PAGE_OFFSET, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @IA32_PAGE_OFFSET, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @MAP_FIXED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* @ENOMEM, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %7, align 8
  br label %104

63:                                               ; preds = %55
  %64 = load i64, i64* @EINVAL, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %7, align 8
  br label %104

66:                                               ; preds = %49
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @OFFSET4K(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %7, align 8
  br label %104

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @get_prot32(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @MAP_HUGETLB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i64, i64* @ENOMEM, align 8
  %82 = sub i64 0, %81
  store i64 %82, i64* %7, align 8
  br label %104

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @down_write(i32* %87)
  %89 = load %struct.file*, %struct.file** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i64 @do_mmap(%struct.file* %89, i64 %90, i64 %91, i32 %92, i32 %93, i32 %94)
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = call i32 @up_write(i32* %99)
  %101 = load i64, i64* %9, align 8
  %102 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %83, %80, %70, %63, %60, %43, %35
  %105 = load i64, i64* %7, align 8
  ret i64 %105
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @IA32_PAGE_ALIGN(i64) #1

declare dso_local i64 @OFFSET4K(i32) #1

declare dso_local i32 @get_prot32(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(%struct.file*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
