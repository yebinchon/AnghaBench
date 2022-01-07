; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_bap_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_bap_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SELECT0 = common dso_local global i64 0, align 8
@OFFSET0 = common dso_local global i64 0, align 8
@BAP_BUSY = common dso_local global i32 0, align 4
@BAP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"BAP error %x %d\00", align 1
@ERROR = common dso_local global i32 0, align 4
@BAP_DONE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"BAP setup error too many retries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32, i32)* @bap_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bap_setup(%struct.airo_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.airo_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %13 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %14 = load i64, i64* @SELECT0, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @OUT4500(%struct.airo_info* %13, i64 %17, i32 %18)
  %20 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %21 = load i64, i64* @OFFSET0, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @OUT4500(%struct.airo_info* %20, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %4, %42, %80
  %28 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %29 = load i64, i64* @OFFSET0, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @IN4500(%struct.airo_info* %28, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @BAP_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %27

43:                                               ; preds = %38
  br label %68

44:                                               ; preds = %27
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @BAP_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %51 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, ...) @airo_print_err(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @ERROR, align 4
  store i32 %58, i32* %5, align 4
  br label %95

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @BAP_DONE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SUCCESS, align 4
  store i32 %65, i32* %5, align 4
  br label %95

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @airo_print_err(i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ERROR, align 4
  store i32 %79, i32* %5, align 4
  br label %95

80:                                               ; preds = %68
  %81 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %82 = load i64, i64* @SELECT0, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @OUT4500(%struct.airo_info* %81, i64 %85, i32 %86)
  %88 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %89 = load i64, i64* @OFFSET0, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @OUT4500(%struct.airo_info* %88, i64 %92, i32 %93)
  store i32 50, i32* %10, align 4
  br label %27

95:                                               ; preds = %72, %64, %49
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @OUT4500(%struct.airo_info*, i64, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i64) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
