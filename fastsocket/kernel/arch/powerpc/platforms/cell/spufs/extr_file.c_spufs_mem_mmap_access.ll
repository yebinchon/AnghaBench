; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.spu_context* }
%struct.spu_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (%struct.spu_context*)* }

@VM_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* @spufs_mem_mmap_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mem_mmap_access(%struct.vm_area_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spu_context*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.spu_context*, %struct.spu_context** %18, align 8
  store %struct.spu_context* %19, %struct.spu_context** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  store i64 %24, i64* %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VM_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %88

37:                                               ; preds = %27, %5
  %38 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %39 = call i64 @spu_acquire(%struct.spu_context* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINTR, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %88

44:                                               ; preds = %37
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %62 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8* (%struct.spu_context*)*, i8* (%struct.spu_context*)** %64, align 8
  %66 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %67 = call i8* %65(%struct.spu_context* %66)
  store i8* %67, i8** %14, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memcpy_toio(i8* %73, i8* %74, i32 %75)
  br label %84

77:                                               ; preds = %60
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @memcpy_fromio(i8* %78, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.spu_context*, %struct.spu_context** %12, align 8
  %86 = call i32 @spu_release(%struct.spu_context* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %41, %34
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @memcpy_toio(i8*, i8*, i32) #1

declare dso_local i32 @memcpy_fromio(i8*, i8*, i32) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
