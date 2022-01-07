; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_CHECKSUM_REG = common dso_local global i32 0, align 4
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
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
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
  br label %177

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = icmp ne i32 %31, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %177

44:                                               ; preds = %28
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
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
  br label %177

71:                                               ; preds = %44
  %72 = load i32*, i32** %10, align 8
  %73 = bitcast i32* %72 to i8*
  store i8* %73, i8** %11, align 8
  %74 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %75 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %80, i32 %81, i32 1, i32* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %87
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %101, i32 %102, i32 1, i32* %108)
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %100, %97, %87
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %124, %110
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  %116 = add nsw i32 %115, 1
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @le16_to_cpus(i32* %122)
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %111

127:                                              ; preds = %111
  %128 = load i8*, i8** %11, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %131 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(i8* %128, i32* %129, i32 %132)
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %152, %127
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub nsw i32 %136, %137
  %139 = add nsw i32 %138, 1
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %134
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @cpu_to_le16(i32 %146)
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %134

155:                                              ; preds = %134
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %158, %159
  %161 = add nsw i32 %160, 1
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @e1000_write_eeprom(%struct.e1000_hw* %156, i32 %157, i32 %161, i32* %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %155
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @EEPROM_CHECKSUM_REG, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %172 = call i32 @e1000_update_eeprom_checksum(%struct.e1000_hw* %171)
  br label %173

173:                                              ; preds = %170, %166, %155
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @kfree(i32* %174)
  %176 = load i32, i32* %15, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %68, %41, %25
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @e1000_write_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e1000_update_eeprom_checksum(%struct.e1000_hw*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
