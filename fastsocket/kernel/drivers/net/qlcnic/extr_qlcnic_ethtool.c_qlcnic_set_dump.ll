; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"FW dump not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FW dump not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Previous dump not cleared, not forcing dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Forcing a FW dump\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Disabling FW dump\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Enabling FW dump\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Forcing a FW reset\0A\00", align 1
@QLCNIC_FW_RESET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_FAILED = common dso_local global i32 0, align 4
@QLCNIC_DEV_BADBAD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Device in FAILED state\0A\00", align 1
@qlcnic_fw_dump_level = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"Driver mask changed to: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Invalid dump level: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qlcnic_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_fw_dump*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %7, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %15, %struct.qlcnic_fw_dump** %8, align 8
  %16 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %119 [
    i32 131, label %19
    i32 133, label %53
    i32 132, label %69
    i32 130, label %90
    i32 128, label %104
    i32 129, label %104
  ]

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %21 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %173

29:                                               ; preds = %19
  %30 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %31 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %173

37:                                               ; preds = %29
  %38 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %39 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %173

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %49 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %48, i32 %51)
  br label %172

53:                                               ; preds = %2
  %54 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %55 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %60 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %67 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %58, %53
  store i32 0, i32* %3, align 4
  br label %173

69:                                               ; preds = %2
  %70 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %71 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %173

79:                                               ; preds = %69
  %80 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %81 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %88 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  store i32 0, i32* %3, align 4
  br label %173

90:                                               ; preds = %2
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %94 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %93, i32 %96)
  %98 = load i32, i32* @QLCNIC_FW_RESET_OWNER, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %101 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  store i32 0, i32* %3, align 4
  br label %173

104:                                              ; preds = %2, %2
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %106 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %107 = call i32 @QLCRD32(%struct.qlcnic_adapter* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @QLCNIC_DEV_FAILED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @QLCNIC_DEV_BADBAD, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %104
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %111
  store i32 0, i32* %3, align 4
  br label %173

119:                                              ; preds = %2
  %120 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %121 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i32 @netdev_err(%struct.net_device* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* @ENOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %173

129:                                              ; preds = %119
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %161, %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32*, i32** @qlcnic_fw_dump_level, align 8
  %133 = call i32 @ARRAY_SIZE(i32* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %130
  %136 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @qlcnic_fw_dump_level, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %138, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %135
  %146 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %150 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 4
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %155 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  store i32 0, i32* %3, align 4
  br label %173

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %130

164:                                              ; preds = %130
  %165 = load %struct.net_device*, %struct.net_device** %4, align 8
  %166 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %173

172:                                              ; preds = %45
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %164, %145, %124, %118, %90, %89, %74, %68, %42, %34, %24
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
