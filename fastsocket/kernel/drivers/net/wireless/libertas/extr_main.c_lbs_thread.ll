; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i64, i64, i64, i64, i64, i32, i32 (%struct.lbs_private*, i32, i32, i64)*, i64, i32, i32, i32, i64, i64, i8*, i32, i32, %struct.cmd_ctrl_node*, i32, i32, i64, i32 (%struct.lbs_private*)*, i64*, i32*, i64, i32, i8* }
%struct.cmd_ctrl_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LBS_DEB_THREAD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"1: currenttxskb %p, dnld_sent %d\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"sleeping, connect_status %d, psmode %d, psstate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"2: currenttxskb %p, dnld_send %d\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"3: currenttxskb %p, dnld_sent %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"break from main thread\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"adapter removed; waiting to die...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"4: currenttxskb %p, dnld_sent %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Excessive timeouts submitting command 0x%04x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DNLD_RES_RECEIVED = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"requeueing command 0x%04x due to timeout (#%d)\0A\00", align 1
@PS_STATE_PRE_SLEEP = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [54 x i8] c"pre-sleep, currenttxskb %p, dnld_sent %d, cur_cmd %p\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [47 x i8] c"ignore PS_SleepConfirm in non-connected state\0A\00", align 1
@MVMS_DAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"host_to_card failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lbs_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmd_ctrl_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %4, align 8
  %16 = load i32, i32* @LBS_DEB_THREAD, align 4
  %17 = call i32 @lbs_deb_enter(i32 %16)
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @init_waitqueue_entry(i32* %5, i32 %18)
  br label %20

20:                                               ; preds = %469, %376, %322, %168, %1
  %21 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %22 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 13
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %23, i8* %26)
  %28 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 24
  %30 = call i32 @add_wait_queue(i32* %29, i32* %5)
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @set_current_state(i32 %31)
  %33 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 10
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = call i64 (...) @kthread_should_stop()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %117

39:                                               ; preds = %20
  %40 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 23
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %116

45:                                               ; preds = %39
  %46 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PS_STATE_SLEEP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %115

52:                                               ; preds = %45
  %53 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 19
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %114

58:                                               ; preds = %52
  %59 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 17
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %113

64:                                               ; preds = %58
  %65 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 13
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %112

70:                                               ; preds = %64
  %71 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %111

76:                                               ; preds = %70
  %77 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 21
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %110

87:                                               ; preds = %76
  %88 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 16
  %90 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %89, align 8
  %91 = icmp ne %struct.cmd_ctrl_node* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %6, align 4
  br label %109

93:                                               ; preds = %87
  %94 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 15
  %96 = call i32 @list_empty(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %108

99:                                               ; preds = %93
  %100 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @__kfifo_len(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %107

106:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %98
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %86
  br label %111

111:                                              ; preds = %110, %75
  br label %112

112:                                              ; preds = %111, %69
  br label %113

113:                                              ; preds = %112, %63
  br label %114

114:                                              ; preds = %113, %57
  br label %115

115:                                              ; preds = %114, %51
  br label %116

116:                                              ; preds = %115, %44
  br label %117

117:                                              ; preds = %116, %38
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %122 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %125 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %124, i32 0, i32 25
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %128 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %123, i8* %126, i64 %129)
  %131 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %132 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %131, i32 0, i32 10
  %133 = call i32 @spin_unlock_irq(i32* %132)
  %134 = call i32 (...) @schedule()
  br label %139

135:                                              ; preds = %117
  %136 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %137 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %136, i32 0, i32 10
  %138 = call i32 @spin_unlock_irq(i32* %137)
  br label %139

139:                                              ; preds = %135, %120
  %140 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %141 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %144 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %143, i32 0, i32 13
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %142, i8* %145)
  %147 = load i32, i32* @TASK_RUNNING, align 4
  %148 = call i32 @set_current_state(i32 %147)
  %149 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %150 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %149, i32 0, i32 24
  %151 = call i32 @remove_wait_queue(i32* %150, i32* %5)
  %152 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %153 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %156 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %155, i32 0, i32 13
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %154, i8* %157)
  %159 = call i64 (...) @kthread_should_stop()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %139
  %162 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %473

163:                                              ; preds = %139
  %164 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %165 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %164, i32 0, i32 23
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %20

170:                                              ; preds = %163
  %171 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %172 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %175 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %174, i32 0, i32 13
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %173, i8* %176)
  %178 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %179 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %178, i32 0, i32 10
  %180 = call i32 @spin_lock_irq(i32* %179)
  %181 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %182 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %7, align 8
  %184 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %185 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %184, i32 0, i32 21
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %170
  %192 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %193 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %192, i32 0, i32 10
  %194 = call i32 @spin_unlock_irq(i32* %193)
  %195 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %196 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %197 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %196, i32 0, i32 22
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %203 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %202, i32 0, i32 21
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* %7, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @lbs_process_command_response(%struct.lbs_private* %195, i32 %201, i64 %207)
  %209 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %210 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %209, i32 0, i32 10
  %211 = call i32 @spin_lock_irq(i32* %210)
  %212 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %213 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %212, i32 0, i32 21
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* %7, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  store i64 0, i64* %216, align 8
  br label %217

217:                                              ; preds = %191, %170
  %218 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %219 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %218, i32 0, i32 10
  %220 = call i32 @spin_unlock_irq(i32* %219)
  %221 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %222 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %221, i32 0, i32 19
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %287

225:                                              ; preds = %217
  %226 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %227 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %226, i32 0, i32 16
  %228 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %227, align 8
  %229 = icmp ne %struct.cmd_ctrl_node* %228, null
  br i1 %229, label %230, label %287

230:                                              ; preds = %225
  %231 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %232 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %231, i32 0, i32 16
  %233 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %232, align 8
  store %struct.cmd_ctrl_node* %233, %struct.cmd_ctrl_node** %8, align 8
  %234 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %235 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = icmp sgt i32 %237, 3
  br i1 %238, label %239, label %265

239:                                              ; preds = %230
  %240 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %241 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le16_to_cpu(i32 %244)
  %246 = call i32 (i8*, i32, ...) @lbs_pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %245)
  %247 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %248 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %249 = load i32, i32* @ETIMEDOUT, align 4
  %250 = sub nsw i32 0, %249
  %251 = call i32 @lbs_complete_command(%struct.lbs_private* %247, %struct.cmd_ctrl_node* %248, i32 %250)
  %252 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %253 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %252, i32 0, i32 5
  store i32 0, i32* %253, align 8
  %254 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %255 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %254, i32 0, i32 20
  %256 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %255, align 8
  %257 = icmp ne i32 (%struct.lbs_private*)* %256, null
  br i1 %257, label %258, label %264

258:                                              ; preds = %239
  %259 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %260 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %259, i32 0, i32 20
  %261 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %260, align 8
  %262 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %263 = call i32 %261(%struct.lbs_private* %262)
  br label %264

264:                                              ; preds = %258, %239
  br label %286

265:                                              ; preds = %230
  %266 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %267 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %266, i32 0, i32 16
  store %struct.cmd_ctrl_node* null, %struct.cmd_ctrl_node** %267, align 8
  %268 = load i8*, i8** @DNLD_RES_RECEIVED, align 8
  %269 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %270 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %269, i32 0, i32 13
  store i8* %268, i8** %270, align 8
  %271 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %272 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %271, i32 0, i32 1
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @le16_to_cpu(i32 %275)
  %277 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %278 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i8*, i32, ...) @lbs_pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %276, i32 %279)
  %281 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %8, align 8
  %282 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %281, i32 0, i32 0
  %283 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %284 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %283, i32 0, i32 15
  %285 = call i32 @list_add(i32* %282, i32* %284)
  br label %286

286:                                              ; preds = %265, %264
  br label %287

287:                                              ; preds = %286, %225, %217
  %288 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %289 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %288, i32 0, i32 19
  store i64 0, i64* %289, align 8
  %290 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %291 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %290, i32 0, i32 10
  %292 = call i32 @spin_lock_irq(i32* %291)
  br label %293

293:                                              ; preds = %299, %287
  %294 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %295 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %294, i32 0, i32 18
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @__kfifo_len(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %314

299:                                              ; preds = %293
  %300 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %301 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %300, i32 0, i32 18
  %302 = load i32, i32* %301, align 4
  %303 = bitcast i32* %9 to i8*
  %304 = call i32 @__kfifo_get(i32 %302, i8* %303, i32 4)
  %305 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %306 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %305, i32 0, i32 10
  %307 = call i32 @spin_unlock_irq(i32* %306)
  %308 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @lbs_process_event(%struct.lbs_private* %308, i32 %309)
  %311 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %312 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %311, i32 0, i32 10
  %313 = call i32 @spin_lock_irq(i32* %312)
  br label %293

314:                                              ; preds = %293
  %315 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %316 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %315, i32 0, i32 10
  %317 = call i32 @spin_unlock_irq(i32* %316)
  %318 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %319 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %318, i32 0, i32 17
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %314
  br label %20

323:                                              ; preds = %314
  %324 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %325 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %364

329:                                              ; preds = %323
  %330 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %331 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %330, i32 0, i32 13
  %332 = load i8*, i8** %331, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %364, label %334

334:                                              ; preds = %329
  %335 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %336 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %335, i32 0, i32 16
  %337 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %336, align 8
  %338 = icmp ne %struct.cmd_ctrl_node* %337, null
  br i1 %338, label %364, label %339

339:                                              ; preds = %334
  %340 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %341 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @LBS_CONNECTED, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %358

345:                                              ; preds = %339
  %346 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %347 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %350 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %349, i32 0, i32 13
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %353 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %352, i32 0, i32 16
  %354 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %353, align 8
  %355 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %348, i8* %351, %struct.cmd_ctrl_node* %354)
  %356 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %357 = call i32 @lbs_ps_confirm_sleep(%struct.lbs_private* %356)
  br label %363

358:                                              ; preds = %339
  %359 = load i64, i64* @PS_STATE_AWAKE, align 8
  %360 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %361 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %360, i32 0, i32 1
  store i64 %359, i64* %361, align 8
  %362 = call i32 @lbs_pr_alert(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  br label %363

363:                                              ; preds = %358, %345
  br label %364

364:                                              ; preds = %363, %334, %329, %323
  %365 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %366 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @PS_STATE_SLEEP, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %376, label %370

370:                                              ; preds = %364
  %371 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %372 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %370, %364
  br label %20

377:                                              ; preds = %370
  %378 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %379 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %378, i32 0, i32 13
  %380 = load i8*, i8** %379, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %390, label %382

382:                                              ; preds = %377
  %383 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %384 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %383, i32 0, i32 16
  %385 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %384, align 8
  %386 = icmp ne %struct.cmd_ctrl_node* %385, null
  br i1 %386, label %390, label %387

387:                                              ; preds = %382
  %388 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %389 = call i32 @lbs_execute_next_command(%struct.lbs_private* %388)
  br label %390

390:                                              ; preds = %387, %382, %377
  %391 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %392 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %391, i32 0, i32 15
  %393 = call i32 @list_empty(i32* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %390
  %396 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %397 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %396, i32 0, i32 8
  %398 = call i32 @wake_up_all(i32* %397)
  br label %399

399:                                              ; preds = %395, %390
  %400 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %401 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %400, i32 0, i32 10
  %402 = call i32 @spin_lock_irq(i32* %401)
  %403 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %404 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %403, i32 0, i32 13
  %405 = load i8*, i8** %404, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %469, label %407

407:                                              ; preds = %399
  %408 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %409 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp sgt i64 %410, 0
  br i1 %411, label %412, label %469

412:                                              ; preds = %407
  %413 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %414 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %413, i32 0, i32 6
  %415 = load i32 (%struct.lbs_private*, i32, i32, i64)*, i32 (%struct.lbs_private*, i32, i32, i64)** %414, align 8
  %416 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %417 = load i32, i32* @MVMS_DAT, align 4
  %418 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %419 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %418, i32 0, i32 14
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %422 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = call i32 %415(%struct.lbs_private* %416, i32 %417, i32 %420, i64 %423)
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %412
  %428 = load i32, i32* %10, align 4
  %429 = call i32 @lbs_deb_tx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %428)
  %430 = load i8*, i8** @DNLD_RES_RECEIVED, align 8
  %431 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %432 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %431, i32 0, i32 13
  store i8* %430, i8** %432, align 8
  br label %433

433:                                              ; preds = %427, %412
  %434 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %435 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %434, i32 0, i32 2
  store i64 0, i64* %435, align 8
  %436 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %437 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %468, label %440

440:                                              ; preds = %433
  %441 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %442 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %441, i32 0, i32 4
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @LBS_CONNECTED, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %451

446:                                              ; preds = %440
  %447 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %448 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %447, i32 0, i32 12
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @netif_wake_queue(i64 %449)
  br label %451

451:                                              ; preds = %446, %440
  %452 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %453 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %452, i32 0, i32 11
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %467

456:                                              ; preds = %451
  %457 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %458 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %457, i32 0, i32 7
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @LBS_CONNECTED, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %456
  %463 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %464 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %463, i32 0, i32 11
  %465 = load i64, i64* %464, align 8
  %466 = call i32 @netif_wake_queue(i64 %465)
  br label %467

467:                                              ; preds = %462, %456, %451
  br label %468

468:                                              ; preds = %467, %433
  br label %469

469:                                              ; preds = %468, %407, %399
  %470 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %471 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %470, i32 0, i32 10
  %472 = call i32 @spin_unlock_irq(i32* %471)
  br label %20

473:                                              ; preds = %161
  %474 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %475 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %474, i32 0, i32 9
  %476 = call i32 @del_timer(i32* %475)
  %477 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %478 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %477, i32 0, i32 8
  %479 = call i32 @wake_up_all(i32* %478)
  %480 = load i32, i32* @LBS_DEB_THREAD, align 4
  %481 = call i32 @lbs_deb_leave(i32 %480)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @lbs_deb_thread(i8*, ...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @__kfifo_len(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @lbs_process_command_response(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_pr_info(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_complete_command(%struct.lbs_private*, %struct.cmd_ctrl_node*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @lbs_process_event(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_ps_confirm_sleep(%struct.lbs_private*) #1

declare dso_local i32 @lbs_pr_alert(i8*) #1

declare dso_local i32 @lbs_execute_next_command(%struct.lbs_private*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @lbs_deb_tx(i8*, i32) #1

declare dso_local i32 @netif_wake_queue(i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
