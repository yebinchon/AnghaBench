; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i32, i64 }

@TALITOS_IMR = common dso_local global i64 0, align 8
@TALITOS_IMR_INIT = common dso_local global i32 0, align 4
@TALITOS_IMR_LO = common dso_local global i64 0, align 8
@TALITOS_IMR_LO_INIT = common dso_local global i32 0, align 4
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@TALITOS_MDEUICR_LO = common dso_local global i64 0, align 8
@TALITOS_MDEUICR_LO_ICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.talitos_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %7)
  store %struct.talitos_private* %8, %struct.talitos_private** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @reset_device(%struct.device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @reset_device(%struct.device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %26 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @reset_channel(%struct.device* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %43 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TALITOS_IMR, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @TALITOS_IMR_INIT, align 4
  %48 = call i32 @setbits32(i64 %46, i32 %47)
  %49 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %50 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TALITOS_IMR_LO, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @TALITOS_IMR_LO_INIT, align 4
  %55 = call i32 @setbits32(i64 %53, i32 %54)
  %56 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %57 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %41
  %63 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %64 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TALITOS_MDEUICR_LO, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @TALITOS_MDEUICR_LO_ICE, align 4
  %69 = call i32 @setbits32(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %41
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %35, %20, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @reset_device(%struct.device*) #1

declare dso_local i32 @reset_channel(%struct.device*, i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
