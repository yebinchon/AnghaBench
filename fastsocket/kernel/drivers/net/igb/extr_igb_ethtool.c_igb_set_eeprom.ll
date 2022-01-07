; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@e1000_i211 = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @igb_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
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
  %18 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.igb_adapter* %18, %struct.igb_adapter** %8, align 8
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 0
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
  br label %209

28:                                               ; preds = %3
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_i211, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %209

38:                                               ; preds = %28
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  %50 = icmp ne i32 %41, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %209

54:                                               ; preds = %38
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %12, align 4
  %60 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = sub nsw i32 %70, 1
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @kmalloc(i32 %73, i32 %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %54
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %209

81:                                               ; preds = %54
  %82 = load i32*, i32** %10, align 8
  %83 = bitcast i32* %82 to i8*
  store i8* %83, i8** %11, align 8
  %84 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %85 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %81
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %93, align 8
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %96 = bitcast %struct.e1000_hw* %95 to %struct.e1000_hw.0*
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = call i32 %94(%struct.e1000_hw.0* %96, i32 %97, i32 1, i32* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  br label %103

103:                                              ; preds = %89, %81
  %104 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %105 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %108 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %103
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.0*
  %124 = load i32, i32* %14, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = call i32 %121(%struct.e1000_hw.0* %123, i32 %124, i32 1, i32* %130)
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %116, %113, %103
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %146, %132
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @le16_to_cpus(i32* %144)
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %133

149:                                              ; preds = %133
  %150 = load i8*, i8** %11, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %153 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @memcpy(i8* %150, i32* %151, i32 %154)
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %174, %149
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %158, %159
  %161 = add nsw i32 %160, 1
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %156
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @cpu_to_le16(i32 %168)
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %16, align 4
  br label %156

177:                                              ; preds = %156
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %179 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %181, align 8
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %184 = bitcast %struct.e1000_hw* %183 to %struct.e1000_hw.1*
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 %182(%struct.e1000_hw.1* %184, i32 %185, i32 %189, i32* %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %177
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %196 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %198, align 8
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %201 = bitcast %struct.e1000_hw* %200 to %struct.e1000_hw.2*
  %202 = call i32 %199(%struct.e1000_hw.2* %201)
  br label %203

203:                                              ; preds = %194, %177
  %204 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %205 = call i32 @igb_set_fw_version(%struct.igb_adapter* %204)
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @kfree(i32* %206)
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %203, %78, %51, %35, %25
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @igb_set_fw_version(%struct.igb_adapter*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
