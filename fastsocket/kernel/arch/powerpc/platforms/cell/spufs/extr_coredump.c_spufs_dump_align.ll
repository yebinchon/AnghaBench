; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_dump_align.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_dump_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i64*)* @spufs_dump_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_dump_align(%struct.file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = call i32 @min(i64 %11, i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %30, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %24, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = call i32 @min(i64 %31, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = call i32 @spufs_dump_write(%struct.file* %37, i8* %38, i32 %39, i64* %40)
  store i32 %41, i32* %9, align 4
  br label %20

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spufs_dump_write(%struct.file*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
