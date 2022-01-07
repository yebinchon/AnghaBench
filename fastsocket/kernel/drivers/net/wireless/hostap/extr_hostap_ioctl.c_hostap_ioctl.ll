; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_hostap_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_hostap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.iwreq = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwreq*, align 8
  %8 = alloca %struct.hostap_interface*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = bitcast %struct.ifreq* %11 to %struct.iwreq*
  store %struct.iwreq* %12, %struct.iwreq** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %13)
  store %struct.hostap_interface* %14, %struct.hostap_interface** %8, align 8
  %15 = load %struct.hostap_interface*, %struct.hostap_interface** %8, align 8
  %16 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %204 [
    i32 135, label %19
    i32 132, label %35
    i32 131, label %51
    i32 129, label %67
    i32 128, label %83
    i32 130, label %99
    i32 133, label %115
    i32 139, label %131
    i32 138, label %150
    i32 134, label %169
    i32 136, label %190
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %29 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @prism2_ioctl_priv_inquire(%struct.net_device* %27, i32* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %26, %23
  br label %207

35:                                               ; preds = %3
  %36 = load i32, i32* @CAP_NET_ADMIN, align 4
  %37 = call i32 @capable(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %45 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @prism2_ioctl_priv_monitor(%struct.net_device* %43, i32* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %42, %39
  br label %207

51:                                               ; preds = %3
  %52 = load i32, i32* @CAP_NET_ADMIN, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %61 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @prism2_ioctl_priv_reset(%struct.net_device* %59, i32* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %58, %55
  br label %207

67:                                               ; preds = %3
  %68 = load i32, i32* @CAP_NET_ADMIN, align 4
  %69 = call i32 @capable(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %82

74:                                               ; preds = %67
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %77 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @prism2_wds_add(%struct.TYPE_12__* %75, i32 %80, i32 1)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %74, %71
  br label %207

83:                                               ; preds = %3
  %84 = load i32, i32* @CAP_NET_ADMIN, align 4
  %85 = call i32 @capable(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %98

90:                                               ; preds = %83
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %93 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @prism2_wds_del(%struct.TYPE_12__* %91, i32 %96, i32 1, i32 0)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %90, %87
  br label %207

99:                                               ; preds = %3
  %100 = load i32, i32* @CAP_NET_ADMIN, align 4
  %101 = call i32 @capable(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %114

106:                                              ; preds = %99
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %109 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @prism2_ioctl_priv_set_rid_word(%struct.net_device* %107, i32* %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %106, %103
  br label %207

115:                                              ; preds = %3
  %116 = load i32, i32* @CAP_NET_ADMIN, align 4
  %117 = call i32 @capable(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @EPERM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %130

122:                                              ; preds = %115
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %125 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = call i32 @ap_mac_cmd_ioctl(%struct.TYPE_12__* %123, i32* %128)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %122, %119
  br label %207

131:                                              ; preds = %3
  %132 = load i32, i32* @CAP_NET_ADMIN, align 4
  %133 = call i32 @capable(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %149

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %144 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ap_control_add_mac(i32* %142, i32 %147)
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %138, %135
  br label %207

150:                                              ; preds = %3
  %151 = load i32, i32* @CAP_NET_ADMIN, align 4
  %152 = call i32 @capable(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @EPERM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %10, align 4
  br label %168

157:                                              ; preds = %150
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %163 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ap_control_del_mac(i32* %161, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %157, %154
  br label %207

169:                                              ; preds = %3
  %170 = load i32, i32* @CAP_NET_ADMIN, align 4
  %171 = call i32 @capable(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* @EPERM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %10, align 4
  br label %189

176:                                              ; preds = %169
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %184 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ap_control_kick_mac(%struct.TYPE_13__* %179, i32 %182, i32 %187)
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %176, %173
  br label %207

190:                                              ; preds = %3
  %191 = load i32, i32* @CAP_NET_ADMIN, align 4
  %192 = call i32 @capable(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* @EPERM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %10, align 4
  br label %203

197:                                              ; preds = %190
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %199 = load %struct.iwreq*, %struct.iwreq** %7, align 8
  %200 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = call i32 @prism2_ioctl_priv_hostapd(%struct.TYPE_12__* %198, i32* %201)
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %197, %194
  br label %207

204:                                              ; preds = %3
  %205 = load i32, i32* @EOPNOTSUPP, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %204, %203, %189, %168, %149, %130, %114, %98, %82, %66, %50, %34
  %208 = load i32, i32* %10, align 4
  ret i32 %208
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @prism2_ioctl_priv_inquire(%struct.net_device*, i32*) #1

declare dso_local i32 @prism2_ioctl_priv_monitor(%struct.net_device*, i32*) #1

declare dso_local i32 @prism2_ioctl_priv_reset(%struct.net_device*, i32*) #1

declare dso_local i32 @prism2_wds_add(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @prism2_wds_del(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @prism2_ioctl_priv_set_rid_word(%struct.net_device*, i32*) #1

declare dso_local i32 @ap_mac_cmd_ioctl(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ap_control_add_mac(i32*, i32) #1

declare dso_local i32 @ap_control_del_mac(i32*, i32) #1

declare dso_local i32 @ap_control_kick_mac(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @prism2_ioctl_priv_hostapd(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
