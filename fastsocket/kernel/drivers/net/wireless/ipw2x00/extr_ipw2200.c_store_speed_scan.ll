; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_store_speed_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_store_speed_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { i32*, i32, i64, i32 }

@MAX_SPEED_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Skipping invalid channel request: %d\0A\00", align 1
@CFG_SPEED_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_speed_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_speed_scan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipw_priv* %14, %struct.ipw_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %73, %4
  %17 = load i8*, i8** %12, align 8
  %18 = call i32 @simple_strtol(i8* %17, i32* null, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MAX_SPEED_SCAN, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %74

32:                                               ; preds = %20
  %33 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @libipw_is_valid_channel(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 32)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %74

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i8*, i8** %12, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 9
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ true, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  br label %58

73:                                               ; preds = %68
  br label %16

74:                                               ; preds = %56, %25, %16
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @CFG_SPEED_SCAN, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %92

84:                                               ; preds = %74
  %85 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %86 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @CFG_SPEED_SCAN, align 4
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %89 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %84, %77
  %93 = load i64, i64* %8, align 8
  ret i64 %93
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i64 @libipw_is_valid_channel(i32, i32) #1

declare dso_local i32 @IPW_WARNING(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
