; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ixgb_adapter = type { %struct.ixgb_hw }
%struct.ixgb_hw = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_CHECKSUM_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgb_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgb_adapter*, align 8
  %9 = alloca %struct.ixgb_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.ixgb_adapter* %17, %struct.ixgb_adapter** %8, align 8
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %18, i32 0, i32 0
  store %struct.ixgb_hw* %19, %struct.ixgb_hw** %9, align 8
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %173

27:                                               ; preds = %3
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %32 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %35 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  %39 = icmp ne i32 %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %173

43:                                               ; preds = %27
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @ixgb_get_eeprom_len(%struct.net_device* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %47 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = icmp sgt i32 %48, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %173

60:                                               ; preds = %43
  %61 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %62 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %73 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %77 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %60
  %79 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %80 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %84 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %89, 1
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32* @kmalloc(i32 %92, i32 %93)
  store i32* %94, i32** %10, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %78
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %173

100:                                              ; preds = %78
  %101 = load i32*, i32** %10, align 8
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %11, align 8
  %103 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %104 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ixgb_read_eeprom(%struct.ixgb_hw* %109, i32 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  br label %116

116:                                              ; preds = %108, %100
  %117 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %118 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %121 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @ixgb_read_eeprom(%struct.ixgb_hw* %127, i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %126, %116
  %137 = load i8*, i8** %11, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %140 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memcpy(i8* %137, i32* %138, i32 %141)
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %160, %136
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sle i32 %144, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %143
  %150 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ixgb_write_eeprom(%struct.ixgb_hw* %150, i32 %153, i32 %158)
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %143

163:                                              ; preds = %143
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @EEPROM_CHECKSUM_REG, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.ixgb_hw*, %struct.ixgb_hw** %9, align 8
  %169 = call i32 @ixgb_update_eeprom_checksum(%struct.ixgb_hw* %168)
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @kfree(i32* %171)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %170, %97, %57, %40, %24
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgb_get_eeprom_len(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ixgb_read_eeprom(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ixgb_write_eeprom(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @ixgb_update_eeprom_checksum(%struct.ixgb_hw*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
