; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t35.c_m48t35_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t35.c_m48t35_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.m48t35_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@M48T35_RTC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t35_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t35_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.m48t35_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.m48t35_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.m48t35_priv* %8, %struct.m48t35_priv** %5, align 8
  %9 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %10 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %13 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i8* @readb(i32* %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @M48T35_RTC_READ, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %22 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @writeb(i32 %20, i32* %24)
  %26 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %27 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  %30 = call i8* @readb(i32* %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %35 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = call i8* @readb(i32* %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %43 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = call i8* @readb(i32* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %51 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = call i8* @readb(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %59 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i8* @readb(i32* %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %67 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = call i8* @readb(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %76 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @writeb(i32 %74, i32* %78)
  %80 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %81 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @bcd2bin(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @bcd2bin(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @bcd2bin(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @bcd2bin(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %117 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @bcd2bin(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %124 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 70
  store i32 %128, i32* %126, align 4
  %129 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %131, 69
  br i1 %132, label %133, label %138

133:                                              ; preds = %2
  %134 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 100
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %2
  %139 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %140 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %144 = call i32 @rtc_valid_tm(%struct.rtc_time* %143)
  ret i32 %144
}

declare dso_local %struct.m48t35_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
