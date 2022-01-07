; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_get_norm_dct_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_get_norm_dct_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32, i32, i32, i32)* @f1x_get_norm_dct_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_get_norm_dct_addr(%struct.amd64_pvt* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_dram_base(%struct.amd64_pvt* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %19 = call i32 @f10_dhar_offset(%struct.amd64_pvt* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %21 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -1024
  %24 = shl i32 %23, 16
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %34 = call i32 @dhar_base(%struct.amd64_pvt* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31, %27
  %37 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %38 = call i64 @dhar_valid(%struct.amd64_pvt* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @BIT_64(i32 32)
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %40, %36, %31
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %62

49:                                               ; preds = %5
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %51 = call i64 @dhar_valid(%struct.amd64_pvt* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @BIT_64(i32 32)
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %11, align 4
  br label %61

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @GENMASK(i32 6, i32 47)
  %65 = and i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @GENMASK(i32 23, i32 47)
  %68 = and i32 %66, %67
  %69 = sub nsw i32 %65, %68
  ret i32 %69
}

declare dso_local i32 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @f10_dhar_offset(%struct.amd64_pvt*) #1

declare dso_local i32 @dhar_base(%struct.amd64_pvt*) #1

declare dso_local i64 @dhar_valid(%struct.amd64_pvt*) #1

declare dso_local i32 @BIT_64(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
