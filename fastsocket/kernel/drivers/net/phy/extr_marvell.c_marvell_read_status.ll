; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_marvell_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_marvell_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i32, i32, i8* }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_M1011_PHY_STATUS = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_M1011_PHY_STATUS_FULLDUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@MII_M1011_PHY_STATUS_SPD_MASK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_read_status(%struct.phy_device* %0) #0 {
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
  br label %158

15:                                               ; preds = %1
  %16 = load i64, i64* @AUTONEG_ENABLE, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %15
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_M1011_PHY_STATUS, align 4
  %24 = call i32 @phy_read(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %158

29:                                               ; preds = %21
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @MII_LPA, align 4
  %32 = call i32 @phy_read(%struct.phy_device* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %158

37:                                               ; preds = %29
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MII_ADVERTISE, align 4
  %40 = call i32 @phy_read(%struct.phy_device* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %158

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MII_M1011_PHY_STATUS_FULLDUPLEX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i64, i64* @DUPLEX_FULL, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %62

57:                                               ; preds = %45
  %58 = load i8*, i8** @DUPLEX_HALF, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MII_M1011_PHY_STATUS_SPD_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %79 [
    i32 128, label %71
    i32 129, label %75
  ]

71:                                               ; preds = %62
  %72 = load i8*, i8** @SPEED_1000, align 8
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  br label %83

75:                                               ; preds = %62
  %76 = load i8*, i8** @SPEED_100, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %62
  %80 = load i8*, i8** @SPEED_10, align 8
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DUPLEX_FULL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %89, %83
  br label %157

107:                                              ; preds = %15
  %108 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %109 = load i32, i32* @MII_BMCR, align 4
  %110 = call i32 @phy_read(%struct.phy_device* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %158

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @BMCR_FULLDPLX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i64, i64* @DUPLEX_FULL, align 8
  %122 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %123 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %129

124:                                              ; preds = %115
  %125 = load i8*, i8** @DUPLEX_HALF, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %128 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %124, %120
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @BMCR_SPEED1000, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** @SPEED_1000, align 8
  %136 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %137 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %152

138:                                              ; preds = %129
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @BMCR_SPEED100, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i8*, i8** @SPEED_100, align 8
  %145 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %146 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  br label %151

147:                                              ; preds = %138
  %148 = load i8*, i8** @SPEED_10, align 8
  %149 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %150 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %134
  %153 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %154 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  %155 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %156 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %106
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %113, %43, %35, %27, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @genphy_update_link(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
