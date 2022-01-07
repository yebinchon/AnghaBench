; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcixcc.c_zcrypt_pcixcc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcixcc.c_zcrypt_pcixcc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, %struct.zcrypt_device*, i32* }
%struct.zcrypt_device = type { i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, %struct.ap_device* }

@PCIXCC_MAX_XCRB_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZCRYPT_PCIXCC_MCL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCIXCC_MCL2\00", align 1
@PCIXCC_MCL2_SPEED_RATING = common dso_local global i32 0, align 4
@PCIXCC_MIN_MOD_SIZE_OLD = common dso_local global i8* null, align 8
@PCIXCC_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PCIXCC_MCL3\00", align 1
@PCIXCC_MCL3_SPEED_RATING = common dso_local global i32 0, align 4
@PCIXCC_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@ZCRYPT_CEX2C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CEX2C\00", align 1
@CEX2C_SPEED_RATING = common dso_local global i32 0, align 4
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"CEX3C\00", align 1
@CEX3C_SPEED_RATING = common dso_local global i32 0, align 4
@CEX3C_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@CEX3C_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@MSGTYPE06_NAME = common dso_local global i32 0, align 4
@MSGTYPE06_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@MSGTYPE06_VARIANT_NORNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_pcixcc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_pcixcc_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @PCIXCC_MAX_XCRB_MESSAGE_SIZE, align 4
  %7 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %6)
  store %struct.zcrypt_device* %7, %struct.zcrypt_device** %4, align 8
  %8 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %9 = icmp ne %struct.zcrypt_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %154

13:                                               ; preds = %1
  %14 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %15 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %16 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %15, i32 0, i32 9
  store %struct.ap_device* %14, %struct.ap_device** %16, align 8
  %17 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %18 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %20 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %105 [
    i32 128, label %22
    i32 130, label %69
    i32 129, label %87
  ]

22:                                               ; preds = %13
  %23 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %24 = call i32 @zcrypt_pcixcc_mcl(%struct.ap_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %29 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %154

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %34 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ZCRYPT_PCIXCC_MCL2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %40 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %39, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load i32, i32* @PCIXCC_MCL2_SPEED_RATING, align 4
  %42 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %43 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @PCIXCC_MIN_MOD_SIZE_OLD, align 8
  %45 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %46 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %48 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %49 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %51 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %52 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  br label %68

53:                                               ; preds = %31
  %54 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %55 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %54, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @PCIXCC_MCL3_SPEED_RATING, align 4
  %57 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %58 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @PCIXCC_MIN_MOD_SIZE, align 8
  %60 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %61 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %63 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %64 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %66 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %67 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %53, %38
  br label %106

69:                                               ; preds = %13
  %70 = load i32, i32* @ZCRYPT_CEX2C, align 4
  %71 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %72 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %74 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %73, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @CEX2C_SPEED_RATING, align 4
  %76 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %77 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @PCIXCC_MIN_MOD_SIZE, align 8
  %79 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %80 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %82 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %83 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @PCIXCC_MAX_MOD_SIZE, align 8
  %85 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %86 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  br label %106

87:                                               ; preds = %13
  %88 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %89 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %90 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %92 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %91, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @CEX3C_SPEED_RATING, align 4
  %94 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %95 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** @CEX3C_MIN_MOD_SIZE, align 8
  %97 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %98 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @CEX3C_MAX_MOD_SIZE, align 8
  %100 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %101 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @CEX3C_MAX_MOD_SIZE, align 8
  %103 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %104 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  br label %106

105:                                              ; preds = %13
  br label %144

106:                                              ; preds = %87, %69, %68
  %107 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %108 = call i32 @zcrypt_pcixcc_rng_supported(%struct.ap_device* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %113 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %154

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @MSGTYPE06_NAME, align 4
  %120 = load i32, i32* @MSGTYPE06_VARIANT_DEFAULT, align 4
  %121 = call i8* @zcrypt_msgtype_request(i32 %119, i32 %120)
  %122 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %123 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %130

124:                                              ; preds = %115
  %125 = load i32, i32* @MSGTYPE06_NAME, align 4
  %126 = load i32, i32* @MSGTYPE06_VARIANT_NORNG, align 4
  %127 = call i8* @zcrypt_msgtype_request(i32 %125, i32 %126)
  %128 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %129 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %124, %118
  %131 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %132 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %131, i32 0, i32 4
  %133 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %134 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %133, i32 0, i32 2
  store i32* %132, i32** %134, align 8
  %135 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %136 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %137 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %136, i32 0, i32 1
  store %struct.zcrypt_device* %135, %struct.zcrypt_device** %137, align 8
  %138 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %139 = call i32 @zcrypt_device_register(%struct.zcrypt_device* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %144

143:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %154

144:                                              ; preds = %142, %105
  %145 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %146 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %145, i32 0, i32 1
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %146, align 8
  %147 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %148 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @zcrypt_msgtype_release(i8* %149)
  %151 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %152 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %151)
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %144, %143, %111, %27, %10
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.zcrypt_device* @zcrypt_device_alloc(i32) #1

declare dso_local i32 @zcrypt_pcixcc_mcl(%struct.ap_device*) #1

declare dso_local i32 @zcrypt_device_free(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_pcixcc_rng_supported(%struct.ap_device*) #1

declare dso_local i8* @zcrypt_msgtype_request(i32, i32) #1

declare dso_local i32 @zcrypt_device_register(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_msgtype_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
