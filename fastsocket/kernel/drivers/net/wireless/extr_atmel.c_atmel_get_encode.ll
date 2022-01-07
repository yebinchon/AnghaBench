; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.atmel_private = type { i32, i32*, i32*, i64, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %11)
  store %struct.atmel_private* %12, %struct.atmel_private** %9, align 8
  %13 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %14 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %17 = and i32 %15, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %20 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %25 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %41

27:                                               ; preds = %4
  %28 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %29 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %34 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %38 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %41
  %48 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %59 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %66 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %68 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 16
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %73 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %89

74:                                               ; preds = %51
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @memset(i8* %75, i32 0, i32 16)
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %79 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %86 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i8* %77, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %74, %71
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
