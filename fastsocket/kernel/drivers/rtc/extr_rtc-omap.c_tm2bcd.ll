; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_tm2bcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_tm2bcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @tm2bcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2bcd(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %4 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %5 = call i64 @rtc_valid_tm(%struct.rtc_time* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @bin2bcd(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @bin2bcd(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @bin2bcd(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @bin2bcd(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8* @bin2bcd(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 100
  br i1 %50, label %56, label %51

51:                                               ; preds = %10
  %52 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 199
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %10
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %51
  %60 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 100
  %64 = call i8* @bin2bcd(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %56, %7
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i8* @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
