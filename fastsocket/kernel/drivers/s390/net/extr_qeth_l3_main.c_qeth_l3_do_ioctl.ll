; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qeth_arp_cache_entry = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@CARD_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSD = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ioce%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @qeth_l3_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.qeth_arp_cache_entry, align 4
  %10 = alloca %struct.mii_ioctl_data*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  store %struct.qeth_card* %14, %struct.qeth_card** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %185

20:                                               ; preds = %3
  %21 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CARD_STATE_UP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %185

35:                                               ; preds = %26, %20
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %173 [
    i32 129, label %37
    i32 131, label %51
    i32 133, label %65
    i32 130, label %86
    i32 132, label %107
    i32 134, label %117
    i32 128, label %124
    i32 136, label %146
    i32 135, label %151
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @CAP_NET_ADMIN, align 4
  %39 = call i32 @capable(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %176

44:                                               ; preds = %37
  %45 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %46 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qeth_l3_arp_set_no_entries(%struct.qeth_card* %45, i32 %49)
  store i32 %50, i32* %11, align 4
  br label %176

51:                                               ; preds = %35
  %52 = load i32, i32* @CAP_NET_ADMIN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %176

58:                                               ; preds = %51
  %59 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %60 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %61 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @qeth_l3_arp_query(%struct.qeth_card* %59, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %176

65:                                               ; preds = %35
  %66 = load i32, i32* @CAP_NET_ADMIN, align 4
  %67 = call i32 @capable(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %176

72:                                               ; preds = %65
  %73 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %74 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @copy_from_user(%struct.qeth_arp_cache_entry* %9, i32 %76, i32 4)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %85

82:                                               ; preds = %72
  %83 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %84 = call i32 @qeth_l3_arp_add_entry(%struct.qeth_card* %83, %struct.qeth_arp_cache_entry* %9)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %176

86:                                               ; preds = %35
  %87 = load i32, i32* @CAP_NET_ADMIN, align 4
  %88 = call i32 @capable(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @EPERM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %176

93:                                               ; preds = %86
  %94 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %95 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @copy_from_user(%struct.qeth_arp_cache_entry* %9, i32 %97, i32 4)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %105 = call i32 @qeth_l3_arp_remove_entry(%struct.qeth_card* %104, %struct.qeth_arp_cache_entry* %9)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %176

107:                                              ; preds = %35
  %108 = load i32, i32* @CAP_NET_ADMIN, align 4
  %109 = call i32 @capable(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @EPERM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %176

114:                                              ; preds = %107
  %115 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %116 = call i32 @qeth_l3_arp_flush_cache(%struct.qeth_card* %115)
  store i32 %116, i32* %11, align 4
  br label %176

117:                                              ; preds = %35
  %118 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %119 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %120 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @qeth_snmp_command(%struct.qeth_card* %118, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %176

124:                                              ; preds = %35
  %125 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %126 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @QETH_CARD_TYPE_OSD, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @QETH_CARD_TYPE_OSX, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %131, %124
  %139 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %140 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  store i32 1, i32* %4, align 4
  br label %185

145:                                              ; preds = %138, %131
  store i32 0, i32* %4, align 4
  br label %185

146:                                              ; preds = %35
  %147 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %148 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %147)
  store %struct.mii_ioctl_data* %148, %struct.mii_ioctl_data** %10, align 8
  %149 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %150 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  br label %176

151:                                              ; preds = %35
  %152 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %153 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %152)
  store %struct.mii_ioctl_data* %153, %struct.mii_ioctl_data** %10, align 8
  %154 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %155 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %11, align 4
  br label %172

161:                                              ; preds = %151
  %162 = load %struct.net_device*, %struct.net_device** %5, align 8
  %163 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %164 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %167 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @qeth_mdio_read(%struct.net_device* %162, i32 %165, i32 %168)
  %170 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %171 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %161, %158
  br label %176

173:                                              ; preds = %35
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %173, %172, %146, %117, %114, %111, %106, %90, %85, %69, %58, %55, %44, %41
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* @TRACE, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @QETH_DBF_TEXT_(i32 %180, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %176
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %145, %144, %32, %17
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @qeth_l3_arp_set_no_entries(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_arp_query(%struct.qeth_card*, i32) #1

declare dso_local i32 @copy_from_user(%struct.qeth_arp_cache_entry*, i32, i32) #1

declare dso_local i32 @qeth_l3_arp_add_entry(%struct.qeth_card*, %struct.qeth_arp_cache_entry*) #1

declare dso_local i32 @qeth_l3_arp_remove_entry(%struct.qeth_card*, %struct.qeth_arp_cache_entry*) #1

declare dso_local i32 @qeth_l3_arp_flush_cache(%struct.qeth_card*) #1

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
