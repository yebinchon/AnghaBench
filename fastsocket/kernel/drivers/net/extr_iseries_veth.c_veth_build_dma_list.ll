; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_build_dma_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_build_dma_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chunk = type { i64, i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chunk*, i8*, i64)* @veth_build_dma_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_build_dma_list(%struct.dma_chunk* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dma_chunk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chunk* %0, %struct.dma_chunk** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @iseries_hv_addr(i8* %9)
  %11 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %12 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %11, i64 0
  %13 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = sub i64 %15, %20
  %22 = call i8* @min(i64 %14, i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %25 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %24, i64 0
  %26 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %28 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %27, i64 0
  %29 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %35, %3
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = call i8* @iseries_hv_addr(i8* %38)
  %40 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %40, i64 %42
  %44 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = call i8* @min(i64 %47, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %51, i64 %53
  %55 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %54, i32 0, i32 0
  store i64 %50, i64* %55, align 8
  %56 = load %struct.dma_chunk*, %struct.dma_chunk** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %56, i64 %58
  %60 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %31

66:                                               ; preds = %31
  ret void
}

declare dso_local i8* @iseries_hv_addr(i8*) #1

declare dso_local i8* @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
