; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_zcrypt_pcica_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcica.c_zcrypt_pcica_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { %struct.zcrypt_device*, i32* }
%struct.zcrypt_device = type { i32, i8*, i32, i8*, i32, i8*, i32, i32, i32*, %struct.ap_device* }

@PCICA_MAX_RESPONSE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zcrypt_pcica_ops = common dso_local global i32 0, align 4
@ZCRYPT_PCICA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PCICA\00", align 1
@PCICA_MIN_MOD_SIZE = common dso_local global i32 0, align 4
@PCICA_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@PCICA_SPEED_RATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_pcica_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_pcica_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %6 = load i32, i32* @PCICA_MAX_RESPONSE_SIZE, align 4
  %7 = call %struct.zcrypt_device* @zcrypt_device_alloc(i32 %6)
  store %struct.zcrypt_device* %7, %struct.zcrypt_device** %4, align 8
  %8 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %9 = icmp ne %struct.zcrypt_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %15 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %16 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %15, i32 0, i32 9
  store %struct.ap_device* %14, %struct.ap_device** %16, align 8
  %17 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %18 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %17, i32 0, i32 8
  store i32* @zcrypt_pcica_ops, i32** %18, align 8
  %19 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %20 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @ZCRYPT_PCICA, align 4
  %22 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %23 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %25 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @PCICA_MIN_MOD_SIZE, align 4
  %27 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %28 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @PCICA_MAX_MOD_SIZE, align 8
  %30 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %31 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @PCICA_SPEED_RATING, align 4
  %33 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %34 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @PCICA_MAX_MOD_SIZE, align 8
  %36 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %37 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %39 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %38, i32 0, i32 2
  %40 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %41 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %43 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %44 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %43, i32 0, i32 0
  store %struct.zcrypt_device* %42, %struct.zcrypt_device** %44, align 8
  %45 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %46 = call i32 @zcrypt_device_register(%struct.zcrypt_device* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %13
  br label %51

50:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %57

51:                                               ; preds = %49
  %52 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %53 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %52, i32 0, i32 0
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %53, align 8
  %54 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %55 = call i32 @zcrypt_device_free(%struct.zcrypt_device* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %50, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.zcrypt_device* @zcrypt_device_alloc(i32) #1

declare dso_local i32 @zcrypt_device_register(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_device_free(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
