; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.irb*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.qeth_cmd_buffer = type { i64, i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* }
%struct.qeth_channel = type opaque
%struct.qeth_channel.0 = type { i64, i64, %struct.qeth_cmd_buffer*, %struct.ccw_device*, i32 }
%struct.qeth_card = type { i32, %struct.qeth_channel.0, %struct.qeth_channel.0, %struct.qeth_channel.0 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@CH_STATE_STOPPED = common dso_local global i64 0, align 8
@SCSW_FCTL_HALT_FUNC = common dso_local global i32 0, align 4
@CH_STATE_HALTED = common dso_local global i64 0, align 8
@QETH_RCD_PARM = common dso_local global i64 0, align 8
@QETH_CLEAR_CHANNEL_PARM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"clrchpar\00", align 1
@QETH_HALT_CHANNEL_PARM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"hltchpar\00", align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"%s sense data available. cstat 0x%X dstat 0x%X\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"qeth: irb \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"qeth: sense data \00", align 1
@CH_STATE_DOWN = common dso_local global i64 0, align 8
@CH_STATE_RCD_DONE = common dso_local global i64 0, align 8
@BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@CH_STATE_UP = common dso_local global i64 0, align 8
@QETH_CMD_BUFFER_NO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @qeth_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_irq(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  %11 = alloca %struct.qeth_channel.0*, align 8
  %12 = alloca %struct.qeth_card*, align 8
  %13 = alloca %struct.qeth_cmd_buffer*, align 8
  %14 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %15 = load i32, i32* @TRACE, align 4
  %16 = call i32 @QETH_DBF_TEXT(i32 %15, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.irb*, %struct.irb** %6, align 8
  %20 = call i64 @__qeth_check_irb_error(%struct.ccw_device* %17, i64 %18, %struct.irb* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %276

23:                                               ; preds = %3
  %24 = load %struct.irb*, %struct.irb** %6, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.irb*, %struct.irb** %6, align 8
  %30 = getelementptr inbounds %struct.irb, %struct.irb* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %35 = call %struct.qeth_card* @CARD_FROM_CDEV(%struct.ccw_device* %34)
  store %struct.qeth_card* %35, %struct.qeth_card** %12, align 8
  %36 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %37 = icmp ne %struct.qeth_card* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %276

39:                                               ; preds = %23
  %40 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %41, i32 0, i32 3
  %43 = load %struct.ccw_device*, %struct.ccw_device** %42, align 8
  %44 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %45 = icmp eq %struct.ccw_device* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  store %struct.qeth_channel.0* %48, %struct.qeth_channel.0** %11, align 8
  %49 = load i32, i32* @TRACE, align 4
  %50 = call i32 @QETH_DBF_TEXT(i32 %49, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %69

51:                                               ; preds = %39
  %52 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %53, i32 0, i32 3
  %55 = load %struct.ccw_device*, %struct.ccw_device** %54, align 8
  %56 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %57 = icmp eq %struct.ccw_device* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 3
  store %struct.qeth_channel.0* %60, %struct.qeth_channel.0** %11, align 8
  %61 = load i32, i32* @TRACE, align 4
  %62 = call i32 @QETH_DBF_TEXT(i32 %61, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %68

63:                                               ; preds = %51
  %64 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 2
  store %struct.qeth_channel.0* %65, %struct.qeth_channel.0** %11, align 8
  %66 = load i32, i32* @TRACE, align 4
  %67 = call i32 @QETH_DBF_TEXT(i32 %66, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %71 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %70, i32 0, i32 4
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.irb*, %struct.irb** %6, align 8
  %74 = getelementptr inbounds %struct.irb, %struct.irb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i64, i64* @CH_STATE_STOPPED, align 8
  %83 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %84 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %69
  %86 = load %struct.irb*, %struct.irb** %6, align 8
  %87 = getelementptr inbounds %struct.irb, %struct.irb* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SCSW_FCTL_HALT_FUNC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i64, i64* @CH_STATE_HALTED, align 8
  %96 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %97 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %100 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 2
  %102 = icmp eq %struct.qeth_channel.0* %99, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @QETH_RCD_PARM, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %272

111:                                              ; preds = %106, %103, %98
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @QETH_CLEAR_CHANNEL_PARM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @TRACE, align 4
  %117 = call i32 @QETH_DBF_TEXT(i32 %116, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @QETH_HALT_CHANNEL_PARM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @TRACE, align 4
  %124 = call i32 @QETH_DBF_TEXT(i32 %123, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %190

138:                                              ; preds = %135, %130, %125
  %139 = load %struct.irb*, %struct.irb** %6, align 8
  %140 = getelementptr inbounds %struct.irb, %struct.irb* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %138
  %147 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %148 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %147, i32 0, i32 3
  %149 = load %struct.ccw_device*, %struct.ccw_device** %148, align 8
  %150 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %149, i32 0, i32 0
  %151 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %152 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %153 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %152, i32 0, i32 3
  %154 = load %struct.ccw_device*, %struct.ccw_device** %153, align 8
  %155 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %154, i32 0, i32 0
  %156 = call i32 @dev_name(i32* %155)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* @KERN_WARNING, align 4
  %161 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %162 = load %struct.irb*, %struct.irb** %6, align 8
  %163 = call i32 @print_hex_dump(i32 %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %161, i32 16, i32 1, %struct.irb* %162, i32 32, i32 1)
  %164 = load i32, i32* @KERN_WARNING, align 4
  %165 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %166 = load %struct.irb*, %struct.irb** %6, align 8
  %167 = getelementptr inbounds %struct.irb, %struct.irb* %166, i32 0, i32 0
  %168 = load %struct.irb*, %struct.irb** %167, align 8
  %169 = call i32 @print_hex_dump(i32 %164, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %165, i32 16, i32 1, %struct.irb* %168, i32 32, i32 1)
  br label %170

170:                                              ; preds = %146, %138
  %171 = load i64, i64* %5, align 8
  %172 = load i64, i64* @QETH_RCD_PARM, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i64, i64* @CH_STATE_DOWN, align 8
  %176 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %177 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  br label %272

178:                                              ; preds = %170
  %179 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %180 = load %struct.irb*, %struct.irb** %6, align 8
  %181 = call i32 @qeth_get_problem(%struct.ccw_device* %179, %struct.irb* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %186 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %185)
  %187 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %188 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %187)
  br label %272

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %135
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* @QETH_RCD_PARM, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i64, i64* @CH_STATE_RCD_DONE, align 8
  %196 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %197 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  br label %272

198:                                              ; preds = %190
  %199 = load i64, i64* %5, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i64, i64* %5, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i64 @__va(i32 %203)
  %205 = inttoptr i64 %204 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %205, %struct.qeth_cmd_buffer** %10, align 8
  %206 = load i64, i64* @BUF_STATE_PROCESSED, align 8
  %207 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %208 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %201, %198
  %210 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %211 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %212 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %211, i32 0, i32 2
  %213 = icmp eq %struct.qeth_channel.0* %210, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %276

215:                                              ; preds = %209
  %216 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %217 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %218 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %217, i32 0, i32 1
  %219 = icmp eq %struct.qeth_channel.0* %216, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %222 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @CH_STATE_UP, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %228 = call i32 @qeth_issue_next_read(%struct.qeth_card* %227)
  br label %229

229:                                              ; preds = %226, %220, %215
  %230 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %231 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %230, i32 0, i32 2
  %232 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %231, align 8
  store %struct.qeth_cmd_buffer* %232, %struct.qeth_cmd_buffer** %13, align 8
  %233 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %234 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %14, align 8
  br label %236

236:                                              ; preds = %263, %229
  %237 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %238 = load i64, i64* %14, align 8
  %239 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %237, i64 %238
  %240 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @BUF_STATE_PROCESSED, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %236
  %245 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %246 = load i64, i64* %14, align 8
  %247 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %245, i64 %246
  %248 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %247, i32 0, i32 1
  %249 = load i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %248, align 8
  %250 = icmp ne i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %249, null
  br i1 %250, label %251, label %263

251:                                              ; preds = %244
  %252 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %253 = load i64, i64* %14, align 8
  %254 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %252, i64 %253
  %255 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %254, i32 0, i32 1
  %256 = load i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, i32 (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %255, align 8
  %257 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %258 = bitcast %struct.qeth_channel.0* %257 to %struct.qeth_channel*
  %259 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %260 = load i64, i64* %14, align 8
  %261 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %259, i64 %260
  %262 = call i32 %256(%struct.qeth_channel* %258, %struct.qeth_cmd_buffer* %261)
  br label %263

263:                                              ; preds = %251, %244
  %264 = load i64, i64* %14, align 8
  %265 = add i64 %264, 1
  %266 = load i64, i64* @QETH_CMD_BUFFER_NO, align 8
  %267 = urem i64 %265, %266
  store i64 %267, i64* %14, align 8
  br label %236

268:                                              ; preds = %236
  %269 = load i64, i64* %14, align 8
  %270 = load %struct.qeth_channel.0*, %struct.qeth_channel.0** %11, align 8
  %271 = getelementptr inbounds %struct.qeth_channel.0, %struct.qeth_channel.0* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %268, %194, %184, %174, %110
  %273 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  %274 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %273, i32 0, i32 0
  %275 = call i32 @wake_up(i32* %274)
  br label %276

276:                                              ; preds = %272, %214, %38, %22
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @__qeth_check_irb_error(%struct.ccw_device*, i64, %struct.irb*) #1

declare dso_local %struct.qeth_card* @CARD_FROM_CDEV(%struct.ccw_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.irb*, i32, i32) #1

declare dso_local i32 @qeth_get_problem(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @qeth_issue_next_read(%struct.qeth_card*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
