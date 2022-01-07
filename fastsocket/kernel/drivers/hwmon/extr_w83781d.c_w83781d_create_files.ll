; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_49__ }
%struct.TYPE_45__ = type { %struct.TYPE_49__ }
%struct.TYPE_48__ = type { %struct.TYPE_49__ }
%struct.TYPE_47__ = type { %struct.TYPE_49__ }
%struct.TYPE_41__ = type { %struct.TYPE_49__ }
%struct.TYPE_38__ = type { %struct.TYPE_49__ }
%struct.TYPE_39__ = type { %struct.TYPE_49__ }
%struct.TYPE_43__ = type { %struct.TYPE_49__ }
%struct.TYPE_42__ = type { %struct.TYPE_49__ }
%struct.TYPE_35__ = type { %struct.TYPE_49__ }
%struct.TYPE_33__ = type { %struct.TYPE_49__ }
%struct.TYPE_34__ = type { %struct.TYPE_49__ }
%struct.TYPE_37__ = type { %struct.TYPE_49__ }
%struct.TYPE_36__ = type { %struct.TYPE_49__ }
%struct.TYPE_52__ = type { %struct.TYPE_49__ }
%struct.TYPE_51__ = type { %struct.TYPE_49__ }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_54__ = type { %struct.TYPE_49__ }
%struct.TYPE_53__ = type { %struct.TYPE_49__ }
%struct.TYPE_32__ = type { %struct.TYPE_49__ }
%struct.TYPE_31__ = type { %struct.TYPE_49__ }
%struct.TYPE_30__ = type { %struct.TYPE_49__ }
%struct.TYPE_57__ = type { %struct.TYPE_49__ }
%struct.TYPE_56__ = type { %struct.TYPE_49__ }
%struct.TYPE_55__ = type { %struct.TYPE_49__ }
%struct.TYPE_40__ = type { %struct.TYPE_49__ }
%struct.device = type { i32 }

@w83781d_group = common dso_local global i32 0, align 4
@w83783s = common dso_local global i32 0, align 4
@sensor_dev_attr_in1_input = common dso_local global %struct.TYPE_46__ zeroinitializer, align 4
@sensor_dev_attr_in1_min = common dso_local global %struct.TYPE_44__ zeroinitializer, align 4
@sensor_dev_attr_in1_max = common dso_local global %struct.TYPE_45__ zeroinitializer, align 4
@sensor_dev_attr_in1_alarm = common dso_local global %struct.TYPE_48__ zeroinitializer, align 4
@sensor_dev_attr_in1_beep = common dso_local global %struct.TYPE_47__ zeroinitializer, align 4
@as99127f = common dso_local global i32 0, align 4
@w83781d = common dso_local global i32 0, align 4
@sensor_dev_attr_in7_input = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@sensor_dev_attr_in7_min = common dso_local global %struct.TYPE_38__ zeroinitializer, align 4
@sensor_dev_attr_in7_max = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@sensor_dev_attr_in7_alarm = common dso_local global %struct.TYPE_43__ zeroinitializer, align 4
@sensor_dev_attr_in7_beep = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@sensor_dev_attr_in8_input = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@sensor_dev_attr_in8_min = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@sensor_dev_attr_in8_max = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4
@sensor_dev_attr_in8_alarm = common dso_local global %struct.TYPE_37__ zeroinitializer, align 4
@sensor_dev_attr_in8_beep = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@sensor_dev_attr_temp3_input = common dso_local global %struct.TYPE_52__ zeroinitializer, align 4
@sensor_dev_attr_temp3_max = common dso_local global %struct.TYPE_51__ zeroinitializer, align 4
@sensor_dev_attr_temp3_max_hyst = common dso_local global %struct.TYPE_50__ zeroinitializer, align 4
@sensor_dev_attr_temp3_alarm = common dso_local global %struct.TYPE_54__ zeroinitializer, align 4
@sensor_dev_attr_temp3_beep = common dso_local global %struct.TYPE_53__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sensor_dev_attr_pwm1 = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@sensor_dev_attr_pwm2 = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@dev_attr_pwm2_enable = common dso_local global %struct.TYPE_49__ zeroinitializer, align 4
@w83782d = common dso_local global i32 0, align 4
@sensor_dev_attr_pwm3 = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@sensor_dev_attr_pwm4 = common dso_local global %struct.TYPE_57__ zeroinitializer, align 4
@sensor_dev_attr_temp1_type = common dso_local global %struct.TYPE_56__ zeroinitializer, align 4
@sensor_dev_attr_temp2_type = common dso_local global %struct.TYPE_55__ zeroinitializer, align 4
@sensor_dev_attr_temp3_type = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @w83781d_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_create_files(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = call i32 @sysfs_create_group(i32* %10, i32* @w83781d_group)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %212

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @w83783s, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @device_create_file(%struct.device* %20, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @sensor_dev_attr_in1_input, i32 0, i32 0))
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @device_create_file(%struct.device* %24, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @sensor_dev_attr_in1_min, i32 0, i32 0))
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @device_create_file(%struct.device* %28, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @sensor_dev_attr_in1_max, i32 0, i32 0))
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @device_create_file(%struct.device* %32, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @sensor_dev_attr_in1_alarm, i32 0, i32 0))
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @device_create_file(%struct.device* %36, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @sensor_dev_attr_in1_beep, i32 0, i32 0))
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23, %19
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %212

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @as99127f, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @w83781d, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @w83783s, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @device_create_file(%struct.device* %55, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @sensor_dev_attr_in7_input, i32 0, i32 0))
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @device_create_file(%struct.device* %59, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sensor_dev_attr_in7_min, i32 0, i32 0))
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @device_create_file(%struct.device* %63, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @sensor_dev_attr_in7_max, i32 0, i32 0))
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @device_create_file(%struct.device* %67, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @sensor_dev_attr_in7_alarm, i32 0, i32 0))
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %66
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @device_create_file(%struct.device* %71, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @sensor_dev_attr_in7_beep, i32 0, i32 0))
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %70
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @device_create_file(%struct.device* %75, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @sensor_dev_attr_in8_input, i32 0, i32 0))
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @device_create_file(%struct.device* %79, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @sensor_dev_attr_in8_min, i32 0, i32 0))
  store i32 %80, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 @device_create_file(%struct.device* %83, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @sensor_dev_attr_in8_max, i32 0, i32 0))
  store i32 %84, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @device_create_file(%struct.device* %87, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @sensor_dev_attr_in8_alarm, i32 0, i32 0))
  store i32 %88, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @device_create_file(%struct.device* %91, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @sensor_dev_attr_in8_beep, i32 0, i32 0))
  store i32 %92, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %86, %82, %78, %74, %70, %66, %62, %58, %54
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %212

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %50, %46, %42
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @w83783s, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %140

101:                                              ; preds = %97
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @device_create_file(%struct.device* %102, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_52__, %struct.TYPE_52__* @sensor_dev_attr_temp3_input, i32 0, i32 0))
  store i32 %103, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %101
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = call i32 @device_create_file(%struct.device* %106, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_51__, %struct.TYPE_51__* @sensor_dev_attr_temp3_max, i32 0, i32 0))
  store i32 %107, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @device_create_file(%struct.device* %110, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_50__, %struct.TYPE_50__* @sensor_dev_attr_temp3_max_hyst, i32 0, i32 0))
  store i32 %111, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @device_create_file(%struct.device* %114, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @sensor_dev_attr_temp3_alarm, i32 0, i32 0))
  store i32 %115, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @device_create_file(%struct.device* %118, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_53__, %struct.TYPE_53__* @sensor_dev_attr_temp3_beep, i32 0, i32 0))
  store i32 %119, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117, %113, %109, %105, %101
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %212

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @w83781d, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = getelementptr inbounds %struct.device, %struct.device* %128, i32 0, i32 0
  %130 = load i32, i32* @S_IRUGO, align 4
  %131 = load i32, i32* @S_IWUSR, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @sysfs_chmod_file(i32* %129, i32* getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @sensor_dev_attr_temp3_alarm, i32 0, i32 0, i32 0), i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %4, align 4
  br label %212

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %97
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @w83781d, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @as99127f, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @device_create_file(%struct.device* %149, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @sensor_dev_attr_pwm1, i32 0, i32 0))
  store i32 %150, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = call i32 @device_create_file(%struct.device* %153, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @sensor_dev_attr_pwm2, i32 0, i32 0))
  store i32 %154, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = call i32 @device_create_file(%struct.device* %157, %struct.TYPE_49__* @dev_attr_pwm2_enable)
  store i32 %158, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156, %152, %148
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %4, align 4
  br label %212

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %144, %140
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @w83782d, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %167
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = call i32 @device_create_file(%struct.device* %171, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @sensor_dev_attr_pwm3, i32 0, i32 0))
  store i32 %172, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = call i32 @device_create_file(%struct.device* %175, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_57__, %struct.TYPE_57__* @sensor_dev_attr_pwm4, i32 0, i32 0))
  store i32 %176, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174, %170
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %4, align 4
  br label %212

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %167, %163
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @as99127f, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @w83781d, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load %struct.device*, %struct.device** %5, align 8
  %191 = call i32 @device_create_file(%struct.device* %190, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_56__, %struct.TYPE_56__* @sensor_dev_attr_temp1_type, i32 0, i32 0))
  store i32 %191, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = call i32 @device_create_file(%struct.device* %194, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_55__, %struct.TYPE_55__* @sensor_dev_attr_temp2_type, i32 0, i32 0))
  store i32 %195, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %4, align 4
  br label %212

199:                                              ; preds = %193
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @w83783s, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.device*, %struct.device** %5, align 8
  %205 = call i32 @device_create_file(%struct.device* %204, %struct.TYPE_49__* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @sensor_dev_attr_temp3_type, i32 0, i32 0))
  store i32 %205, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %4, align 4
  br label %212

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %199
  br label %211

211:                                              ; preds = %210, %185, %181
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %207, %197, %178, %160, %136, %121, %94, %39, %13
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_49__*) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
