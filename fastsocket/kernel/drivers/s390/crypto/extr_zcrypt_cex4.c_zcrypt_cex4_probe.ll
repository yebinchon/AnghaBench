; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, %struct.zcrypt_device*, i32*, i32 }
%struct.zcrypt_device = type { i8*, i32, i32, i8*, i32, %struct.ap_device*, i32, i8*, i8*, i32, i32 }

@AP_FUNC_ACCEL = common dso_local global i32 0, align 4
@CEX4A_MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CEX4A\00", align 1
@ZCRYPT_CEX3A = common dso_local global i32 0, align 4
@CEX4A_MIN_MOD_SIZE = common dso_local global i32 0, align 4
@AP_FUNC_MEX4K = common dso_local global i32 0, align 4
@AP_FUNC_CRT4K = common dso_local global i32 0, align 4
@CEX4A_MAX_MOD_SIZE_4K = common dso_local global i8* null, align 8
@CEX4A_MAX_MOD_SIZE_2K = common dso_local global i8* null, align 8
@CEX4A_SPEED_RATING = common dso_local global i32 0, align 4
@MSGTYPE50_NAME = common dso_local global i32 0, align 4
@MSGTYPE50_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@AP_FUNC_COPRO = common dso_local global i32 0, align 4
@CEX4C_MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"CEX4C\00", align 1
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@CEX4C_MIN_MOD_SIZE = common dso_local global i32 0, align 4
@CEX4C_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@CEX4C_SPEED_RATING = common dso_local global i32 0, align 4
@MSGTYPE06_NAME = common dso_local global i32 0, align 4
@MSGTYPE06_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex4_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %7 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %109 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %11 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %10, i32 0, i32 3
  %12 = load i32, i32* @AP_FUNC_ACCEL, align 4
  %13 = call i32 @ap_test_bit(i32* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = load i32, i32* @CEX4A_MAX_MESSAGE_SIZE, align 4
  %17 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %16)
  store %struct.zcrypt_device* %17, %struct.zcrypt_device** %4, align 8
  %18 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %19 = icmp ne %struct.zcrypt_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %143

23:                                               ; preds = %15
  %24 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %25 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @ZCRYPT_CEX3A, align 4
  %27 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %28 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CEX4A_MIN_MOD_SIZE, align 4
  %30 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %31 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %33 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %32, i32 0, i32 3
  %34 = load i32, i32* @AP_FUNC_MEX4K, align 4
  %35 = call i32 @ap_test_bit(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %39 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %38, i32 0, i32 3
  %40 = load i32, i32* @AP_FUNC_CRT4K, align 4
  %41 = call i32 @ap_test_bit(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_4K, align 8
  %45 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %46 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_4K, align 8
  %48 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %49 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  br label %57

50:                                               ; preds = %37, %23
  %51 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_2K, align 8
  %52 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %53 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_2K, align 8
  %55 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %56 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %59 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @CEX4A_SPEED_RATING, align 4
  %61 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %62 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @MSGTYPE50_NAME, align 4
  %64 = load i32, i32* @MSGTYPE50_VARIANT_DEFAULT, align 4
  %65 = call i8* @zcrypt_msgtype_request(i32 %63, i32 %64)
  %66 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %67 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %108

68:                                               ; preds = %9
  %69 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %70 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %69, i32 0, i32 3
  %71 = load i32, i32* @AP_FUNC_COPRO, align 4
  %72 = call i32 @ap_test_bit(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %68
  %75 = load i32, i32* @CEX4C_MAX_MESSAGE_SIZE, align 4
  %76 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %75)
  store %struct.zcrypt_device* %76, %struct.zcrypt_device** %4, align 8
  %77 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %78 = icmp ne %struct.zcrypt_device* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %143

82:                                               ; preds = %74
  %83 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %84 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %84, align 8
  %85 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %86 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %87 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CEX4C_MIN_MOD_SIZE, align 4
  %89 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %90 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %92 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %93 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %95 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %96 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %98 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* @CEX4C_SPEED_RATING, align 4
  %100 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %101 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @MSGTYPE06_NAME, align 4
  %103 = load i32, i32* @MSGTYPE06_VARIANT_DEFAULT, align 4
  %104 = call i8* @zcrypt_msgtype_request(i32 %102, i32 %103)
  %105 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %106 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %82, %68
  br label %108

108:                                              ; preds = %107, %57
  br label %109

109:                                              ; preds = %1, %108
  %110 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %111 = icmp ne %struct.zcrypt_device* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %143

115:                                              ; preds = %109
  %116 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %117 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %118 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %117, i32 0, i32 5
  store %struct.ap_device* %116, %struct.ap_device** %118, align 8
  %119 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %120 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %119, i32 0, i32 2
  store i32 1, i32* %120, align 4
  %121 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %122 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %121, i32 0, i32 4
  %123 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %124 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %126 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %127 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %126, i32 0, i32 1
  store %struct.zcrypt_device* %125, %struct.zcrypt_device** %127, align 8
  %128 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %129 = call i32 @zcrypt_device_register(%struct.zcrypt_device* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %115
  %133 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %134 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @zcrypt_msgtype_release(i8* %135)
  %137 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %138 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %137, i32 0, i32 1
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %138, align 8
  %139 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %140 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %139)
  br label %141

141:                                              ; preds = %132, %115
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %112, %79, %20
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @ap_test_bit(i32*, i32) #1

declare dso_local %struct.zcrypt_device* @zcrypt_device_alloc(i32) #1

declare dso_local i8* @zcrypt_msgtype_request(i32, i32) #1

declare dso_local i32 @zcrypt_device_register(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_msgtype_release(i8*) #1

declare dso_local i32 @zcrypt_device_free(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
