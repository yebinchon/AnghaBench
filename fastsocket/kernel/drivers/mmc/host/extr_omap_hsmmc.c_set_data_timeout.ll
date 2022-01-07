; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32 }

@SYSCTL = common dso_local global i32 0, align 4
@CLKD_MASK = common dso_local global i32 0, align 4
@CLKD_SHIFT = common dso_local global i32 0, align 4
@DTO_MASK = common dso_local global i32 0, align 4
@DTO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i32, i32)* @set_data_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_data_timeout(%struct.omap_hsmmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SYSCTL, align 4
  %16 = call i32 @OMAP_HSMMC_READ(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @CLKD_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CLKD_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_get_rate(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %29, %30
  %32 = sdiv i32 1000000000, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = udiv i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, -2147483648
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %42

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 31, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %58, %51
  %65 = load i32, i32* %11, align 4
  %66 = icmp sge i32 %65, 13
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 13
  store i32 %69, i32* %11, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 14
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 14, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* @DTO_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @DTO_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %87 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SYSCTL, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @OMAP_HSMMC_WRITE(i32 %88, i32 %89, i32 %90)
  ret void
}

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
