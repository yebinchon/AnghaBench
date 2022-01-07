; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_genphy_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_genphy_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i64, i32, i32, i8* }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = call i32 @genphy_update_link(%struct.phy_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %207

15:                                               ; preds = %1
  %16 = load i64, i64* @AUTONEG_ENABLE, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %156

21:                                               ; preds = %15
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %26 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MII_STAT1000, align 4
  %33 = call i32 @phy_read(%struct.phy_device* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %207

38:                                               ; preds = %30
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @MII_CTRL1000, align 4
  %41 = call i32 @phy_read(%struct.phy_device* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %207

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 2
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %21
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = load i32, i32* @MII_LPA, align 4
  %54 = call i32 @phy_read(%struct.phy_device* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %207

59:                                               ; preds = %51
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = load i32, i32* @MII_ADVERTISE, align 4
  %62 = call i32 @phy_read(%struct.phy_device* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %207

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** @SPEED_10, align 8
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @DUPLEX_HALF, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %79 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %78, i32 0, i32 4
  store i32 0, i32* %79, align 4
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %80, i32 0, i32 3
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @LPA_1000FULL, align 4
  %84 = load i32, i32* @LPA_1000HALF, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %67
  %89 = load i8*, i8** @SPEED_1000, align 8
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @LPA_1000FULL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i64, i64* @DUPLEX_FULL, align 8
  %98 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %88
  br label %132

101:                                              ; preds = %67
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @LPA_100FULL, align 4
  %104 = load i32, i32* @LPA_100HALF, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load i8*, i8** @SPEED_100, align 8
  %110 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %111 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @LPA_100FULL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i64, i64* @DUPLEX_FULL, align 8
  %118 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %119 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %108
  br label %131

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @LPA_10FULL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i64, i64* @DUPLEX_FULL, align 8
  %128 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %129 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %120
  br label %132

132:                                              ; preds = %131, %100
  %133 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %134 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DUPLEX_FULL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %146 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %154 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %138, %132
  br label %206

156:                                              ; preds = %15
  %157 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %158 = load i32, i32* @MII_BMCR, align 4
  %159 = call i32 @phy_read(%struct.phy_device* %157, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %207

164:                                              ; preds = %156
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @BMCR_FULLDPLX, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i64, i64* @DUPLEX_FULL, align 8
  %171 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %172 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %178

173:                                              ; preds = %164
  %174 = load i8*, i8** @DUPLEX_HALF, align 8
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %177 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %173, %169
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @BMCR_SPEED1000, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i8*, i8** @SPEED_1000, align 8
  %185 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %186 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  br label %201

187:                                              ; preds = %178
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @BMCR_SPEED100, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i8*, i8** @SPEED_100, align 8
  %194 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %195 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  br label %200

196:                                              ; preds = %187
  %197 = load i8*, i8** @SPEED_10, align 8
  %198 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %199 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %192
  br label %201

201:                                              ; preds = %200, %183
  %202 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %203 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %202, i32 0, i32 4
  store i32 0, i32* %203, align 4
  %204 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %205 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %204, i32 0, i32 3
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %201, %155
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %162, %65, %57, %44, %36, %13
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @genphy_update_link(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
