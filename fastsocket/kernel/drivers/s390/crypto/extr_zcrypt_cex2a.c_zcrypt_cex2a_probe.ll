; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, %struct.zcrypt_device*, i32*, i32 }
%struct.zcrypt_device = type { i8*, i32, i32, i32, i32, %struct.ap_device*, i32, i8*, i8*, i8*, i32 }

@CEX2A_MAX_RESPONSE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZCRYPT_CEX2A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CEX2A\00", align 1
@CEX2A_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@CEX2A_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@CEX2A_SPEED_RATING = common dso_local global i32 0, align 4
@CEX3A_MAX_RESPONSE_SIZE = common dso_local global i32 0, align 4
@ZCRYPT_CEX3A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"CEX3A\00", align 1
@AP_FUNC_MEX4K = common dso_local global i32 0, align 4
@AP_FUNC_CRT4K = common dso_local global i32 0, align 4
@CEX3A_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@CEX3A_SPEED_RATING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MSGTYPE50_NAME = common dso_local global i32 0, align 4
@MSGTYPE50_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex2a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex2a_probe(%struct.ap_device* %0) #0 {
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
  switch i32 %8, label %84 [
    i32 129, label %9
    i32 128, label %37
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @CEX2A_MAX_RESPONSE_SIZE, align 4
  %11 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %10)
  store %struct.zcrypt_device* %11, %struct.zcrypt_device** %4, align 8
  %12 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %13 = icmp ne %struct.zcrypt_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %123

17:                                               ; preds = %9
  %18 = load i32, i32* @ZCRYPT_CEX2A, align 4
  %19 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %20 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %22 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i8*, i8** @CEX2A_MIN_MOD_SIZE, align 8
  %24 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %25 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %27 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %28 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %30 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @CEX2A_SPEED_RATING, align 4
  %32 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %33 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %35 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %36 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  br label %84

37:                                               ; preds = %1
  %38 = load i32, i32* @CEX3A_MAX_RESPONSE_SIZE, align 4
  %39 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %38)
  store %struct.zcrypt_device* %39, %struct.zcrypt_device** %4, align 8
  %40 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %41 = icmp ne %struct.zcrypt_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %123

45:                                               ; preds = %37
  %46 = load i32, i32* @ZCRYPT_CEX3A, align 4
  %47 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %48 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %50 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i8*, i8** @CEX2A_MIN_MOD_SIZE, align 8
  %52 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %53 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %55 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %56 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %58 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %59 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %61 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %60, i32 0, i32 3
  %62 = load i32, i32* @AP_FUNC_MEX4K, align 4
  %63 = call i32 @ap_test_bit(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %45
  %66 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %67 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %66, i32 0, i32 3
  %68 = load i32, i32* @AP_FUNC_CRT4K, align 4
  %69 = call i32 @ap_test_bit(i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8*, i8** @CEX3A_MAX_MOD_SIZE, align 8
  %73 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %74 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @CEX3A_MAX_MOD_SIZE, align 8
  %76 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %77 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %65, %45
  %79 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %80 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @CEX3A_SPEED_RATING, align 4
  %82 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %83 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %1, %78, %17
  %85 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %86 = icmp ne %struct.zcrypt_device* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %123

90:                                               ; preds = %84
  %91 = load i32, i32* @MSGTYPE50_NAME, align 4
  %92 = load i32, i32* @MSGTYPE50_VARIANT_DEFAULT, align 4
  %93 = call i32 @zcrypt_msgtype_request(i32 %91, i32 %92)
  %94 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %95 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %97 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %98 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %97, i32 0, i32 5
  store %struct.ap_device* %96, %struct.ap_device** %98, align 8
  %99 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %100 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %99, i32 0, i32 2
  store i32 1, i32* %100, align 4
  %101 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %102 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %101, i32 0, i32 4
  %103 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %104 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %106 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %107 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %106, i32 0, i32 1
  store %struct.zcrypt_device* %105, %struct.zcrypt_device** %107, align 8
  %108 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %109 = call i32 @zcrypt_device_register(%struct.zcrypt_device* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %90
  %113 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %114 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %113, i32 0, i32 1
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %114, align 8
  %115 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %116 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @zcrypt_msgtype_release(i32 %117)
  %119 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %120 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %119)
  br label %121

121:                                              ; preds = %112, %90
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %87, %42, %14
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.zcrypt_device* @zcrypt_device_alloc(i32) #1

declare dso_local i32 @ap_test_bit(i32*, i32) #1

declare dso_local i32 @zcrypt_msgtype_request(i32, i32) #1

declare dso_local i32 @zcrypt_device_register(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_msgtype_release(i32) #1

declare dso_local i32 @zcrypt_device_free(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
