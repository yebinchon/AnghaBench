; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_w996Xcf.c_w9968cf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 202752, i32 614400
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = udiv i64 %18, 2
  %20 = add i64 %17, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %3, align 8
  %23 = udiv i64 %22, 4
  %24 = add i64 %21, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %3, align 8
  %27 = udiv i64 %26, 4
  %28 = add i64 %25, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %3, align 8
  %31 = udiv i64 %30, 2
  %32 = add i64 %29, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %3, align 8
  %35 = udiv i64 %34, 4
  %36 = add i64 %33, %35
  store i64 %36, i64* %9, align 8
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = call i32 @reg_w(%struct.sd* %37, i32 0, i32 65280)
  %39 = load %struct.sd*, %struct.sd** %2, align 8
  %40 = call i32 @reg_w(%struct.sd* %39, i32 0, i32 48912)
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = call i32 @reg_w(%struct.sd* %41, i32 3, i32 16477)
  %43 = load %struct.sd*, %struct.sd** %2, align 8
  %44 = call i32 @reg_w(%struct.sd* %43, i32 4, i32 48)
  %45 = load %struct.sd*, %struct.sd** %2, align 8
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, 65535
  %48 = trunc i64 %47 to i32
  %49 = call i32 @reg_w(%struct.sd* %45, i32 32, i32 %48)
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = lshr i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = call i32 @reg_w(%struct.sd* %50, i32 33, i32 %53)
  %55 = load %struct.sd*, %struct.sd** %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = and i64 %56, 65535
  %58 = trunc i64 %57 to i32
  %59 = call i32 @reg_w(%struct.sd* %55, i32 36, i32 %58)
  %60 = load %struct.sd*, %struct.sd** %2, align 8
  %61 = load i64, i64* %5, align 8
  %62 = lshr i64 %61, 16
  %63 = trunc i64 %62 to i32
  %64 = call i32 @reg_w(%struct.sd* %60, i32 37, i32 %63)
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, 65535
  %68 = trunc i64 %67 to i32
  %69 = call i32 @reg_w(%struct.sd* %65, i32 40, i32 %68)
  %70 = load %struct.sd*, %struct.sd** %2, align 8
  %71 = load i64, i64* %6, align 8
  %72 = lshr i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = call i32 @reg_w(%struct.sd* %70, i32 41, i32 %73)
  %75 = load %struct.sd*, %struct.sd** %2, align 8
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, 65535
  %78 = trunc i64 %77 to i32
  %79 = call i32 @reg_w(%struct.sd* %75, i32 34, i32 %78)
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = load i64, i64* %7, align 8
  %82 = lshr i64 %81, 16
  %83 = trunc i64 %82 to i32
  %84 = call i32 @reg_w(%struct.sd* %80, i32 35, i32 %83)
  %85 = load %struct.sd*, %struct.sd** %2, align 8
  %86 = load i64, i64* %8, align 8
  %87 = and i64 %86, 65535
  %88 = trunc i64 %87 to i32
  %89 = call i32 @reg_w(%struct.sd* %85, i32 38, i32 %88)
  %90 = load %struct.sd*, %struct.sd** %2, align 8
  %91 = load i64, i64* %8, align 8
  %92 = lshr i64 %91, 16
  %93 = trunc i64 %92 to i32
  %94 = call i32 @reg_w(%struct.sd* %90, i32 39, i32 %93)
  %95 = load %struct.sd*, %struct.sd** %2, align 8
  %96 = load i64, i64* %9, align 8
  %97 = and i64 %96, 65535
  %98 = trunc i64 %97 to i32
  %99 = call i32 @reg_w(%struct.sd* %95, i32 42, i32 %98)
  %100 = load %struct.sd*, %struct.sd** %2, align 8
  %101 = load i64, i64* %9, align 8
  %102 = lshr i64 %101, 16
  %103 = trunc i64 %102 to i32
  %104 = call i32 @reg_w(%struct.sd* %100, i32 43, i32 %103)
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = load i64, i64* %7, align 8
  %107 = and i64 %106, 65535
  %108 = trunc i64 %107 to i32
  %109 = call i32 @reg_w(%struct.sd* %105, i32 50, i32 %108)
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = load i64, i64* %7, align 8
  %112 = lshr i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = call i32 @reg_w(%struct.sd* %110, i32 51, i32 %113)
  %115 = load %struct.sd*, %struct.sd** %2, align 8
  %116 = load i64, i64* %7, align 8
  %117 = and i64 %116, 65535
  %118 = trunc i64 %117 to i32
  %119 = call i32 @reg_w(%struct.sd* %115, i32 52, i32 %118)
  %120 = load %struct.sd*, %struct.sd** %2, align 8
  %121 = load i64, i64* %7, align 8
  %122 = lshr i64 %121, 16
  %123 = trunc i64 %122 to i32
  %124 = call i32 @reg_w(%struct.sd* %120, i32 53, i32 %123)
  %125 = load %struct.sd*, %struct.sd** %2, align 8
  %126 = call i32 @reg_w(%struct.sd* %125, i32 54, i32 0)
  %127 = load %struct.sd*, %struct.sd** %2, align 8
  %128 = call i32 @reg_w(%struct.sd* %127, i32 55, i32 2052)
  %129 = load %struct.sd*, %struct.sd** %2, align 8
  %130 = call i32 @reg_w(%struct.sd* %129, i32 56, i32 0)
  %131 = load %struct.sd*, %struct.sd** %2, align 8
  %132 = call i32 @reg_w(%struct.sd* %131, i32 63, i32 0)
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
