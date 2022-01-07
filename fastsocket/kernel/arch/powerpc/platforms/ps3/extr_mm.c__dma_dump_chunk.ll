; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c__dma_dump_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c__dma_dump_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chunk = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s:%d: r.dev        %llu:%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s:%d: r.bus_addr   %lxh\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s:%d: r.page_size  %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s:%d: r.len        %lxh\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s:%d: r.offset     %lxh\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s:%d: c.lpar_addr  %lxh\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s:%d: c.bus_addr   %lxh\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s:%d: c.len        %lxh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chunk*, i8*, i32)* @_dma_dump_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dma_dump_chunk(%struct.dma_chunk* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_chunk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chunk* %0, %struct.dma_chunk** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %10 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %17 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8, i32 %15, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %27 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %35 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %43 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %51 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32 %49, i32 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %59 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %56, i32 %57, i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %65 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %62, i32 %63, i32 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %71 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %68, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @DBG(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
