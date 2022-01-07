; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*)* }

@freq_list = common dso_local global i32* null, align 8
@FREQ_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HFA384X_RID_CNFOWNCHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @prism2_ioctl_siwfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %14)
  store %struct.hostap_interface* %15, %struct.hostap_interface** %10, align 8
  %16 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %17 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  %19 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %20 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %73

23:                                               ; preds = %4
  %24 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %25 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 100000
  %28 = load i32*, i32** @freq_list, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %23
  %33 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %34 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 100000
  %37 = load i32*, i32** @freq_list, align 8
  %38 = load i32, i32* @FREQ_COUNT, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %36, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %32
  %45 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %46 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 100000
  store i32 %48, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %69, %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @FREQ_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** @freq_list, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %63 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %67 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %49

72:                                               ; preds = %61, %49
  br label %73

73:                                               ; preds = %72, %32, %23, %4
  %74 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %75 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %73
  %79 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %80 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %100, label %83

83:                                               ; preds = %78
  %84 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %85 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FREQ_COUNT, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %94 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = shl i32 1, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %89, %83, %78, %73
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %129

103:                                              ; preds = %89
  %104 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %105 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = load i32, i32* @HFA384X_RID_CNFOWNCHANNEL, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @hostap_set_word(%struct.net_device* %109, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %120, align 8
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = call i64 %121(%struct.net_device* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116, %103
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %129

128:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %125, %100
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @hostap_set_word(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
