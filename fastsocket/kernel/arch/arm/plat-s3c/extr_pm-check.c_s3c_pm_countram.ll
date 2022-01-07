; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-check.c_s3c_pm_countram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pm-check.c_s3c_pm_countram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }

@CHECK_CHUNKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Area %08lx..%08lx, %d blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.resource*, i32*)* @s3c_pm_countram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @s3c_pm_countram(%struct.resource* %0, i32* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.resource*, %struct.resource** %3, align 8
  %7 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.resource*, %struct.resource** %3, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @CHECK_CHUNKSIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @CHECK_CHUNKSIZE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.resource*, %struct.resource** %3, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.resource*, %struct.resource** %3, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32 @S3C_PMDBG(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
