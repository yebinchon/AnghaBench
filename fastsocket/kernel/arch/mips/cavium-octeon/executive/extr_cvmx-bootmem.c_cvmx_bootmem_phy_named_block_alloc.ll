; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.cvmx_bootmem_named_block_desc = type { i32, i64*, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_named_block_alloc(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %29 = call i32 (i8*, i32, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, %struct.TYPE_2__* %28)
  store i32 -1, i32* %7, align 4
  br label %113

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @cvmx_spinlock_lock(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* null, i32 %42)
  store %struct.cvmx_bootmem_named_block_desc* %43, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8* %44, i32 %47)
  %49 = icmp ne %struct.cvmx_bootmem_named_block_desc* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %52 = icmp ne %struct.cvmx_bootmem_named_block_desc* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50, %39
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @cvmx_spinlock_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %53
  store i32 -1, i32* %7, align 4
  br label %113

63:                                               ; preds = %50
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i64 @__ALIGN_MASK(i64 %64, i64 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @cvmx_bootmem_phy_alloc(i64 %68, i64 %69, i64 %70, i64 %71, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %63
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %81 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %84 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %86 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strncpy(i64* %87, i8* %88, i32 %91)
  %93 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %15, align 8
  %94 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %95, i64 %100
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %78, %63
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = call i32 @cvmx_spinlock_unlock(i32* %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %62, %20
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_phy_named_block_find(i8*, i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i64 @__ALIGN_MASK(i64, i64) #1

declare dso_local i32 @cvmx_bootmem_phy_alloc(i64, i64, i64, i64, i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
