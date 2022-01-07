; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_xcrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_xcrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { %struct.type86x_reply* }
%struct.type86x_reply = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ica_xcRB = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_xcRB*)* @convert_response_xcrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_response_xcrb(%struct.zcrypt_device* %0, %struct.ap_message* %1, %struct.ica_xcRB* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_xcRB*, align 8
  %8 = alloca %struct.type86x_reply*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_xcRB* %2, %struct.ica_xcRB** %7, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 0
  %11 = load %struct.type86x_reply*, %struct.type86x_reply** %10, align 8
  store %struct.type86x_reply* %11, %struct.type86x_reply** %8, align 8
  %12 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %13 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %12, i32 0, i32 0
  %14 = load %struct.type86x_reply*, %struct.type86x_reply** %13, align 8
  %15 = bitcast %struct.type86x_reply* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %54 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %25
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %21 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %20, i32 0, i32 0
  store i32 525389, i32* %21, align 4
  %22 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %23 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %24 = call i32 @convert_error(%struct.zcrypt_device* %22, %struct.ap_message* %23)
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %27 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %33 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %32, i32 0, i32 0
  %34 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %35 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %33, i32 %37, i32 4)
  %39 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %40 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %41 = call i32 @convert_error(%struct.zcrypt_device* %39, %struct.ap_message* %40)
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %25
  %43 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %44 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %50 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %51 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %52 = call i32 @convert_type86_xcrb(%struct.zcrypt_device* %49, %struct.ap_message* %50, %struct.ica_xcRB* %51)
  store i32 %52, i32* %4, align 4
  br label %61

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %3, %53
  %55 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %56 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %55, i32 0, i32 0
  store i32 525389, i32* %56, align 4
  %57 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %58 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %48, %31, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @convert_error(%struct.zcrypt_device*, %struct.ap_message*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @convert_type86_xcrb(%struct.zcrypt_device*, %struct.ap_message*, %struct.ica_xcRB*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
