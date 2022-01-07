; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iSeries_process_Condor_mainstore_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iSeries_process_Condor_mainstore_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryBlock = type { i64, i32, i64, i32 }
%struct.IoHriMainStoreSegment4 = type { i64, i64 }

@xMsVpd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Mainstore_VPD: Condor\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Main store hole: start chunk = %0lx, size = %0lx chunks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.MemoryBlock*, i64)* @iSeries_process_Condor_mainstore_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iSeries_process_Condor_mainstore_vpd(%struct.MemoryBlock* %0, i64 %1) #0 {
  %3 = alloca %struct.MemoryBlock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.IoHriMainStoreSegment4*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.MemoryBlock* %0, %struct.MemoryBlock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %7, align 8
  %12 = load i64, i64* @xMsVpd, align 8
  %13 = inttoptr i64 %12 to %struct.IoHriMainStoreSegment4*
  store %struct.IoHriMainStoreSegment4* %13, %struct.IoHriMainStoreSegment4** %8, align 8
  %14 = load %struct.IoHriMainStoreSegment4*, %struct.IoHriMainStoreSegment4** %8, align 8
  %15 = getelementptr inbounds %struct.IoHriMainStoreSegment4, %struct.IoHriMainStoreSegment4* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.IoHriMainStoreSegment4*, %struct.IoHriMainStoreSegment4** %8, align 8
  %18 = getelementptr inbounds %struct.IoHriMainStoreSegment4, %struct.IoHriMainStoreSegment4* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %25 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %24, i64 0
  %26 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %28 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %27, i64 0
  %29 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %31 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %30, i64 0
  %32 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %34 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %33, i64 0
  %35 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %34, i32 0, i32 3
  store i32 0, i32* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %2
  store i64 2, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %39, 4503599627370495
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @addr_to_chunk(i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @addr_to_chunk(i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %53 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %52, i64 0
  %54 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %58 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %57, i64 0
  %59 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %62 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %61, i64 1
  %63 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 4294967296, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %68 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %67, i64 1
  %69 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %70, %71
  %73 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %74 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %73, i64 1
  %75 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.MemoryBlock*, %struct.MemoryBlock** %3, align 8
  %77 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %76, i64 1
  %78 = getelementptr inbounds %struct.MemoryBlock, %struct.MemoryBlock* %77, i32 0, i32 3
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %38, %2
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @addr_to_chunk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
