; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_error.h_convert_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_error.h_convert_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ap_message = type { %struct.error_hdr* }
%struct.error_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@zcrypt_rescan_req = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dev%04xo%drc%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_device*, %struct.ap_message*)* @convert_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_error(%struct.zcrypt_device* %0, %struct.ap_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zcrypt_device*, align 8
  %5 = alloca %struct.ap_message*, align 8
  %6 = alloca %struct.error_hdr*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %4, align 8
  store %struct.ap_message* %1, %struct.ap_message** %5, align 8
  %7 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %8 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %7, i32 0, i32 0
  %9 = load %struct.error_hdr*, %struct.error_hdr** %8, align 8
  store %struct.error_hdr* %9, %struct.error_hdr** %6, align 8
  %10 = load %struct.error_hdr*, %struct.error_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.error_hdr, %struct.error_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %57 [
    i32 131, label %13
    i32 130, label %13
    i32 134, label %13
    i32 128, label %13
    i32 132, label %16
    i32 129, label %37
    i32 133, label %37
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = call i32 @WARN_ON(i32 1)
  %18 = call i32 @atomic_set(i32* @zcrypt_rescan_req, i32 1)
  %19 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %20 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @DBF_ERR, align 4
  %22 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %23 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %24 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %29 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.error_hdr*, %struct.error_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.error_hdr, %struct.error_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ZCRYPT_DBF_DEV(i32 %21, %struct.zcrypt_device* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %2, %2
  %38 = call i32 @atomic_set(i32* @zcrypt_rescan_req, i32 1)
  %39 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %40 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* @DBF_ERR, align 4
  %42 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %43 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %44 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %49 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.error_hdr*, %struct.error_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.error_hdr, %struct.error_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ZCRYPT_DBF_DEV(i32 %41, %struct.zcrypt_device* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %2
  %58 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %59 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* @DBF_ERR, align 4
  %61 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %62 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %63 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %68 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.error_hdr*, %struct.error_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.error_hdr, %struct.error_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ZCRYPT_DBF_DEV(i32 %60, %struct.zcrypt_device* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %57, %37, %16, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ZCRYPT_DBF_DEV(i32, %struct.zcrypt_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
