; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_dev = type { %struct.ssp_device* }
%struct.ssp_device = type { i64 }

@TIMEOUT = common dso_local global i32 0, align 4
@SSSR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@SSDR = common dso_local global i64 0, align 8
@SSSR_BSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_flush(%struct.ssp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssp_dev*, align 8
  %4 = alloca %struct.ssp_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ssp_dev* %0, %struct.ssp_dev** %3, align 8
  %6 = load %struct.ssp_dev*, %struct.ssp_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %6, i32 0, i32 0
  %8 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  store %struct.ssp_device* %8, %struct.ssp_device** %4, align 8
  %9 = load i32, i32* @TIMEOUT, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %5, align 4
  %11 = call i64 (...) @cpu_is_pxa3xx()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %30, %13
  %15 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %16 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SSSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  %21 = and i32 %20, 3840
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %80

30:                                               ; preds = %23
  %31 = call i32 (...) @cpu_relax()
  br label %14

32:                                               ; preds = %14
  %33 = load i32, i32* @TIMEOUT, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %1
  br label %36

36:                                               ; preds = %69, %35
  br label %37

37:                                               ; preds = %54, %36
  %38 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %39 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SSSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  %44 = load i32, i32* @SSSR_RNE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %80

54:                                               ; preds = %47
  %55 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %56 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SSDR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @__raw_readl(i64 %59)
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %80

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %71 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SSSR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @__raw_readl(i64 %74)
  %76 = load i32, i32* @SSSR_BSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %36, label %79

79:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %65, %51, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @cpu_is_pxa3xx(...) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
