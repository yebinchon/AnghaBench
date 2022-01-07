; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgbe_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.ixgbe_adapter* %18, %struct.ixgbe_adapter** %8, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  store %struct.ixgbe_hw* %20, %struct.ixgbe_hw** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %198

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = icmp ne i32 %31, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %198

44:                                               ; preds = %28
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %12, align 4
  %50 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sub nsw i32 %60, 1
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kmalloc(i32 %63, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %44
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %198

71:                                               ; preds = %44
  %72 = load i32*, i32** %10, align 8
  %73 = bitcast i32* %72 to i8*
  store i8* %73, i8** %11, align 8
  %74 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %75 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 %84(%struct.ixgbe_hw.0* %86, i32 %87, i32* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %194

94:                                               ; preds = %79
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  br label %97

97:                                               ; preds = %94, %71
  %98 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %99 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %102 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %97
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %111, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %114 = bitcast %struct.ixgbe_hw* %113 to %struct.ixgbe_hw.0*
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = call i32 %112(%struct.ixgbe_hw.0* %114, i32 %115, i32* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %107
  br label %194

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %97
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %141, %127
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @le16_to_cpus(i32* %139)
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %128

144:                                              ; preds = %128
  %145 = load i8*, i8** %11, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %148 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i8* %145, i32* %146, i32 %149)
  store i32 0, i32* %16, align 4
  br label %151

151:                                              ; preds = %164, %144
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i32 @cpu_to_le16s(i32* %162)
  br label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %151

167:                                              ; preds = %151
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %169 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %171, align 8
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %174 = bitcast %struct.ixgbe_hw* %173 to %struct.ixgbe_hw.1*
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 %172(%struct.ixgbe_hw.1* %174, i32 %175, i32 %179, i32* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %167
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %186 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %188, align 8
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %191 = bitcast %struct.ixgbe_hw* %190 to %struct.ixgbe_hw.2*
  %192 = call i32 %189(%struct.ixgbe_hw.2* %191)
  br label %193

193:                                              ; preds = %184, %167
  br label %194

194:                                              ; preds = %193, %125, %93
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @kfree(i32* %195)
  %197 = load i32, i32* %15, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %194, %68, %41, %25
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
