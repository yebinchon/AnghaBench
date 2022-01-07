; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_copper_linkup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_copper_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i8*, i8*, i64, i32, i32, i32 }

@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i8* null, align 8
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_copper_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_copper_linkup(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bnx2_read_phy(%struct.bnx2* %7, i32 %10, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BMCR_ANENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %122

16:                                               ; preds = %1
  %17 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %18 = load i32, i32* @MII_CTRL1000, align 4
  %19 = call i32 @bnx2_read_phy(%struct.bnx2* %17, i32 %18, i32* %4)
  %20 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %21 = load i32, i32* @MII_STAT1000, align 4
  %22 = call i32 @bnx2_read_phy(%struct.bnx2* %20, i32 %21, i32* %5)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %16
  %32 = load i8*, i8** @SPEED_1000, align 8
  %33 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @DUPLEX_FULL, align 8
  %36 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %121

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i8*, i8** @SPEED_1000, align 8
  %45 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @DUPLEX_HALF, align 8
  %48 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %120

50:                                               ; preds = %38
  %51 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %52 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bnx2_read_phy(%struct.bnx2* %51, i32 %54, i32* %4)
  %56 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %57 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %58 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bnx2_read_phy(%struct.bnx2* %56, i32 %59, i32* %5)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ADVERTISE_100FULL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %50
  %69 = load i8*, i8** @SPEED_100, align 8
  %70 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %71 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @DUPLEX_FULL, align 8
  %73 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %119

75:                                               ; preds = %50
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ADVERTISE_100HALF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i8*, i8** @SPEED_100, align 8
  %82 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %83 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @DUPLEX_HALF, align 8
  %85 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %86 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %118

87:                                               ; preds = %75
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ADVERTISE_10FULL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i8*, i8** @SPEED_10, align 8
  %94 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %95 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @DUPLEX_FULL, align 8
  %97 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %98 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %117

99:                                               ; preds = %87
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ADVERTISE_10HALF, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** @SPEED_10, align 8
  %106 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @DUPLEX_HALF, align 8
  %109 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %110 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %116

111:                                              ; preds = %99
  %112 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %113 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %112, i32 0, i32 1
  store i8* null, i8** %113, align 8
  %114 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %115 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %92
  br label %118

118:                                              ; preds = %117, %80
  br label %119

119:                                              ; preds = %118, %68
  br label %120

120:                                              ; preds = %119, %43
  br label %121

121:                                              ; preds = %120, %31
  br label %149

122:                                              ; preds = %1
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @BMCR_SPEED100, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** @SPEED_100, align 8
  %129 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %130 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %122
  %132 = load i8*, i8** @SPEED_10, align 8
  %133 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %134 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @BMCR_FULLDPLX, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i8*, i8** @DUPLEX_FULL, align 8
  %142 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %143 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %148

144:                                              ; preds = %135
  %145 = load i8*, i8** @DUPLEX_HALF, align 8
  %146 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %147 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %121
  ret i32 0
}

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
