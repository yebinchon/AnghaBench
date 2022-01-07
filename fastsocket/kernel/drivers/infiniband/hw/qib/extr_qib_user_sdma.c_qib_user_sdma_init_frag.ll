; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_user_sdma_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i8*, %struct.page* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_user_sdma_pkt*, i32, i64, i64, i32, i32, %struct.page*, i8*, i32)* @qib_user_sdma_init_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_user_sdma_init_frag(%struct.qib_user_sdma_pkt* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct.page* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.qib_user_sdma_pkt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.qib_user_sdma_pkt* %0, %struct.qib_user_sdma_pkt** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.page* %6, %struct.page** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %21 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %19, i64* %26, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %29 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %27, i64* %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %37 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %35, i32* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %45 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %43, i32* %50, align 4
  %51 = load %struct.page*, %struct.page** %16, align 8
  %52 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %53 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  store %struct.page* %51, %struct.page** %58, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %61 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i8* %59, i8** %66, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %10, align 8
  %69 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 %67, i32* %74, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
