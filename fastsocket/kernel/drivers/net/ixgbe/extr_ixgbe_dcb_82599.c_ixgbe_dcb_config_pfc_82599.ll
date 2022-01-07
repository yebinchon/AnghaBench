; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_pfc_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_pfc_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.TYPE_3__ = type { i64 }

@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_MFLCN_DPF = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE_MASK = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_MFLCN_RPFCE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE = common dso_local global i32 0, align 4
@MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = load i32, i32* @IXGBE_FCCFG, align 4
  %15 = load i32, i32* @IXGBE_FCCFG_TFCE_PRIORITY, align 4
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = load i32, i32* @IXGBE_MFLCN, align 4
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @IXGBE_MFLCN_DPF, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @IXGBE_MFLCN_RPFCE_MASK, align 4
  %24 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ixgbe_mac_X540, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IXGBE_MFLCN_RPFCE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %3
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @IXGBE_MFLCN_RPFCE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = load i32, i32* @IXGBE_MFLCN, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %72, %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %53

75:                                               ; preds = %53
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 10
  %81 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %147, %75
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %150

87:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %108, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 1, i32* %12, align 4
  br label %111

107:                                              ; preds = %100, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %88

111:                                              ; preds = %106, %88
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 10
  %124 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @IXGBE_FCRTL_82599(i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %126, i32 %128, i32 %129)
  br label %141

131:                                              ; preds = %111
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @IXGBE_RXPBSIZE(i32 %133)
  %135 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %132, i32 %134)
  %136 = sub nsw i32 %135, 32
  store i32 %136, i32* %10, align 4
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @IXGBE_FCRTL_82599(i32 %138)
  %140 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %131, %114
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @IXGBE_FCRTH_82599(i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %142, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %83

150:                                              ; preds = %83
  br label %151

151:                                              ; preds = %164, %150
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @IXGBE_FCRTL_82599(i32 %157)
  %159 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %156, i32 %158, i32 0)
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @IXGBE_FCRTH_82599(i32 %161)
  %163 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %160, i32 %162, i32 0)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %151

167:                                              ; preds = %151
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %169 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %171, 65537
  store i32 %172, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %184, %167
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %176 = sdiv i32 %175, 2
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @IXGBE_FCTTV(i32 %180)
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %179, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %173

187:                                              ; preds = %173
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %189 = load i32, i32* @IXGBE_FCRTV, align 4
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %191 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sdiv i32 %193, 2
  %195 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %188, i32 %189, i32 %194)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FCRTL_82599(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_FCRTH_82599(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
