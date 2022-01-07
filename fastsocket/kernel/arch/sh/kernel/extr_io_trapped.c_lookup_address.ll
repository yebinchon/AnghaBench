; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_lookup_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_io_trapped.c_lookup_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapped_io = type { i32, %struct.resource*, i64 }
%struct.resource = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trapped_io*, i64)* @lookup_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_address(%struct.trapped_io* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.trapped_io*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.trapped_io* %0, %struct.trapped_io** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %11 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %16 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %21 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %20, i32 0, i32 1
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 %24
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  %33 = add i64 %32, 1
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i64 @roundup(i64 %33, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %19
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = add i64 %44, %47
  store i64 %48, i64* %3, align 8
  br label %57

49:                                               ; preds = %19
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %13

56:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
