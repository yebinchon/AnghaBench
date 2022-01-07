; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_init_wr_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_t4.h_init_wr_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t4_wr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64*, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.t4_wr*, i32, i32, i8*, i8*)* @init_wr_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_wr_hdr(%union.t4_wr* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %union.t4_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %union.t4_wr* %0, %union.t4_wr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %15 = bitcast %union.t4_wr* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %19 = bitcast %union.t4_wr* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %23 = bitcast %union.t4_wr* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %26 = bitcast %union.t4_wr* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %31 = bitcast %union.t4_wr* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 0, i64* %34, align 8
  %35 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %36 = bitcast %union.t4_wr* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %union.t4_wr*, %union.t4_wr** %6, align 8
  %42 = bitcast %union.t4_wr* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
