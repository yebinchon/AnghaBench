; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_determine_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_determine_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32)* @f1x_determine_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_determine_channel(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %15 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 1
  %18 = and i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %20 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %23
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %30 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %34 = call i32 @dct_sel_interleave_addr(%struct.amd64_pvt* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 6
  %40 = and i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 9, i32 6
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 31
  %54 = call i32 @hweight_long(i32 %53)
  %55 = srem i32 %54, 2
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 1
  %60 = load i32, i32* %13, align 4
  %61 = xor i32 %59, %60
  store i32 %61, i32* %5, align 4
  br label %78

62:                                               ; preds = %41
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @hweight8(i32 %64)
  %66 = add nsw i32 12, %65
  %67 = ashr i32 %63, %66
  %68 = and i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %78

69:                                               ; preds = %28
  %70 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %71 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %73, %62, %45, %37, %26, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
