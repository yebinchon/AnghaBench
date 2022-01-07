; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_get_default_vgc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_get_default_vgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3090 = common dso_local global i32 0, align 4
@RT3290 = common dso_local global i32 0, align 4
@RT3390 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_get_default_vgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_get_default_vgc(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %66

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = load i32, i32* @RT3070, align 4
  %12 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %9
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32, i32* @RT3071, align 4
  %17 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %54, label %19

19:                                               ; preds = %14
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = load i32, i32* @RT3090, align 4
  %22 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* @RT3290, align 4
  %27 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = load i32, i32* @RT3390, align 4
  %32 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %36 = load i32, i32* @RT3572, align 4
  %37 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* @RT5390, align 4
  %42 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i32, i32* @RT5392, align 4
  %47 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* @RT5592, align 4
  %52 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %44, %39, %34, %29, %24, %19, %14, %9
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 2, %57
  %59 = add nsw i32 28, %58
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 46, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %54
  br label %112

66:                                               ; preds = %1
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %68 = load i32, i32* @RT3572, align 4
  %69 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 5
  %76 = sdiv i32 %75, 3
  %77 = add nsw i32 34, %76
  store i32 %77, i32* %3, align 4
  br label %111

78:                                               ; preds = %66
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = load i32, i32* @RT5592, align 4
  %81 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %85 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 36, %87
  store i32 %88, i32* %3, align 4
  br label %110

89:                                               ; preds = %78
  %90 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %92 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %91, i32 0, i32 2
  %93 = call i32 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 5
  %100 = sdiv i32 %99, 3
  %101 = add nsw i32 50, %100
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %89
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 5
  %107 = sdiv i32 %106, 3
  %108 = add nsw i32 58, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %95
  br label %110

110:                                              ; preds = %109, %83
  br label %111

111:                                              ; preds = %110, %71
  br label %112

112:                                              ; preds = %111, %65
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
