; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_uclinux.c_uclinux_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_uclinux.c_uclinux_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8**, i32*)* @uclinux_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclinux_point(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.map_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load %struct.map_info*, %struct.map_info** %15, align 8
  store %struct.map_info* %16, %struct.map_info** %13, align 8
  %17 = load %struct.map_info*, %struct.map_info** %13, align 8
  %18 = getelementptr inbounds %struct.map_info, %struct.map_info* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.map_info*, %struct.map_info** %13, align 8
  %28 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32*, i32** %12, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %6
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
