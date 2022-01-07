; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_check_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_phy_nl = common dso_local global i64 0, align 8
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@IXGBE_LINK_UP_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598AT2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbe_check_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_check_mac_link_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ixgbe_phy_nl, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %28 = call i32 %24(%struct.ixgbe_hw.0* %26, i32 51103, i32 %27, i32* %11)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %37 = call i32 %33(%struct.ixgbe_hw.0* %35, i32 51103, i32 %36, i32* %11)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.0*
  %45 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %46 = call i32 %42(%struct.ixgbe_hw.0* %44, i32 49164, i32 %45, i32* %12)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  store i32 1, i32* %63, align 4
  br label %89

64:                                               ; preds = %58, %54
  %65 = load i32*, i32** %7, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64
  %67 = call i32 @msleep(i32 100)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.0*
  %75 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %76 = call i32 %72(%struct.ixgbe_hw.0* %74, i32 51103, i32 %75, i32* %11)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.0*
  %84 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %85 = call i32 %81(%struct.ixgbe_hw.0* %83, i32 49164, i32 %84, i32* %12)
  br label %86

86:                                               ; preds = %66
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %50

89:                                               ; preds = %62, %50
  br label %103

90:                                               ; preds = %19
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  store i32 1, i32* %99, align 4
  br label %102

100:                                              ; preds = %94, %90
  %101 = load i32*, i32** %7, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %176

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %4
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %111 = load i32, i32* @IXGBE_LINKS, align 4
  %112 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %110, i32 %111)
  store i64 %112, i64* %9, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %109
  store i64 0, i64* %10, align 8
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @IXGBE_LINK_UP_TIME, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32*, i32** %7, align 8
  store i32 1, i32* %126, align 4
  br label %137

127:                                              ; preds = %120
  %128 = load i32*, i32** %7, align 8
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %127
  %130 = call i32 @msleep(i32 100)
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %132 = load i32, i32* @IXGBE_LINKS, align 4
  %133 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %131, i32 %132)
  store i64 %133, i64* %9, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %10, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %10, align 8
  br label %116

137:                                              ; preds = %125, %116
  br label %148

138:                                              ; preds = %109
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @IXGBE_LINKS_UP, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32*, i32** %7, align 8
  store i32 1, i32* %144, align 4
  br label %147

145:                                              ; preds = %138
  %146 = load i32*, i32** %7, align 8
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %143
  br label %148

148:                                              ; preds = %147, %137
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* @IXGBE_LINKS_SPEED, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  br label %159

156:                                              ; preds = %148
  %157 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %158 = load i32*, i32** %6, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %161 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IXGBE_DEV_ID_82598AT2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %171 = call i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32*, i32** %7, align 8
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %173, %169, %165, %159
  br label %176

176:                                              ; preds = %175, %107
  ret i32 0
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_validate_link_ready(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
