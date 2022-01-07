; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_adjust_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_adjust_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_wl* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_wl = type { i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_AP = common dso_local global i32 0, align 4
@B43legacy_MACCTL_KEEP_CTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_KEEP_BADPLCP = common dso_local global i32 0, align 4
@B43legacy_MACCTL_KEEP_BAD = common dso_local global i32 0, align 4
@B43legacy_MACCTL_PROMISC = common dso_local global i32 0, align 4
@B43legacy_MACCTL_BEACPROMISC = common dso_local global i32 0, align 4
@B43legacy_MACCTL_INFRA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_adjust_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_adjust_opmode(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 1
  %8 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %7, align 8
  store %struct.b43legacy_wl* %8, %struct.b43legacy_wl** %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %11 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @B43legacy_MACCTL_AP, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @B43legacy_MACCTL_KEEP_CTL, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @B43legacy_MACCTL_KEEP_BADPLCP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @B43legacy_MACCTL_KEEP_BAD, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @B43legacy_MACCTL_PROMISC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @B43legacy_MACCTL_BEACPROMISC, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %40 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %41 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* @B43legacy_MACCTL_AP, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %1
  %48 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %49 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %50 = call i64 @b43legacy_is_mode(%struct.b43legacy_wl* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %60 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FIF_CONTROL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @B43legacy_MACCTL_KEEP_CTL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %71 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FIF_FCSFAIL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @B43legacy_MACCTL_KEEP_BAD, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %82 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FIF_PLCPFAIL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @B43legacy_MACCTL_KEEP_BADPLCP, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %93 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @B43legacy_MACCTL_PROMISC, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %104 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @B43legacy_MACCTL_BEACPROMISC, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %102
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sle i32 %119, 4
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i32, i32* @B43legacy_MACCTL_PROMISC, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %127 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %126, i32 %127, i32 %128)
  store i32 2, i32* %5, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %125
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @B43legacy_MACCTL_AP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %134
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 17158
  br i1 %147, label %148, label %158

148:                                              ; preds = %139
  %149 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %150 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 100, i32* %5, align 4
  br label %159

158:                                              ; preds = %148, %139
  store i32 50, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %157
  br label %160

160:                                              ; preds = %159, %134, %125
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %161, i32 1554, i32 %162)
  ret void
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i64 @b43legacy_is_mode(%struct.b43legacy_wl*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
