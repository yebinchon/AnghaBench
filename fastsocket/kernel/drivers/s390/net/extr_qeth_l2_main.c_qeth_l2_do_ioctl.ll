; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ifreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@CARD_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSM = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ioce%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @qeth_l2_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  store %struct.qeth_card* %13, %struct.qeth_card** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %15 = icmp ne %struct.qeth_card* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %121

19:                                               ; preds = %3
  %20 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CARD_STATE_UP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %121

34:                                               ; preds = %25, %19
  %35 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %121

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %109 [
    i32 129, label %46
    i32 128, label %53
    i32 131, label %82
    i32 130, label %87
  ]

46:                                               ; preds = %44
  %47 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %48 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %49 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @qeth_snmp_command(%struct.qeth_card* %47, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %112

53:                                               ; preds = %44
  %54 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %74, label %60

60:                                               ; preds = %53
  %61 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QETH_CARD_TYPE_OSM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %67, %60, %53
  %75 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %121

81:                                               ; preds = %74, %67
  store i32 0, i32* %4, align 4
  br label %121

82:                                               ; preds = %44
  %83 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %84 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %83)
  store %struct.mii_ioctl_data* %84, %struct.mii_ioctl_data** %9, align 8
  %85 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %86 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %112

87:                                               ; preds = %44
  %88 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %89 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %88)
  store %struct.mii_ioctl_data* %89, %struct.mii_ioctl_data** %9, align 8
  %90 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %91 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %108

97:                                               ; preds = %87
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %100 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %103 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @qeth_mdio_read(%struct.net_device* %98, i32 %101, i32 %104)
  %106 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %107 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %97, %94
  br label %112

109:                                              ; preds = %44
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %109, %108, %82, %46
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @TRACE, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @QETH_DBF_TEXT_(i32 %116, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %81, %80, %41, %31, %16
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @qeth_snmp_command(%struct.qeth_card*, i32) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @qeth_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
