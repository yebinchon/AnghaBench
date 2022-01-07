; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t35.c_m48t35_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t35.c_m48t35_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i8, i8, i8, i8 }
%struct.m48t35_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M48T35_RTC_SET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m48t35_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t35_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.m48t35_priv*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.m48t35_priv* @dev_get_drvdata(%struct.device* %14)
  store %struct.m48t35_priv* %15, %struct.m48t35_priv** %6, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1900
  store i32 %19, i32* %12, align 4
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 4
  store i8 %27, i8* %8, align 1
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %9, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  %33 = load i8, i8* %32, align 2
  store i8 %33, i8* %10, align 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %11, align 1
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %37, 1970
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %151

42:                                               ; preds = %2
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %43, 1970
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ugt i32 %45, 255
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %151

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %51, 169
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %151

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = icmp uge i32 %57, 100
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %60, 100
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = call i8* @bin2bcd(i32 %64)
  %66 = ptrtoint i8* %65 to i8
  store i8 %66, i8* %11, align 1
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = call i8* @bin2bcd(i32 %68)
  %70 = ptrtoint i8* %69 to i8
  store i8 %70, i8* %10, align 1
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = call i8* @bin2bcd(i32 %72)
  %74 = ptrtoint i8* %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = call i8* @bin2bcd(i32 %76)
  %78 = ptrtoint i8* %77 to i8
  store i8 %78, i8* %8, align 1
  %79 = load i8, i8* %7, align 1
  %80 = zext i8 %79 to i32
  %81 = call i8* @bin2bcd(i32 %80)
  %82 = ptrtoint i8* %81 to i8
  store i8 %82, i8* %7, align 1
  %83 = load i32, i32* %12, align 4
  %84 = call i8* @bin2bcd(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %87 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_irq(i32* %87)
  %89 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %90 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call zeroext i8 @readb(i32* %92)
  store i8 %93, i8* %13, align 1
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @M48T35_RTC_SET, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %95, %97
  %99 = trunc i32 %98 to i8
  %100 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %101 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @writeb(i8 zeroext %99, i32* %103)
  %105 = load i32, i32* %12, align 4
  %106 = trunc i32 %105 to i8
  %107 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %108 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 6
  %111 = call i32 @writeb(i8 zeroext %106, i32* %110)
  %112 = load i8, i8* %7, align 1
  %113 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %114 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 5
  %117 = call i32 @writeb(i8 zeroext %112, i32* %116)
  %118 = load i8, i8* %8, align 1
  %119 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %120 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = call i32 @writeb(i8 zeroext %118, i32* %122)
  %124 = load i8, i8* %9, align 1
  %125 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %126 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = call i32 @writeb(i8 zeroext %124, i32* %128)
  %130 = load i8, i8* %10, align 1
  %131 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %132 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = call i32 @writeb(i8 zeroext %130, i32* %134)
  %136 = load i8, i8* %11, align 1
  %137 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %138 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = call i32 @writeb(i8 zeroext %136, i32* %140)
  %142 = load i8, i8* %13, align 1
  %143 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %144 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = call i32 @writeb(i8 zeroext %142, i32* %146)
  %148 = load %struct.m48t35_priv*, %struct.m48t35_priv** %6, align 8
  %149 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock_irq(i32* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %62, %53, %47, %39
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.m48t35_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
