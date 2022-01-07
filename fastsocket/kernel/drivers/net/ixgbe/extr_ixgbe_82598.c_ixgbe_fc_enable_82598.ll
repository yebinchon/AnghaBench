; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i64 0, align 8
@IXGBE_FCTRL_RPFCE = common dso_local global i64 0, align 8
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_PRIORITY = common dso_local global i64 0, align 8
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FCTRL_DPF = common dso_local global i64 0, align 8
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_fc_enable_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fc_enable_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25, %17, %1
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = call i32 @hw_dbg(%struct.ixgbe_hw* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %34, i32* %3, align 4
  br label %222

35:                                               ; preds = %25
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i64*, i32*, i32)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.0*
  %43 = call i32 %40(%struct.ixgbe_hw.0* %42, i64* %9, i32* %11, i32 0)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %35
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %63 [
    i32 131, label %55
    i32 129, label %59
  ]

55:                                               ; preds = %50
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 128, i32* %58, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 130, i32* %62, align 4
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %59, %55
  br label %65

65:                                               ; preds = %64, %46, %35
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = call i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw* %66)
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = load i32, i32* @IXGBE_FCTRL, align 4
  %70 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %72 = load i64, i64* @IXGBE_FCTRL_RPFCE, align 8
  %73 = or i64 %71, %72
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %4, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = load i32, i32* @IXGBE_RMCS, align 4
  %79 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %77, i32 %78)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* @IXGBE_RMCS_TFCE_PRIORITY, align 8
  %81 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %82 = or i64 %80, %81
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %5, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %5, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %106 [
    i32 130, label %90
    i32 129, label %91
    i32 128, label %95
    i32 131, label %99
  ]

90:                                               ; preds = %65
  br label %110

91:                                               ; preds = %65
  %92 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %93 = load i64, i64* %4, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %4, align 8
  br label %110

95:                                               ; preds = %65
  %96 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %97 = load i64, i64* %5, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %5, align 8
  br label %110

99:                                               ; preds = %65
  %100 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %101 = load i64, i64* %4, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %104 = load i64, i64* %5, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %5, align 8
  br label %110

106:                                              ; preds = %65
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = call i32 @hw_dbg(%struct.ixgbe_hw* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %109, i32* %3, align 4
  br label %222

110:                                              ; preds = %99, %95, %91, %90
  %111 = load i64, i64* @IXGBE_FCTRL_DPF, align 8
  %112 = load i64, i64* %4, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %4, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %115 = load i32, i32* @IXGBE_FCTRL, align 4
  %116 = load i64, i64* %4, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %114, i32 %115, i32 %117)
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = load i32, i32* @IXGBE_RMCS, align 4
  %121 = load i64, i64* %5, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %119, i32 %120, i32 %122)
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 10
  %129 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %130 = or i32 %128, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %188, %110
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %191

136:                                              ; preds = %132
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 128
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %136
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %143
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %155 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 10
  %163 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %164 = or i32 %162, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %8, align 8
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @IXGBE_FCRTL(i32 %167)
  %169 = load i64, i64* %7, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %166, i32 %168, i32 %170)
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @IXGBE_FCRTH(i32 %173)
  %175 = load i64, i64* %8, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %172, i32 %174, i32 %176)
  br label %187

178:                                              ; preds = %143, %136
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @IXGBE_FCRTL(i32 %180)
  %182 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %179, i32 %181, i32 0)
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @IXGBE_FCRTH(i32 %184)
  %186 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %183, i32 %185, i32 0)
  br label %187

187:                                              ; preds = %178, %153
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %132

191:                                              ; preds = %132
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %193 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %195, 65537
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %210, %191
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %201 = sdiv i32 %200, 2
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @IXGBE_FCTTV(i32 %205)
  %207 = load i64, i64* %6, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %204, i32 %206, i32 %208)
  br label %210

210:                                              ; preds = %203
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %198

213:                                              ; preds = %198
  %214 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %215 = load i32, i32* @IXGBE_FCRTV, align 4
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = sdiv i32 %219, 2
  %221 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %214, i32 %215, i32 %220)
  br label %222

222:                                              ; preds = %213, %106, %31
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL(i32) #1

declare dso_local i32 @IXGBE_FCRTH(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
