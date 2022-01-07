; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-check.c_s3c_pm_makecheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-check.c_s3c_pm_makecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }

@CHECK_CHUNKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.resource*, i32*)* @s3c_pm_makecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @s3c_pm_makecheck(%struct.resource* %0, i32* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.resource*, %struct.resource** %3, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @CHECK_CHUNKSIZE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @CHECK_CHUNKSIZE, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @phys_to_virt(i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @crc32_le(i32 -1, i32 %29, i64 %30)
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* @CHECK_CHUNKSIZE, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %10

39:                                               ; preds = %10
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32 @crc32_le(i32, i32, i64) #1

declare dso_local i32 @phys_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
