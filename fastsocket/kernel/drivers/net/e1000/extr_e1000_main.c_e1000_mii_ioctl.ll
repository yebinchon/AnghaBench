; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i32, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MII_CR_POWER_DOWN = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @e1000_mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca %struct.mii_ioctl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %8, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  store %struct.e1000_hw* %18, %struct.e1000_hw** %9, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %19)
  store %struct.mii_ioctl_data* %20, %struct.mii_ioctl_data** %10, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_media_type_copper, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %209

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %204 [
    i32 130, label %31
    i32 129, label %37
    i32 128, label %63
  ]

31:                                               ; preds = %29
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %207

37:                                               ; preds = %29
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %43 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %44 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 31
  %47 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %48 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %47, i32 0, i32 2
  %49 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %42, i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 1
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %209

58:                                               ; preds = %37
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 1
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %207

63:                                               ; preds = %29
  %64 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %65 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %209

72:                                               ; preds = %63
  %73 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %74 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 1
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %81 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %82 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %80, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %72
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 1
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %209

94:                                               ; preds = %72
  %95 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %95, i32 0, i32 1
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %100 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @e1000_media_type_copper, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %179

104:                                              ; preds = %94
  %105 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %106 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %178 [
    i32 131, label %108
    i32 132, label %170
    i32 133, label %170
  ]

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @MII_CR_POWER_DOWN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %178

114:                                              ; preds = %108
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 2
  store i32 47, i32* %123, align 4
  br label %157

124:                                              ; preds = %114
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 64
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @SPEED_1000, align 4
  store i32 %129, i32* %14, align 4
  br label %139

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, 8192
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @SPEED_100, align 4
  store i32 %135, i32* %14, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @SPEED_10, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %136, %134
  br label %139

139:                                              ; preds = %138, %128
  %140 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, 256
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @DUPLEX_FULL, align 4
  br label %149

147:                                              ; preds = %139
  %148 = load i32, i32* @DUPLEX_HALF, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = call i32 @e1000_set_spd_dplx(%struct.e1000_adapter* %140, i32 %141, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %4, align 4
  br label %209

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %119
  %158 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %159 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @netif_running(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %165 = call i32 @e1000_reinit_locked(%struct.e1000_adapter* %164)
  br label %169

166:                                              ; preds = %157
  %167 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %168 = call i32 @e1000_reset(%struct.e1000_adapter* %167)
  br label %169

169:                                              ; preds = %166, %163
  br label %178

170:                                              ; preds = %104, %104
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %172 = call i32 @e1000_phy_reset(%struct.e1000_hw* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %209

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %104, %177, %169, %113
  br label %203

179:                                              ; preds = %94
  %180 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %181 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %202 [
    i32 131, label %183
  ]

183:                                              ; preds = %179
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @MII_CR_POWER_DOWN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %202

189:                                              ; preds = %183
  %190 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %191 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @netif_running(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %197 = call i32 @e1000_reinit_locked(%struct.e1000_adapter* %196)
  br label %201

198:                                              ; preds = %189
  %199 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %200 = call i32 @e1000_reset(%struct.e1000_adapter* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %179, %201, %188
  br label %203

203:                                              ; preds = %202, %178
  br label %207

204:                                              ; preds = %29
  %205 = load i32, i32* @EOPNOTSUPP, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %209

207:                                              ; preds = %203, %58, %31
  %208 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %204, %174, %154, %87, %69, %51, %26
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_set_spd_dplx(%struct.e1000_adapter*, i32, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @e1000_reinit_locked(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_phy_reset(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
