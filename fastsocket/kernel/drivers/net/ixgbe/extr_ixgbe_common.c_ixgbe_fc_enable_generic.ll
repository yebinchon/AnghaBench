; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE_MASK = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_MFLCN_DPF = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fc_enable_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %15, %1
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = call i32 @hw_dbg(%struct.ixgbe_hw* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %32, i32* %3, align 4
  br label %183

33:                                               ; preds = %23
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = call i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw* %34)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = load i32, i32* @IXGBE_MFLCN, align 4
  %38 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @IXGBE_MFLCN_RPFCE_MASK, align 4
  %40 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = load i32, i32* @IXGBE_FCCFG, align 4
  %47 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %49 = load i32, i32* @IXGBE_FCCFG_TFCE_PRIORITY, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %74 [
    i32 130, label %58
    i32 129, label %59
    i32 128, label %63
    i32 131, label %67
  ]

58:                                               ; preds = %33
  br label %78

59:                                               ; preds = %33
  %60 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %33
  %64 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %78

67:                                               ; preds = %33
  %68 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %33
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %76 = call i32 @hw_dbg(%struct.ixgbe_hw* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %77, i32* %3, align 4
  br label %183

78:                                               ; preds = %67, %63, %59, %58
  %79 = load i32, i32* @IXGBE_MFLCN_DPF, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = load i32, i32* @IXGBE_MFLCN, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %82, i32 %83, i32 %84)
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = load i32, i32* @IXGBE_FCCFG, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %87, i32 %88)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 10
  %95 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %151, %78
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %154

101:                                              ; preds = %97
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %108
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @IXGBE_FCRTL_82599(i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %119, i32 %121, i32 %122)
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 10
  %133 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %8, align 4
  br label %145

135:                                              ; preds = %108, %101
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @IXGBE_FCRTL_82599(i32 %137)
  %139 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %136, i32 %138, i32 0)
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @IXGBE_RXPBSIZE(i32 %141)
  %143 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %140, i32 %142)
  %144 = sub nsw i32 %143, 32
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %135, %118
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @IXGBE_FCRTH_82599(i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %146, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %97

154:                                              ; preds = %97
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %158, 65537
  store i32 %159, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %171, %154
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %163 = sdiv i32 %162, 2
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @IXGBE_FCTTV(i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %166, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %160

174:                                              ; preds = %160
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %176 = load i32, i32* @IXGBE_FCRTV, align 4
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %178 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sdiv i32 %180, 2
  %182 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %175, i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %174, %74, %29
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_fc_autoneg(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

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
