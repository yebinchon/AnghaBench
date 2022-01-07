; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h___vxge_hw_mempool_item_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h___vxge_hw_mempool_item_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_hw_mempool = type { i64, i64, i64, i64, i64*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vxge_hw_mempool*, i64, i8*, i64*)* @__vxge_hw_mempool_item_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__vxge_hw_mempool_item_priv(%struct.vxge_hw_mempool* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.vxge_hw_mempool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.vxge_hw_mempool* %0, %struct.vxge_hw_mempool** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %12 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %11, i32 0, i32 5
  %13 = load i8**, i8*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %27 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i1 [ false, %4 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @vxge_assert(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %36 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %34, %37
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %43 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @vxge_assert(i32 %46)
  %48 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %49 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vxge_hw_mempool*, %struct.vxge_hw_mempool** %5, align 8
  %58 = getelementptr inbounds %struct.vxge_hw_mempool, %struct.vxge_hw_mempool* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = getelementptr i8, i8* %54, i64 %60
  ret i8* %61
}

declare dso_local i32 @vxge_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
