; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_tusb_set_async_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_tusb_set_async_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@async_cs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tusb_set_async_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_set_async_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpmc_timings, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add i32 %8, 3000
  store i32 %9, i32* %6, align 4
  %10 = call i32 @memset(%struct.gpmc_timings* %5, i32 0, i32 64)
  %11 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 0
  store i32 8, i32* %11, align 8
  %12 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 7000
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @next_clk(i32 %13, i32 %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @next_clk(i32 %21, i32 %22, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1000
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @next_clk(i32 %28, i32 %30, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = add nsw i32 %37, 300
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @next_clk(i32 %40, i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 1000
  store i32 %48, i32* %7, align 4
  %49 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i8* @next_clk(i32 %50, i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 6
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 1000
  %62 = add nsw i32 %61, 7000
  store i32 %62, i32* %7, align 4
  %63 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i8* @next_clk(i32 %64, i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 12
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 7
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1000
  %76 = load i32, i32* %4, align 4
  %77 = call i8* @next_clk(i32 %73, i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 8
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 1000
  %83 = add nsw i32 %82, 300
  store i32 %83, i32* %7, align 4
  %84 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i8* @next_clk(i32 %85, i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 9
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 10
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 1000
  %97 = add nsw i32 %96, 7000
  store i32 %97, i32* %7, align 4
  %98 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i8* @next_clk(i32 %99, i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %5, i32 0, i32 11
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* @async_cs, align 4
  %105 = call i32 @gpmc_cs_set_timings(i32 %104, %struct.gpmc_timings* %5)
  ret i32 %105
}

declare dso_local i32 @memset(%struct.gpmc_timings*, i32, i32) #1

declare dso_local i8* @next_clk(i32, i32, i32) #1

declare dso_local i32 @gpmc_cs_set_timings(i32, %struct.gpmc_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
