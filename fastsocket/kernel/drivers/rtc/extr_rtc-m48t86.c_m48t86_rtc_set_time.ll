; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t86_ops* }
%struct.m48t86_ops = type { i8 (i32)*, i32 (i8, i32)* }

@M48T86_REG_B = common dso_local global i32 0, align 4
@M48T86_REG_B_SET = common dso_local global i8 0, align 1
@M48T86_REG_B_H24 = common dso_local global i8 0, align 1
@M48T86_REG_B_DM = common dso_local global i8 0, align 1
@M48T86_REG_SEC = common dso_local global i32 0, align 4
@M48T86_REG_MIN = common dso_local global i32 0, align 4
@M48T86_REG_HOUR = common dso_local global i32 0, align 4
@M48T86_REG_DOM = common dso_local global i32 0, align 4
@M48T86_REG_MONTH = common dso_local global i32 0, align 4
@M48T86_REG_YEAR = common dso_local global i32 0, align 4
@M48T86_REG_DOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t86_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %19 = load i8, i8* @M48T86_REG_B_SET, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @M48T86_REG_B_H24, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %5, align 1
  %28 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %29 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %28, i32 0, i32 1
  %30 = load i32 (i8, i32)*, i32 (i8, i32)** %29, align 8
  %31 = load i8, i8* %5, align 1
  %32 = load i32, i32* @M48T86_REG_B, align 4
  %33 = call i32 %30(i8 zeroext %31, i32 %32)
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @M48T86_REG_B_DM, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %2
  %41 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %42 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %41, i32 0, i32 1
  %43 = load i32 (i8, i32)*, i32 (i8, i32)** %42, align 8
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* @M48T86_REG_SEC, align 4
  %49 = call i32 %43(i8 zeroext %47, i32 %48)
  %50 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %51 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %50, i32 0, i32 1
  %52 = load i32 (i8, i32)*, i32 (i8, i32)** %51, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* @M48T86_REG_MIN, align 4
  %58 = call i32 %52(i8 zeroext %56, i32 %57)
  %59 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %60 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %59, i32 0, i32 1
  %61 = load i32 (i8, i32)*, i32 (i8, i32)** %60, align 8
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* @M48T86_REG_HOUR, align 4
  %67 = call i32 %61(i8 zeroext %65, i32 %66)
  %68 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %69 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %68, i32 0, i32 1
  %70 = load i32 (i8, i32)*, i32 (i8, i32)** %69, align 8
  %71 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* @M48T86_REG_DOM, align 4
  %76 = call i32 %70(i8 zeroext %74, i32 %75)
  %77 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %78 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %77, i32 0, i32 1
  %79 = load i32 (i8, i32)*, i32 (i8, i32)** %78, align 8
  %80 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = load i32, i32* @M48T86_REG_MONTH, align 4
  %86 = call i32 %79(i8 zeroext %84, i32 %85)
  %87 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %88 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %87, i32 0, i32 1
  %89 = load i32 (i8, i32)*, i32 (i8, i32)** %88, align 8
  %90 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 100
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* @M48T86_REG_YEAR, align 4
  %96 = call i32 %89(i8 zeroext %94, i32 %95)
  %97 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %98 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %97, i32 0, i32 1
  %99 = load i32 (i8, i32)*, i32 (i8, i32)** %98, align 8
  %100 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i32, i32* @M48T86_REG_DOW, align 4
  %105 = call i32 %99(i8 zeroext %103, i32 %104)
  br label %179

106:                                              ; preds = %2
  %107 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %108 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %107, i32 0, i32 1
  %109 = load i32 (i8, i32)*, i32 (i8, i32)** %108, align 8
  %110 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bin2bcd(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* @M48T86_REG_SEC, align 4
  %116 = call i32 %109(i8 zeroext %114, i32 %115)
  %117 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %118 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %117, i32 0, i32 1
  %119 = load i32 (i8, i32)*, i32 (i8, i32)** %118, align 8
  %120 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bin2bcd(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = load i32, i32* @M48T86_REG_MIN, align 4
  %126 = call i32 %119(i8 zeroext %124, i32 %125)
  %127 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %128 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %127, i32 0, i32 1
  %129 = load i32 (i8, i32)*, i32 (i8, i32)** %128, align 8
  %130 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @bin2bcd(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = load i32, i32* @M48T86_REG_HOUR, align 4
  %136 = call i32 %129(i8 zeroext %134, i32 %135)
  %137 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %138 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %137, i32 0, i32 1
  %139 = load i32 (i8, i32)*, i32 (i8, i32)** %138, align 8
  %140 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bin2bcd(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = load i32, i32* @M48T86_REG_DOM, align 4
  %146 = call i32 %139(i8 zeroext %144, i32 %145)
  %147 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %148 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %147, i32 0, i32 1
  %149 = load i32 (i8, i32)*, i32 (i8, i32)** %148, align 8
  %150 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %151 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @bin2bcd(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = load i32, i32* @M48T86_REG_MONTH, align 4
  %157 = call i32 %149(i8 zeroext %155, i32 %156)
  %158 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %159 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %158, i32 0, i32 1
  %160 = load i32 (i8, i32)*, i32 (i8, i32)** %159, align 8
  %161 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %162 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = srem i32 %163, 100
  %165 = call i32 @bin2bcd(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = load i32, i32* @M48T86_REG_YEAR, align 4
  %168 = call i32 %160(i8 zeroext %166, i32 %167)
  %169 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %170 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %169, i32 0, i32 1
  %171 = load i32 (i8, i32)*, i32 (i8, i32)** %170, align 8
  %172 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %173 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @bin2bcd(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = load i32, i32* @M48T86_REG_DOW, align 4
  %178 = call i32 %171(i8 zeroext %176, i32 %177)
  br label %179

179:                                              ; preds = %106, %40
  %180 = load i8, i8* @M48T86_REG_B_SET, align 1
  %181 = zext i8 %180 to i32
  %182 = xor i32 %181, -1
  %183 = load i8, i8* %5, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, %182
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %5, align 1
  %187 = load %struct.m48t86_ops*, %struct.m48t86_ops** %7, align 8
  %188 = getelementptr inbounds %struct.m48t86_ops, %struct.m48t86_ops* %187, i32 0, i32 1
  %189 = load i32 (i8, i32)*, i32 (i8, i32)** %188, align 8
  %190 = load i8, i8* %5, align 1
  %191 = load i32, i32* @M48T86_REG_B, align 4
  %192 = call i32 %189(i8 zeroext %190, i32 %191)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
