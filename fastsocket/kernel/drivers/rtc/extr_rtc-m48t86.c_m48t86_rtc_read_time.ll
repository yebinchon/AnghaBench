; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t86_ops* }
%struct.m48t86_ops = type { i8 (i32)* }

@M48T86_REG_B = common dso_local global i32 0, align 4
@M48T86_REG_B_DM = common dso_local global i8 0, align 1
@M48T86_REG_SEC = common dso_local global i32 0, align 4
@M48T86_REG_MIN = common dso_local global i32 0, align 4
@M48T86_REG_HOUR = common dso_local global i32 0, align 4
@M48T86_REG_DOM = common dso_local global i32 0, align 4
@M48T86_REG_MONTH = common dso_local global i32 0, align 4
@M48T86_REG_YEAR = common dso_local global i32 0, align 4
@M48T86_REG_DOW = common dso_local global i32 0, align 4
@M48T86_REG_B_H24 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t86_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.m48t86_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.m48t86_ops*, %struct.m48t86_ops** %12, align 8
  store %struct.m48t86_ops* %13, %struct.m48t86_ops** %7, align 8
  %14 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %15 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %14, i32 0, i32 0
  %16 = load i8 (i32)*, i8 (i32)** %15, align 8
  %17 = load i32, i32* @M48T86_REG_B, align 4
  %18 = call zeroext i8 %16(i32 %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @M48T86_REG_B_DM, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %2
  %26 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %27 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %26, i32 0, i32 0
  %28 = load i8 (i32)*, i8 (i32)** %27, align 8
  %29 = load i32, i32* @M48T86_REG_SEC, align 4
  %30 = call zeroext i8 %28(i32 %29)
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 4
  %33 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %34 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %33, i32 0, i32 0
  %35 = load i8 (i32)*, i8 (i32)** %34, align 8
  %36 = load i32, i32* @M48T86_REG_MIN, align 4
  %37 = call zeroext i8 %35(i32 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 1
  store i8 %37, i8* %39, align 1
  %40 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %41 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %40, i32 0, i32 0
  %42 = load i8 (i32)*, i8 (i32)** %41, align 8
  %43 = load i32, i32* @M48T86_REG_HOUR, align 4
  %44 = call zeroext i8 %42(i32 %43)
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 63
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %50 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %49, i32 0, i32 0
  %51 = load i8 (i32)*, i8 (i32)** %50, align 8
  %52 = load i32, i32* @M48T86_REG_DOM, align 4
  %53 = call zeroext i8 %51(i32 %52)
  %54 = zext i8 %53 to i32
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %58 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %57, i32 0, i32 0
  %59 = load i8 (i32)*, i8 (i32)** %58, align 8
  %60 = load i32, i32* @M48T86_REG_MONTH, align 4
  %61 = call zeroext i8 %59(i32 %60)
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %67 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %66, i32 0, i32 0
  %68 = load i8 (i32)*, i8 (i32)** %67, align 8
  %69 = load i32, i32* @M48T86_REG_YEAR, align 4
  %70 = call zeroext i8 %68(i32 %69)
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, 100
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %76 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %75, i32 0, i32 0
  %77 = load i8 (i32)*, i8 (i32)** %76, align 8
  %78 = load i32, i32* @M48T86_REG_DOW, align 4
  %79 = call zeroext i8 %77(i32 %78)
  %80 = zext i8 %79 to i32
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  br label %152

83:                                               ; preds = %2
  %84 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %85 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %84, i32 0, i32 0
  %86 = load i8 (i32)*, i8 (i32)** %85, align 8
  %87 = load i32, i32* @M48T86_REG_SEC, align 4
  %88 = call zeroext i8 %86(i32 %87)
  %89 = zext i8 %88 to i32
  %90 = call i32 @bcd2bin(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %93 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 0
  store i8 %91, i8* %93, align 4
  %94 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %95 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %94, i32 0, i32 0
  %96 = load i8 (i32)*, i8 (i32)** %95, align 8
  %97 = load i32, i32* @M48T86_REG_MIN, align 4
  %98 = call zeroext i8 %96(i32 %97)
  %99 = zext i8 %98 to i32
  %100 = call i32 @bcd2bin(i32 %99)
  %101 = trunc i32 %100 to i8
  %102 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 1
  store i8 %101, i8* %103, align 1
  %104 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %105 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %104, i32 0, i32 0
  %106 = load i8 (i32)*, i8 (i32)** %105, align 8
  %107 = load i32, i32* @M48T86_REG_HOUR, align 4
  %108 = call zeroext i8 %106(i32 %107)
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 63
  %111 = call i32 @bcd2bin(i32 %110)
  %112 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %115 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %114, i32 0, i32 0
  %116 = load i8 (i32)*, i8 (i32)** %115, align 8
  %117 = load i32, i32* @M48T86_REG_DOM, align 4
  %118 = call zeroext i8 %116(i32 %117)
  %119 = zext i8 %118 to i32
  %120 = call i32 @bcd2bin(i32 %119)
  %121 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %124 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %123, i32 0, i32 0
  %125 = load i8 (i32)*, i8 (i32)** %124, align 8
  %126 = load i32, i32* @M48T86_REG_MONTH, align 4
  %127 = call zeroext i8 %125(i32 %126)
  %128 = zext i8 %127 to i32
  %129 = call i32 @bcd2bin(i32 %128)
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %132 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %134 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %133, i32 0, i32 0
  %135 = load i8 (i32)*, i8 (i32)** %134, align 8
  %136 = load i32, i32* @M48T86_REG_YEAR, align 4
  %137 = call zeroext i8 %135(i32 %136)
  %138 = zext i8 %137 to i32
  %139 = call i32 @bcd2bin(i32 %138)
  %140 = add nsw i32 %139, 100
  %141 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %144 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %143, i32 0, i32 0
  %145 = load i8 (i32)*, i8 (i32)** %144, align 8
  %146 = load i32, i32* @M48T86_REG_DOW, align 4
  %147 = call zeroext i8 %145(i32 %146)
  %148 = zext i8 %147 to i32
  %149 = call i32 @bcd2bin(i32 %148)
  %150 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %83, %25
  %153 = load i8, i8* %5, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @M48T86_REG_B_H24, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %174, label %159

159:                                              ; preds = %152
  %160 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %161 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %160, i32 0, i32 0
  %162 = load i8 (i32)*, i8 (i32)** %161, align 8
  %163 = load i32, i32* @M48T86_REG_HOUR, align 4
  %164 = call zeroext i8 %162(i32 %163)
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 128
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %159
  %169 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %170 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 12
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %168, %159
  br label %174

174:                                              ; preds = %173, %152
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
