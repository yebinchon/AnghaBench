; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_drv_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_drv_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.pcmcia_low_level = type { i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)*, i32 }
%struct.soc_pcmcia_socket = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, i32*, i32, %struct.TYPE_13__, %struct.TYPE_14__, i32, i32, %struct.pcmcia_low_level*, %struct.device* }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_15__, i32, i32, i64, i32*, i32, i32* }
%struct.TYPE_15__ = type { %struct.device* }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.skt_dev_info = type { i32, %struct.soc_pcmcia_socket* }

@soc_pcmcia_sockets_lock = common dso_local global i32 0, align 4
@soc_common_pcmcia_operations = common dso_local global i32 0, align 4
@soc_common_pcmcia_poll_event = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SOC_PCMCIA_POLL_PERIOD = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@soc_pcmcia_sockets = common dso_local global i32 0, align 4
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@pccard_static_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dev_attr_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_common_drv_pcmcia_probe(%struct.device* %0, %struct.pcmcia_low_level* %1, %struct.skt_dev_info* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pcmcia_low_level*, align 8
  %6 = alloca %struct.skt_dev_info*, align 8
  %7 = alloca %struct.soc_pcmcia_socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pcmcia_low_level* %1, %struct.pcmcia_low_level** %5, align 8
  store %struct.skt_dev_info* %2, %struct.skt_dev_info** %6, align 8
  %10 = call i32 @mutex_lock(i32* @soc_pcmcia_sockets_lock)
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %192, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.skt_dev_info*, %struct.skt_dev_info** %6, align 8
  %14 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %195

17:                                               ; preds = %11
  %18 = load %struct.skt_dev_info*, %struct.skt_dev_info** %6, align 8
  %19 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %18, i32 0, i32 1
  %20 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %20, i64 %22
  store %struct.soc_pcmcia_socket* %23, %struct.soc_pcmcia_socket** %7, align 8
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 9
  store i32* @soc_common_pcmcia_operations, i32** %26, align 8
  %27 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  %28 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %31 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %35 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store %struct.device* %33, %struct.device** %37, align 8
  %38 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %39 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %38, i32 0, i32 7
  %40 = call i32 @init_timer(%struct.TYPE_14__* %39)
  %41 = load i32, i32* @soc_common_pcmcia_poll_event, align 4
  %42 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %43 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %46 = ptrtoint %struct.soc_pcmcia_socket* %45 to i64
  %47 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %48 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* @SOC_PCMCIA_POLL_PERIOD, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %54 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %58 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %57, i32 0, i32 11
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  %60 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %61 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %60, i32 0, i32 10
  store %struct.pcmcia_low_level* %59, %struct.pcmcia_low_level** %61, align 8
  %62 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %63 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %62, i32 0, i32 0
  %64 = call i32 @request_resource(%struct.TYPE_12__* @iomem_resource, %struct.TYPE_12__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %17
  br label %249

68:                                               ; preds = %17
  %69 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %70 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %69, i32 0, i32 0
  %71 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %72 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %71, i32 0, i32 1
  %73 = call i32 @request_resource(%struct.TYPE_12__* %70, %struct.TYPE_12__* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %245

77:                                               ; preds = %68
  %78 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %79 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %78, i32 0, i32 0
  %80 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %81 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %80, i32 0, i32 2
  %82 = call i32 @request_resource(%struct.TYPE_12__* %79, %struct.TYPE_12__* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %241

86:                                               ; preds = %77
  %87 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %88 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %87, i32 0, i32 0
  %89 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %90 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %89, i32 0, i32 3
  %91 = call i32 @request_resource(%struct.TYPE_12__* %88, %struct.TYPE_12__* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %237

95:                                               ; preds = %86
  %96 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %97 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32* @ioremap(i32 %99, i32 65536)
  %101 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %102 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %104 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %233

110:                                              ; preds = %95
  %111 = call i64 @list_empty(i32* @soc_pcmcia_sockets)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (...) @soc_pcmcia_cpufreq_register()
  br label %115

115:                                              ; preds = %113, %110
  %116 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %117 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %116, i32 0, i32 5
  %118 = call i32 @list_add(i32* %117, i32* @soc_pcmcia_sockets)
  %119 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  %120 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %119, i32 0, i32 2
  %121 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %120, align 8
  %122 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %123 = call i32 %121(%struct.soc_pcmcia_socket* %122)
  %124 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  %125 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %124, i32 0, i32 0
  %126 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %125, align 8
  %127 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %128 = call i32 %126(%struct.soc_pcmcia_socket* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %115
  br label %225

132:                                              ; preds = %115
  %133 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %134 = load i32, i32* @SS_CAP_PCCARD, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %137 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %140 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 7
  store i32* @pccard_static_ops, i32** %141, align 8
  %142 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %143 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %147 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 5
  store i32 %145, i32* %148, align 4
  %149 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %150 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %153 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 8
  %155 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %156 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = ptrtoint i32* %157 to i64
  %159 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %160 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i64 %158, i64* %161, align 8
  %162 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %163 = call i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket* %162)
  %164 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %165 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %167 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %166, i32 0, i32 6
  %168 = call i32 @pcmcia_register_socket(%struct.TYPE_13__* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %132
  br label %218

172:                                              ; preds = %132
  %173 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %174 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @WARN_ON(i32 %179)
  %181 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %182 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %181, i32 0, i32 7
  %183 = call i32 @add_timer(%struct.TYPE_14__* %182)
  %184 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %185 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 3
  %187 = call i32 @device_create_file(%struct.TYPE_15__* %186, i32* @dev_attr_status)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %172
  br label %211

191:                                              ; preds = %172
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %11

195:                                              ; preds = %11
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load %struct.skt_dev_info*, %struct.skt_dev_info** %6, align 8
  %198 = call i32 @dev_set_drvdata(%struct.device* %196, %struct.skt_dev_info* %197)
  store i32 0, i32* %8, align 4
  br label %258

199:                                              ; No predecessors!
  br label %200

200:                                              ; preds = %252, %199
  %201 = load %struct.skt_dev_info*, %struct.skt_dev_info** %6, align 8
  %202 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %201, i32 0, i32 1
  %203 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %203, i64 %205
  store %struct.soc_pcmcia_socket* %206, %struct.soc_pcmcia_socket** %7, align 8
  %207 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %208 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = call i32 @device_remove_file(%struct.TYPE_15__* %209, i32* @dev_attr_status)
  br label %211

211:                                              ; preds = %200, %190
  %212 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %213 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %212, i32 0, i32 7
  %214 = call i32 @del_timer_sync(%struct.TYPE_14__* %213)
  %215 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %216 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %215, i32 0, i32 6
  %217 = call i32 @pcmcia_unregister_socket(%struct.TYPE_13__* %216)
  br label %218

218:                                              ; preds = %211, %171
  %219 = call i32 (...) @flush_scheduled_work()
  %220 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %5, align 8
  %221 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %220, i32 0, i32 1
  %222 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %221, align 8
  %223 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %224 = call i32 %222(%struct.soc_pcmcia_socket* %223)
  br label %225

225:                                              ; preds = %218, %131
  %226 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %227 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %226, i32 0, i32 5
  %228 = call i32 @list_del(i32* %227)
  %229 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %230 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @iounmap(i32* %231)
  br label %233

233:                                              ; preds = %225, %107
  %234 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %235 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %234, i32 0, i32 3
  %236 = call i32 @release_resource(%struct.TYPE_12__* %235)
  br label %237

237:                                              ; preds = %233, %94
  %238 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %239 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %238, i32 0, i32 2
  %240 = call i32 @release_resource(%struct.TYPE_12__* %239)
  br label %241

241:                                              ; preds = %237, %85
  %242 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %243 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %242, i32 0, i32 1
  %244 = call i32 @release_resource(%struct.TYPE_12__* %243)
  br label %245

245:                                              ; preds = %241, %76
  %246 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %7, align 8
  %247 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %246, i32 0, i32 0
  %248 = call i32 @release_resource(%struct.TYPE_12__* %247)
  br label %249

249:                                              ; preds = %245, %67
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %9, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %200, label %255

255:                                              ; preds = %252
  %256 = load %struct.skt_dev_info*, %struct.skt_dev_info** %6, align 8
  %257 = call i32 @kfree(%struct.skt_dev_info* %256)
  br label %258

258:                                              ; preds = %255, %195
  %259 = call i32 @mutex_unlock(i32* @soc_pcmcia_sockets_lock)
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @request_resource(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @soc_pcmcia_cpufreq_register(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @soc_common_pcmcia_skt_state(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_13__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_14__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.skt_dev_info*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_14__*) #1

declare dso_local i32 @pcmcia_unregister_socket(%struct.TYPE_13__*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.skt_dev_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
