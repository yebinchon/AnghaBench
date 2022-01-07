; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_rng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32 }
%struct.ap_message = type { %struct.type86x_reply* }
%struct.type86x_reply = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*, i8*)* @convert_response_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_response_rng(%struct.zcrypt_device* %0, %struct.ap_message* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_device*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.type86x_reply*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 0
  %11 = load %struct.type86x_reply*, %struct.type86x_reply** %10, align 8
  store %struct.type86x_reply* %11, %struct.type86x_reply** %8, align 8
  %12 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %13 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %40 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %19
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %21 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %30 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %36 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @convert_type86_rng(%struct.zcrypt_device* %35, %struct.ap_message* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %3, %39
  %41 = load %struct.zcrypt_device*, %struct.zcrypt_device** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %34, %25, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @convert_type86_rng(%struct.zcrypt_device*, %struct.ap_message*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
