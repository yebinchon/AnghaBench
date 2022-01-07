; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FLAG_READ_ONLY_NVM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVM_CHECKSUM_REG = common dso_local global i32 0, align 4
@e1000_82583 = common dso_local global i64 0, align 8
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82573 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @e1000_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
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
  %18 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.e1000_adapter* %18, %struct.e1000_adapter** %8, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 2
  store %struct.e1000_hw* %20, %struct.e1000_hw** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %213

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %36, %42
  %44 = icmp ne i32 %31, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %213

48:                                               ; preds = %28
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FLAG_READ_ONLY_NVM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %213

58:                                               ; preds = %48
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %12, align 4
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 1
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32* @kmalloc(i32 %77, i32 %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %58
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %213

85:                                               ; preds = %58
  %86 = load i32*, i32** %10, align 8
  %87 = bitcast i32* %86 to i8*
  store i8* %87, i8** %11, align 8
  %88 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i32 @e1000_read_nvm(%struct.e1000_hw* %94, i32 %95, i32 1, i32* %97)
  store i32 %98, i32* %15, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  br label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %103 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %106 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %101
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = call i32 @e1000_read_nvm(%struct.e1000_hw* %115, i32 %116, i32 1, i32* %122)
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %114, %111, %101
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %209

128:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %142, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %131, %132
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @le16_to_cpus(i32* %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %129

145:                                              ; preds = %129
  %146 = load i8*, i8** %11, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %149 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @memcpy(i8* %146, i32* %147, i32 %150)
  store i32 0, i32* %16, align 4
  br label %152

152:                                              ; preds = %165, %145
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = icmp slt i32 %153, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @cpu_to_le16s(i32* %163)
  br label %165

165:                                              ; preds = %159
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %152

168:                                              ; preds = %152
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sub nsw i32 %171, %172
  %174 = add nsw i32 %173, 1
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @e1000_write_nvm(%struct.e1000_hw* %169, i32 %170, i32 %174, i32* %175)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %209

180:                                              ; preds = %168
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @NVM_CHECKSUM_REG, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %205, label %184

184:                                              ; preds = %180
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %186 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @e1000_82583, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %205, label %191

191:                                              ; preds = %184
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @e1000_82574, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %205, label %198

198:                                              ; preds = %191
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @e1000_82573, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %198, %191, %184, %180
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %207 = call i32 @e1000e_update_nvm_checksum(%struct.e1000_hw* %206)
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %205, %198
  br label %209

209:                                              ; preds = %208, %179, %127
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @kfree(i32* %210)
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %209, %82, %55, %45, %25
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

declare dso_local i32 @e1000_write_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000e_update_nvm_checksum(%struct.e1000_hw*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
