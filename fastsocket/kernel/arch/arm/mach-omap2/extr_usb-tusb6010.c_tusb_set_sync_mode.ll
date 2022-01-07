; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_tusb_set_sync_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_usb-tusb6010.c_tusb_set_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@ERANGE = common dso_local global i32 0, align 4
@sync_cs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tusb_set_sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_set_sync_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpmc_timings, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %9, 3000
  store i32 %10, i32* %7, align 4
  %11 = call i32 @memset(%struct.gpmc_timings* %6, i32 0, i32 72)
  %12 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub i32 %15, 7000
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @next_clk(i32 %14, i32 %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 2
  store i32 12, i32* %21, align 8
  %22 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 1000
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %24, %25
  %27 = sub i32 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %148

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp ule i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul i32 %40, %41
  %43 = udiv i32 %42, 1000
  %44 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @next_clk(i32 %46, i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 1000
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 3, %55
  %57 = add i32 %54, %56
  store i32 %57, i32* %8, align 4
  %58 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @next_clk(i32 %59, i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 1000
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 5, %68
  %70 = add i32 %67, %69
  store i32 %70, i32* %8, align 4
  %71 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @next_clk(i32 %72, i32 %73, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 6
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 1000
  %81 = load i32, i32* %5, align 4
  %82 = mul i32 1, %81
  %83 = add i32 %80, %82
  store i32 %83, i32* %8, align 4
  %84 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i8* @next_clk(i32 %85, i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 7
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 8
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 1000
  %97 = add nsw i32 %96, 7000
  store i32 %97, i32* %8, align 4
  %98 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i8* @next_clk(i32 %99, i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 14
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 9
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 1000
  %110 = load i32, i32* %5, align 4
  %111 = mul i32 3, %110
  %112 = add i32 %109, %111
  store i32 %112, i32* %8, align 4
  %113 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i8* @next_clk(i32 %114, i32 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 10
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %121, 1000
  %123 = load i32, i32* %5, align 4
  %124 = mul i32 6, %123
  %125 = add i32 %122, %124
  store i32 %125, i32* %8, align 4
  %126 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 10
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i8* @next_clk(i32 %127, i32 %128, i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 11
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 12
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 12
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 1000
  %139 = add nsw i32 %138, 7000
  store i32 %139, i32* %8, align 4
  %140 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i8* @next_clk(i32 %141, i32 %142, i32 %143)
  %145 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %6, i32 0, i32 13
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* @sync_cs, align 4
  %147 = call i32 @gpmc_cs_set_timings(i32 %146, %struct.gpmc_timings* %6)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %39, %32
  %149 = load i32, i32* %3, align 4
  ret i32 %149
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
