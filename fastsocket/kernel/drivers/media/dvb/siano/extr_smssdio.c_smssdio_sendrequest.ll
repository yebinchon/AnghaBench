; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smssdio.c_smssdio_sendrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smssdio.c_smssdio_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smssdio_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SMSSDIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @smssdio_sendrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smssdio_sendrequest(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smssdio_device*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.smssdio_device*
  store %struct.smssdio_device* %10, %struct.smssdio_device** %8, align 8
  %11 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %12 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @sdio_claim_host(%struct.TYPE_4__* %13)
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %18 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %16, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %15
  %24 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %25 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* @SMSSDIO_DATA, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %30 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sdio_memcpy_toio(%struct.TYPE_4__* %26, i32 %27, i8* %28, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %65

38:                                               ; preds = %23
  %39 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %40 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr i8, i8* %44, i64 %43
  store i8* %45, i8** %5, align 8
  %46 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %47 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %15

53:                                               ; preds = %15
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %58 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* @SMSSDIO_DATA, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @sdio_memcpy_toio(%struct.TYPE_4__* %59, i32 %60, i8* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %53
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %67 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @sdio_release_host(%struct.TYPE_4__* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @sdio_claim_host(%struct.TYPE_4__*) #1

declare dso_local i32 @sdio_memcpy_toio(%struct.TYPE_4__*, i32, i8*, i64) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
