; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"intc override timeout\0A\00", align 1
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_RXTX = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_rf_ctl_intc_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %203, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %206

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %27
  br label %203

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %11, align 4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @b43_phy_set(%struct.b43_wldev* %46, i32 %47, i32 1024)
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %202 [
    i32 130, label %50
    i32 128, label %57
    i32 129, label %143
    i32 131, label %163
    i32 132, label %182
  ]

50:                                               ; preds = %44
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 0)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %55 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %56 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %54, i32 %55)
  br label %202

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %57
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %62 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 6
  %65 = call i32 @b43_phy_maskset(%struct.b43_wldev* %61, i32 %62, i32 64575, i32 %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %67 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %68 = call i32 @b43_phy_maskset(%struct.b43_wldev* %66, i32 %67, i32 65534, i32 1)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %70 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %71 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %72 = call i32 @b43_phy_set(%struct.b43_wldev* %69, i32 %70, i32 %71)
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %86, %60
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 100
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %78 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %79 = call i32 @b43_phy_read(%struct.b43_wldev* %77, i32 %78)
  %80 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %89

84:                                               ; preds = %76
  %85 = call i32 @udelay(i32 10)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %73

89:                                               ; preds = %83, %73
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %94 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @b43err(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %89
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %99 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %100 = call i32 @b43_phy_mask(%struct.b43_wldev* %98, i32 %99, i32 65534)
  br label %142

101:                                              ; preds = %57
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %103 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %104, 6
  %106 = call i32 @b43_phy_maskset(%struct.b43_wldev* %102, i32 %103, i32 64575, i32 %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %108 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %109 = call i32 @b43_phy_maskset(%struct.b43_wldev* %107, i32 %108, i32 65534, i32 1)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %111 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %112 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %113 = call i32 @b43_phy_set(%struct.b43_wldev* %110, i32 %111, i32 %112)
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %127, %101
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 100
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %119 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %120 = call i32 @b43_phy_read(%struct.b43_wldev* %118, i32 %119)
  %121 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %130

125:                                              ; preds = %117
  %126 = call i32 @udelay(i32 10)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %114

130:                                              ; preds = %124, %114
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %135 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @b43err(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %140 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %141 = call i32 @b43_phy_mask(%struct.b43_wldev* %139, i32 %140, i32 65534)
  br label %142

142:                                              ; preds = %138, %97
  br label %202

143:                                              ; preds = %44
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %145 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @b43_current_band(i32 %146)
  %148 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  store i32 32, i32* %12, align 4
  %151 = load i32, i32* %7, align 4
  %152 = shl i32 %151, 5
  store i32 %152, i32* %13, align 4
  br label %156

153:                                              ; preds = %143
  store i32 16, i32* %12, align 4
  %154 = load i32, i32* %7, align 4
  %155 = shl i32 %154, 4
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @b43_phy_maskset(%struct.b43_wldev* %157, i32 %158, i32 %160, i32 %161)
  br label %202

163:                                              ; preds = %44
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %165 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @b43_current_band(i32 %166)
  %168 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  store i32 1, i32* %12, align 4
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %13, align 4
  br label %175

172:                                              ; preds = %163
  store i32 4, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = shl i32 %173, 2
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %172, %170
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @b43_phy_maskset(%struct.b43_wldev* %176, i32 %177, i32 %179, i32 %180)
  br label %202

182:                                              ; preds = %44
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %184 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @b43_current_band(i32 %185)
  %187 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  store i32 2, i32* %12, align 4
  %190 = load i32, i32* %7, align 4
  %191 = shl i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %195

192:                                              ; preds = %182
  store i32 8, i32* %12, align 4
  %193 = load i32, i32* %7, align 4
  %194 = shl i32 %193, 3
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = xor i32 %198, -1
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @b43_phy_maskset(%struct.b43_wldev* %196, i32 %197, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %44, %195, %175, %156, %142, %50
  br label %203

203:                                              ; preds = %202, %36
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %21

206:                                              ; preds = %21
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
