; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_handle_linkevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_handle_linkevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_fw_msg = type { i32* }

@LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unsupported cable: OUI 0x%x, length %d\0A\00", align 1
@LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported cable length %d\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i32 0, align 4
@QLCNIC_ELB_MODE = common dso_local global i32 0, align 4
@QLCNIC_LINKEVENT = common dso_local global i32 0, align 4
@LINKEVENT_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlcnic_fw_msg*)* @qlcnic_handle_linkevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_handle_linkevent(%struct.qlcnic_adapter* %0, %struct.qlcnic_fw_msg* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_fw_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_fw_msg* %1, %struct.qlcnic_fw_msg** %4, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %13, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %27 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 32
  %32 = and i32 %31, 65535
  store i32 %32, i32* %6, align 4
  %33 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 48
  %39 = and i32 %38, 65535
  store i32 %39, i32* %7, align 4
  %40 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %8, align 4
  %46 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %47 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  store i32 %52, i32* %10, align 4
  %53 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %54 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 24
  %59 = and i32 %58, 255
  store i32 %59, i32* %11, align 4
  %60 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 32
  %66 = and i32 %65, 3
  store i32 %66, i32* %12, align 4
  %67 = load %struct.qlcnic_fw_msg*, %struct.qlcnic_fw_msg** %4, align 8
  %68 = getelementptr inbounds %struct.qlcnic_fw_msg, %struct.qlcnic_fw_msg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 255
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %2
  %78 = load %struct.net_device*, %struct.net_device** %13, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %93

83:                                               ; preds = %2
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @LINKEVENT_MODULE_TWINAX_UNSUPPORTED_CABLELEN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.net_device*, %struct.net_device** %13, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  br label %93

93:                                               ; preds = %92, %77
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @QLCNIC_ILB_MODE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @QLCNIC_ELB_MODE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @QLCNIC_LINKEVENT, align 4
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %104, %100, %93
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @qlcnic_advert_link_change(%struct.qlcnic_adapter* %113, i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @LINKEVENT_FULL_DUPLEX, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @DUPLEX_FULL, align 4
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store i32 %120, i32* %124, align 4
  br label %131

125:                                              ; preds = %112
  %126 = load i32, i32* @DUPLEX_HALF, align 4
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %119
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %131
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  br label %161

150:                                              ; preds = %131
  %151 = load i32, i32* @SPEED_UNKNOWN, align 4
  %152 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %157 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 4
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %150, %144
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @qlcnic_advert_link_change(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
