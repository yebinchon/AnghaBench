; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_kmap.c_get_io_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_kmap.c_get_io_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, %struct.vm_struct*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KMAP_START = common dso_local global i64 0, align 8
@iolist = common dso_local global %struct.vm_struct* null, align 8
@KMAP_END = common dso_local global i64 0, align 8
@IO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_struct* (i64)* @get_io_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_struct* @get_io_area(i64 %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_struct**, align 8
  %6 = alloca %struct.vm_struct*, align 8
  %7 = alloca %struct.vm_struct*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vm_struct* @kmalloc(i32 24, i32 %8)
  store %struct.vm_struct* %9, %struct.vm_struct** %7, align 8
  %10 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %11 = icmp ne %struct.vm_struct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %67

13:                                               ; preds = %1
  %14 = load i64, i64* @KMAP_START, align 8
  store i64 %14, i64* %4, align 8
  store %struct.vm_struct** @iolist, %struct.vm_struct*** %5, align 8
  br label %15

15:                                               ; preds = %47, %13
  %16 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  %17 = load %struct.vm_struct*, %struct.vm_struct** %16, align 8
  store %struct.vm_struct* %17, %struct.vm_struct** %6, align 8
  %18 = icmp ne %struct.vm_struct* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %50

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @KMAP_END, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %37 = call i32 @kfree(%struct.vm_struct* %36)
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %67

38:                                               ; preds = %29
  %39 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = add i64 %41, %45
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %49 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %48, i32 0, i32 1
  store %struct.vm_struct** %49, %struct.vm_struct*** %5, align 8
  br label %15

50:                                               ; preds = %28, %15
  %51 = load i64, i64* %4, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %54 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @IO_SIZE, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %59 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  %61 = load %struct.vm_struct*, %struct.vm_struct** %60, align 8
  %62 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %62, i32 0, i32 1
  store %struct.vm_struct* %61, %struct.vm_struct** %63, align 8
  %64 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %65 = load %struct.vm_struct**, %struct.vm_struct*** %5, align 8
  store %struct.vm_struct* %64, %struct.vm_struct** %65, align 8
  %66 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  store %struct.vm_struct* %66, %struct.vm_struct** %2, align 8
  br label %67

67:                                               ; preds = %50, %35, %12
  %68 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  ret %struct.vm_struct* %68
}

declare dso_local %struct.vm_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
