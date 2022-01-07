; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_prism2_update_comms_qual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_prism2_update_comms_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i32, i32, %struct.hfa384x_comms_quality*, i32, i32)* }
%struct.hfa384x_comms_quality = type { i32, i32, i32 }

@HFA384X_RID_DBMCOMMSQUALITY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HFA384X_RID_COMMSQUALITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_update_comms_qual(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hostap_interface*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x_comms_quality, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %7)
  store %struct.hostap_interface* %8, %struct.hostap_interface** %3, align 8
  %9 = load %struct.hostap_interface*, %struct.hostap_interface** %3, align 8
  %10 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @PRISM2_FW_VER(i32 1, i32 3, i32 1)
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64 (i32, i32, %struct.hfa384x_comms_quality*, i32, i32)*, i64 (i32, i32, %struct.hfa384x_comms_quality*, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HFA384X_RID_DBMCOMMSQUALITY, align 4
  %33 = call i64 %28(i32 %31, i32 %32, %struct.hfa384x_comms_quality* %6, i32 12, i32 1)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le16_to_cpu(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le16_to_cpu(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @jiffies, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %55

54:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %35
  br label %91

56:                                               ; preds = %17
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64 (i32, i32, %struct.hfa384x_comms_quality*, i32, i32)*, i64 (i32, i32, %struct.hfa384x_comms_quality*, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HFA384X_RID_COMMSQUALITY, align 4
  %66 = call i64 %61(i32 %64, i32 %65, %struct.hfa384x_comms_quality* %6, i32 12, i32 1)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le16_to_cpu(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = call i8* @HFA384X_LEVEL_TO_dBm(i8* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds %struct.hfa384x_comms_quality, %struct.hfa384x_comms_quality* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = call i8* @HFA384X_LEVEL_TO_dBm(i8* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @jiffies, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %90

89:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %55
  br label %92

92:                                               ; preds = %91, %16
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @PRISM2_FW_VER(i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @HFA384X_LEVEL_TO_dBm(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
