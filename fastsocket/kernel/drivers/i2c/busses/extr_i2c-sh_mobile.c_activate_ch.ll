; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_activate_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_activate_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i32, i32, i32 }

@NORMAL_SPEED = common dso_local global i32 0, align 4
@ICCR_ICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_i2c_data*)* @activate_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_ch(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  %7 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_enable(i32 %13)
  %15 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = mul i64 %19, 5
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @NORMAL_SPEED, align 4
  %23 = mul nsw i32 %22, 9
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 10
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 10
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %50

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %31
  %51 = load i64, i64* %3, align 8
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 10
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = srem i32 %58, 10
  %60 = icmp sge i32 %59, 5
  br i1 %60, label %61, label %71

61:                                               ; preds = %50
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sdiv i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %70 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %80

71:                                               ; preds = %50
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %79 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %61
  %81 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %82 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %81)
  %83 = call i32 @ioread8(i32 %82)
  %84 = load i32, i32* @ICCR_ICE, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %87 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %86)
  %88 = call i32 @iowrite8(i32 %85, i32 %87)
  %89 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %90 = call i32 @ICIC(%struct.sh_mobile_i2c_data* %89)
  %91 = call i32 @iowrite8(i32 0, i32 %90)
  %92 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %93 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %96 = call i32 @ICCL(%struct.sh_mobile_i2c_data* %95)
  %97 = call i32 @iowrite8(i32 %94, i32 %96)
  %98 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %99 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %102 = call i32 @ICCH(%struct.sh_mobile_i2c_data* %101)
  %103 = call i32 @iowrite8(i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ICCR(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICIC(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICCL(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICCH(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
