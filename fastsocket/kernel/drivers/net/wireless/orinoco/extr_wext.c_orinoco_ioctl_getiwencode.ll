; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getiwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_getiwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.orinoco_private = type { i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ORINOCO_MAX_KEYS = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @orinoco_ioctl_getiwencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_getiwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %13)
  store %struct.orinoco_private* %14, %struct.orinoco_private** %10, align 8
  %15 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %16 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %19 = and i32 %17, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %22 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %108

28:                                               ; preds = %4
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %30 = call i64 @orinoco_lock(%struct.orinoco_private* %29, i64* %12)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %108

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ORINOCO_MAX_KEYS, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %35
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %48 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %50 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %55 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %56 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %67 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %72 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %73 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %59
  %77 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %78 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %79 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %84 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %92 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %95 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i8* %93, i32 %101, i32 %104)
  %106 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %107 = call i32 @orinoco_unlock(%struct.orinoco_private* %106, i64* %12)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %82, %32, %25
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
