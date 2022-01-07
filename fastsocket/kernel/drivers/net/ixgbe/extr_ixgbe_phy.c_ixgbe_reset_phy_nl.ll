; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_nl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32*)* }
%struct.ixgbe_hw.2 = type opaque

@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PHY reset did not complete.\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@IXGBE_CONTROL_MASK_NL = common dso_local global i32 0, align 4
@IXGBE_CONTROL_SHIFT_NL = common dso_local global i32 0, align 4
@IXGBE_DATA_MASK_NL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"DELAY: %d MS\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DATA:\0A\00", align 1
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Wrote %4.4x to %4.4x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CONTROL:\0A\00", align 1
@IXGBE_CONTROL_EOL_NL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"EOL\0A\00", align 1
@IXGBE_CONTROL_SOL_NL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SOL\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Bad control value\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Bad control type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_phy_nl(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.1*
  %21 = load i32, i32* @MDIO_CTRL1, align 4
  %22 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %23 = call i32 %18(%struct.ixgbe_hw.1* %20, i32 %21, i32 %22, i32* %11)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.0*
  %31 = load i32, i32* @MDIO_CTRL1, align 4
  %32 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %35 = or i32 %33, %34
  %36 = call i32 %28(%struct.ixgbe_hw.0* %30, i32 %31, i32 %32, i32 %35)
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %58, %1
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.1*
  %48 = load i32, i32* @MDIO_CTRL1, align 4
  %49 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %50 = call i32 %45(%struct.ixgbe_hw.1* %47, i32 %48, i32 %49, i32* %11)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %61

56:                                               ; preds = %40
  %57 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %37

61:                                               ; preds = %55, %37
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %69, i64* %12, align 8
  br label %204

70:                                               ; preds = %61
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = call i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %71, i32* %9, i32* %10)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %204

76:                                               ; preds = %70
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.2*
  %84 = load i32, i32* %10, align 4
  %85 = call i64 %81(%struct.ixgbe_hw.2* %83, i32 %84, i32* %7)
  store i64 %85, i64* %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %202, %76
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %203

92:                                               ; preds = %88
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %96, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %99 = bitcast %struct.ixgbe_hw* %98 to %struct.ixgbe_hw.2*
  %100 = load i32, i32* %10, align 4
  %101 = call i64 %97(%struct.ixgbe_hw.2* %99, i32 %100, i32* %5)
  store i64 %101, i64* %12, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @IXGBE_CONTROL_MASK_NL, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @IXGBE_CONTROL_SHIFT_NL, align 4
  %106 = ashr i32 %104, %105
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @IXGBE_DATA_MASK_NL, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %4, align 4
  switch i32 %110, label %198 [
    i32 128, label %111
    i32 129, label %122
    i32 130, label %174
  ]

111:                                              ; preds = %92
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %117, 1000
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %119, 2000
  %121 = call i32 @usleep_range(i32 %118, i32 %120)
  br label %202

122:                                              ; preds = %92
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %124 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %130, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %133 = bitcast %struct.ixgbe_hw* %132 to %struct.ixgbe_hw.2*
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = call i64 %131(%struct.ixgbe_hw.2* %133, i32 %134, i32* %3)
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %170, %122
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %137
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %143 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %145, align 8
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %148 = bitcast %struct.ixgbe_hw* %147 to %struct.ixgbe_hw.2*
  %149 = load i32, i32* %10, align 4
  %150 = call i64 %146(%struct.ixgbe_hw.2* %148, i32 %149, i32* %5)
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %154, align 8
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %157 = bitcast %struct.ixgbe_hw* %156 to %struct.ixgbe_hw.0*
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 %155(%struct.ixgbe_hw.0* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %141
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %137

173:                                              ; preds = %137
  br label %202

174:                                              ; preds = %92
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %178 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @IXGBE_CONTROL_EOL_NL, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %184 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %197

185:                                              ; preds = %174
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @IXGBE_CONTROL_SOL_NL, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %191 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %196

192:                                              ; preds = %185
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %194 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %195 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %195, i64* %12, align 8
  br label %204

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %182
  br label %202

198:                                              ; preds = %92
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %200 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %201 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %201, i64* %12, align 8
  br label %204

202:                                              ; preds = %197, %173, %111
  br label %88

203:                                              ; preds = %88
  br label %204

204:                                              ; preds = %203, %198, %192, %75, %66
  %205 = load i64, i64* %12, align 8
  ret i64 %205
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
