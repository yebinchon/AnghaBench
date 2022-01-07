; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_setup_ch_structures_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_setup_ch_structures_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.xpc_partition = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32*, i32, i32*, i32, i32*, i32, i32*, %struct.timer_list, i32, i32*, i64, i64, i64, i64 }
%struct.timer_list = type { void (i64)*, i64, i64 }

@XPC_GP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"can't get memory for local get/put values\0A\00", align 1
@xpNoMemory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"can't get memory for remote get/put values\0A\00", align 1
@XPC_OPENCLOSE_ARGS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"can't get memory for local connect args\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"xpc%02d\00", align 1
@SGI_XPC_NOTIFY = common dso_local global i32 0, align 4
@xpc_handle_notify_IRQ_sn2 = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"can't register NOTIFY IRQ handler, errno=%d\0A\00", align 1
@xpLackOfResources = common dso_local global i32 0, align 4
@xpc_check_for_dropped_notify_IRQ_sn2 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL = common dso_local global i64 0, align 8
@xpc_vars_part_sn2 = common dso_local global %struct.TYPE_8__* null, align 8
@XPC_VP_MAGIC1_SN2 = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_setup_ch_structures_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_ch_structures_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_partition_sn2*, align 8
  %5 = alloca %struct.xpc_channel_sn2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timer_list*, align 8
  %11 = alloca i16, align 2
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %12 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.xpc_partition_sn2* %14, %struct.xpc_partition_sn2** %4, align 8
  %15 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %16 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %15)
  store i16 %16, i16* %11, align 2
  %17 = load i32, i32* @XPC_GP_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %20 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %19, i32 0, i32 1
  %21 = call i8* @xpc_kzalloc_cacheline_aligned(i32 %17, i32 %18, i32* %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %24 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %26 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @xpc_chan, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @xpNoMemory, align 4
  store i32 %32, i32* %2, align 4
  br label %242

33:                                               ; preds = %1
  %34 = load i32, i32* @XPC_GP_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %37 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %36, i32 0, i32 3
  %38 = call i8* @xpc_kzalloc_cacheline_aligned(i32 %34, i32 %35, i32* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %41 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %43 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @xpc_chan, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @xpNoMemory, align 4
  store i32 %49, i32* %6, align 4
  br label %234

50:                                               ; preds = %33
  %51 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %52 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %51, i32 0, i32 13
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @XPC_OPENCLOSE_ARGS_SIZE, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %56 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %55, i32 0, i32 5
  %57 = call i8* @xpc_kzalloc_cacheline_aligned(i32 %53, i32 %54, i32* %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %60 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %62 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @xpc_chan, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @xpNoMemory, align 4
  store i32 %68, i32* %6, align 4
  br label %227

69:                                               ; preds = %50
  %70 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %71 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %70, i32 0, i32 12
  store i64 0, i64* %71, align 8
  %72 = load i16, i16* %11, align 2
  %73 = call i32* @xpc_init_IRQ_amo_sn2(i16 signext %72)
  %74 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %75 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %77 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %76, i32 0, i32 11
  store i64 0, i64* %77, align 8
  %78 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %79 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %78, i32 0, i32 10
  store i64 0, i64* %79, align 8
  %80 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %81 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %80, i32 0, i32 9
  store i32* null, i32** %81, align 8
  %82 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %83 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load i16, i16* %11, align 2
  %86 = call i32 @sprintf(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i16 signext %85)
  %87 = load i32, i32* @SGI_XPC_NOTIFY, align 4
  %88 = load i32, i32* @xpc_handle_notify_IRQ_sn2, align 4
  %89 = load i32, i32* @IRQF_SHARED, align 4
  %90 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %91 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load i16, i16* %11, align 2
  %94 = sext i16 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @request_irq(i32 %87, i32 %88, i32 %89, i32 %92, i8* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %69
  %100 = load i32, i32* @xpc_chan, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @xpLackOfResources, align 4
  store i32 %104, i32* %6, align 4
  br label %220

105:                                              ; preds = %69
  %106 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %107 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %106, i32 0, i32 7
  store %struct.timer_list* %107, %struct.timer_list** %10, align 8
  %108 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %109 = call i32 @init_timer(%struct.timer_list* %108)
  %110 = load i64, i64* @xpc_check_for_dropped_notify_IRQ_sn2, align 8
  %111 = inttoptr i64 %110 to void (i64)*
  %112 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %113 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %112, i32 0, i32 0
  store void (i64)* %111, void (i64)** %113, align 8
  %114 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %115 = ptrtoint %struct.xpc_partition* %114 to i64
  %116 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %117 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* @jiffies, align 8
  %119 = load i64, i64* @XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %122 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %124 = call i32 @add_timer(%struct.timer_list* %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %159, %105
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %128 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %125
  %132 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %133 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store %struct.xpc_channel_sn2* %139, %struct.xpc_channel_sn2** %5, align 8
  %140 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %141 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %147 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %146, i32 0, i32 2
  store i32* %145, i32** %147, align 8
  %148 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %149 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %155 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %154, i32 0, i32 1
  store i32* %153, i32** %155, align 8
  %156 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %5, align 8
  %157 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %156, i32 0, i32 0
  %158 = call i32 @mutex_init(i32* %157)
  br label %159

159:                                              ; preds = %131
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %125

162:                                              ; preds = %125
  %163 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %164 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i8* @xp_pa(i32* %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %168 = load i16, i16* %11, align 2
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  store i8* %166, i8** %171, align 8
  %172 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %173 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = call i8* @xp_pa(i32* %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %177 = load i16, i16* %11, align 2
  %178 = sext i16 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 5
  store i8* %175, i8** %180, align 8
  %181 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %182 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = call i8* @xp_pa(i32* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %186 = load i16, i16* %11, align 2
  %187 = sext i16 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 4
  store i8* %184, i8** %189, align 8
  %190 = call i32 (...) @raw_smp_processor_id()
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @cpuid_to_nasid(i32 %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %194 = load i16, i16* %11, align 2
  %195 = sext i16 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @cpu_physical_id(i32 %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %201 = load i16, i16* %11, align 2
  %202 = sext i16 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  store i32 %199, i32* %204, align 8
  %205 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %206 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %209 = load i16, i16* %11, align 2
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %207, i32* %212, align 8
  %213 = load i32, i32* @XPC_VP_MAGIC1_SN2, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xpc_vars_part_sn2, align 8
  %215 = load i16, i16* %11, align 2
  %216 = sext i16 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* @xpSuccess, align 4
  store i32 %219, i32* %2, align 4
  br label %242

220:                                              ; preds = %99
  %221 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %222 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @kfree(i32 %223)
  %225 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %226 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %225, i32 0, i32 4
  store i32* null, i32** %226, align 8
  br label %227

227:                                              ; preds = %220, %65
  %228 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %229 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @kfree(i32 %230)
  %232 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %233 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %232, i32 0, i32 2
  store i32* null, i32** %233, align 8
  br label %234

234:                                              ; preds = %227, %46
  %235 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %236 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @kfree(i32 %237)
  %239 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %240 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %239, i32 0, i32 0
  store i32* null, i32** %240, align 8
  %241 = load i32, i32* %6, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %234, %162, %29
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i8* @xpc_kzalloc_cacheline_aligned(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32* @xpc_init_IRQ_amo_sn2(i16 signext) #1

declare dso_local i32 @sprintf(i32, i8*, i16 signext) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @xp_pa(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpuid_to_nasid(i32) #1

declare dso_local i32 @cpu_physical_id(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
