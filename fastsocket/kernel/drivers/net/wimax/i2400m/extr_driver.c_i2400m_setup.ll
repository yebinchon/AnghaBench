; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32*, i32*, %struct.wimax_dev, i32 }
%struct.wimax_dev = type { %struct.net_device*, i32, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"i2400m-%s:%s\00", align 1
@I2400M_BM_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot allocate USB command buffer\0A\00", align 1
@I2400M_BM_ACK_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot allocate USB ack buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"read mac addr: bootrom init failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot register i2400m network device: %d\0A\00", align 1
@i2400m_op_msg_from_user = common dso_local global i32 0, align 4
@i2400m_op_rfkill_sw_toggle = common dso_local global i32 0, align 4
@i2400m_op_reset = common dso_local global i32 0, align 4
@WIMAX_ST_UNINITIALIZED = common dso_local global i32 0, align 4
@i2400m_dev_attr_group = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot setup i2400m's sysfs: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"cannot setup i2400m's debugfs: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_setup(%struct.i2400m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wimax_dev*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = call %struct.device* @i2400m_dev(%struct.i2400m* %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 2
  store %struct.wimax_dev* %15, %struct.wimax_dev** %8, align 8
  %16 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %22 = call i32 @d_fnstart(i32 3, %struct.device* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21)
  %23 = load %struct.wimax_dev*, %struct.wimax_dev** %8, align 8
  %24 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i8* @dev_name(%struct.device* %31)
  %33 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %32)
  %34 = load i32, i32* @I2400M_BM_CMD_BUF_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %39 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %41 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %178

47:                                               ; preds = %2
  %48 = load i32, i32* @I2400M_BM_ACK_BUF_SIZE, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 %48, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %53 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %55 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %173

61:                                               ; preds = %47
  %62 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @i2400m_bootrom_init(%struct.i2400m* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %168

71:                                               ; preds = %61
  %72 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %73 = call i32 @i2400m_read_mac_addr(%struct.i2400m* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %167

77:                                               ; preds = %71
  %78 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %79 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @random_ether_addr(i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = call i32 @register_netdev(%struct.net_device* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %166

90:                                               ; preds = %77
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = call i32 @netif_carrier_off(%struct.net_device* %91)
  %93 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @i2400m_dev_start(%struct.i2400m* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %163

99:                                               ; preds = %90
  %100 = load i32, i32* @i2400m_op_msg_from_user, align 4
  %101 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %102 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @i2400m_op_rfkill_sw_toggle, align 4
  %105 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %106 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @i2400m_op_reset, align 4
  %109 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %110 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  %112 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %113 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %112, i32 0, i32 2
  %114 = load %struct.net_device*, %struct.net_device** %9, align 8
  %115 = call i32 @wimax_dev_add(%struct.wimax_dev* %113, %struct.net_device* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  br label %160

119:                                              ; preds = %99
  %120 = load %struct.wimax_dev*, %struct.wimax_dev** %8, align 8
  %121 = load i32, i32* @WIMAX_ST_UNINITIALIZED, align 4
  %122 = call i32 @wimax_state_change(%struct.wimax_dev* %120, i32 %121)
  %123 = load %struct.net_device*, %struct.net_device** %9, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @sysfs_create_group(i32* %125, i32* @i2400m_dev_attr_group)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  br label %156

133:                                              ; preds = %119
  %134 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %135 = call i32 @i2400m_debugfs_add(%struct.i2400m* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %7, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %148

142:                                              ; preds = %133
  %143 = load %struct.device*, %struct.device** %7, align 8
  %144 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @d_fnend(i32 3, %struct.device* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.i2400m* %144, i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %184

148:                                              ; preds = %138
  %149 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %150 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %150, i32 0, i32 0
  %152 = load %struct.net_device*, %struct.net_device** %151, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = call i32 @sysfs_remove_group(i32* %154, i32* @i2400m_dev_attr_group)
  br label %156

156:                                              ; preds = %148, %129
  %157 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %158 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %157, i32 0, i32 2
  %159 = call i32 @wimax_dev_rm(%struct.wimax_dev* %158)
  br label %160

160:                                              ; preds = %156, %118
  %161 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %162 = call i32 @i2400m_dev_stop(%struct.i2400m* %161)
  br label %163

163:                                              ; preds = %160, %98
  %164 = load %struct.net_device*, %struct.net_device** %9, align 8
  %165 = call i32 @unregister_netdev(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163, %86
  br label %167

167:                                              ; preds = %166, %76
  br label %168

168:                                              ; preds = %167, %67
  %169 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %170 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @kfree(i32* %171)
  br label %173

173:                                              ; preds = %168, %58
  %174 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %175 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @kfree(i32* %176)
  br label %178

178:                                              ; preds = %173, %44
  %179 = load %struct.device*, %struct.device** %7, align 8
  %180 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @d_fnend(i32 3, %struct.device* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.i2400m* %180, i32 %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %142
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2400m_bootrom_init(%struct.i2400m*, i32) #1

declare dso_local i32 @i2400m_read_mac_addr(%struct.i2400m*) #1

declare dso_local i32 @random_ether_addr(i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @i2400m_dev_start(%struct.i2400m*, i32) #1

declare dso_local i32 @wimax_dev_add(%struct.wimax_dev*, %struct.net_device*) #1

declare dso_local i32 @wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @i2400m_debugfs_add(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @wimax_dev_rm(%struct.wimax_dev*) #1

declare dso_local i32 @i2400m_dev_stop(%struct.i2400m*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
