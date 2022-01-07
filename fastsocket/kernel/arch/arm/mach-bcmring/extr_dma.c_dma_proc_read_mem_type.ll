; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_proc_read_mem_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_proc_read_mem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"dma_map_mem statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"coherent: %d\0A\00", align 1
@gDmaStatMemTypeCoherent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"kmalloc:  %d\0A\00", align 1
@gDmaStatMemTypeKmalloc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"vmalloc:  %d\0A\00", align 1
@gDmaStatMemTypeVmalloc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"user:     %d\0A\00", align 1
@gDmaStatMemTypeUser = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @dma_proc_read_mem_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_proc_read_mem_type(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %13, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = call i64 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @atomic_read(i32* @gDmaStatMemTypeCoherent)
  %28 = call i64 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 @atomic_read(i32* @gDmaStatMemTypeKmalloc)
  %38 = call i64 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i32 @atomic_read(i32* @gDmaStatMemTypeVmalloc)
  %48 = call i64 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @atomic_read(i32* @gDmaStatMemTypeUser)
  %58 = call i64 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  ret i32 %63
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
