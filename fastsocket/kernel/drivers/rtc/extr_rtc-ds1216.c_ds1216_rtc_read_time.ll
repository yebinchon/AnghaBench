; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1216.c_ds1216_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1216.c_ds1216_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.platform_device = type { i32 }
%struct.ds1216_priv = type { i32 }
%struct.ds1216_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@DS1216_HOUR_1224 = common dso_local global i32 0, align 4
@DS1216_HOUR_AMPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1216_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1216_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ds1216_priv*, align 8
  %7 = alloca %struct.ds1216_regs, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call %struct.ds1216_priv* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.ds1216_priv* %11, %struct.ds1216_priv** %6, align 8
  %12 = load %struct.ds1216_priv*, %struct.ds1216_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ds1216_priv, %struct.ds1216_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ds1216_switch_ds_to_clock(i32 %14)
  %16 = load %struct.ds1216_priv*, %struct.ds1216_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ds1216_priv, %struct.ds1216_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %struct.ds1216_regs* %7 to i32*
  %20 = call i32 @ds1216_read(i32 %18, i32* %19)
  %21 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @bcd2bin(i32 %22)
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @bcd2bin(i32 %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DS1216_HOUR_1224, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = call i8* @bcd2bin(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DS1216_HOUR_AMPM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 12
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %36
  br label %63

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 63
  %59 = call i8* @bcd2bin(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55, %54
  %64 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 7
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 63
  %73 = call i8* @bcd2bin(i32 %72)
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 31
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %7, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @bcd2bin(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 70
  br i1 %91, label %92, label %97

92:                                               ; preds = %63
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 100
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %63
  %98 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %99 = call i32 @rtc_valid_tm(%struct.rtc_time* %98)
  ret i32 %99
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.ds1216_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ds1216_switch_ds_to_clock(i32) #1

declare dso_local i32 @ds1216_read(i32, i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
