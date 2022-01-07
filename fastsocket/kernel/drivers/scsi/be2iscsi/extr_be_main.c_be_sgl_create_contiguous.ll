; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_sgl_create_contiguous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_sgl_create_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_dma_mem = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, %struct.be_dma_mem*)* @be_sgl_create_contiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_sgl_create_contiguous(i8* %0, i64 %1, i64 %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %27 = icmp ne %struct.be_dma_mem* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
