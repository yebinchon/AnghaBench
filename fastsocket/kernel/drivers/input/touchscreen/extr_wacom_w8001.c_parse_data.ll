; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_parse_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_parse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001_coord = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.w8001_coord*)* @parse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_data(i32* %0, %struct.w8001_coord* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.w8001_coord*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.w8001_coord* %1, %struct.w8001_coord** %4, align 8
  %5 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %6 = call i32 @memset(%struct.w8001_coord* %5, i32 0, i32 36)
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 32
  %11 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %12 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %18 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 2
  %23 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %24 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 4
  %29 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %30 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = shl i32 %34, 9
  %36 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %37 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 127
  %42 = shl i32 %41, 2
  %43 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %44 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 96
  %51 = ashr i32 %50, 5
  %52 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %53 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 127
  %60 = shl i32 %59, 9
  %61 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %62 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 127
  %67 = shl i32 %66, 2
  %68 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %69 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 24
  %76 = ashr i32 %75, 3
  %77 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %78 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 127
  %85 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %86 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 7
  %91 = shl i32 %90, 7
  %92 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %93 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 127
  %100 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %101 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 127
  %106 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %107 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  ret void
}

declare dso_local i32 @memset(%struct.w8001_coord*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
