; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_subdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i32, i32, i32, %struct.TYPE_6__*, i8*, i8*, i32, %struct.jr3_channel* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.jr3_channel = type { %struct.TYPE_7__, %struct.force_array, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.force_array = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.poll_delay_t = type { i32 }
%struct.transform_t = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.six_axis_t = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Errors: %x -> %x\0A\00", align 1
@watch_dog = common dso_local global i32 0, align 4
@watch_dog2 = common dso_local global i32 0, align 4
@sensor_change = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Setting transform for channel %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Sensor Model     = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Sensor Serial    = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"state_jr3_init_transform_complete complete = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Obtained Min. Full Scales:\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%i   \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Obtained Max. Full Scales:\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"state_jr3_init_set_full_scale_complete complete = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%d %d - %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"state_jr3_init_use_offset_complete complete = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Default offsets %d %d %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_subdevice*)* @jr3_pci_poll_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_pci_poll_subdevice(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.poll_delay_t, align 4
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.jr3_pci_subdev_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jr3_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.poll_delay_t, align 4
  %11 = alloca %struct.poll_delay_t, align 4
  %12 = alloca %struct.poll_delay_t, align 4
  %13 = alloca %struct.transform_t, align 8
  %14 = alloca %struct.poll_delay_t, align 4
  %15 = alloca %struct.poll_delay_t, align 4
  %16 = alloca %struct.six_axis_t, align 4
  %17 = alloca %struct.six_axis_t, align 8
  %18 = alloca %struct.six_axis_t, align 4
  %19 = alloca %struct.six_axis_t, align 4
  %20 = alloca %struct.poll_delay_t, align 4
  %21 = alloca %struct.poll_delay_t, align 4
  %22 = alloca %struct.force_array*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.poll_delay_t, align 4
  %25 = alloca %struct.poll_delay_t, align 4
  %26 = alloca %struct.poll_delay_t, align 4
  %27 = alloca %struct.poll_delay_t, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  %28 = call i32 @poll_delay_min_max(i32 1000, i32 2000)
  %29 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %2, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %31, align 8
  store %struct.jr3_pci_subdev_private* %32, %struct.jr3_pci_subdev_private** %4, align 8
  %33 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %34 = icmp ne %struct.jr3_pci_subdev_private* %33, null
  br i1 %34, label %35, label %554

35:                                               ; preds = %1
  %36 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %37 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %36, i32 0, i32 7
  %38 = load %struct.jr3_channel*, %struct.jr3_channel** %37, align 8
  store %struct.jr3_channel* %38, %struct.jr3_channel** %6, align 8
  %39 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %40 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %39, i32 0, i32 4
  %41 = call i8* @get_u16(i32* %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %45 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %50 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %56 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %35
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @watch_dog, align 4
  %60 = load i32, i32* @watch_dog2, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @sensor_change, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %68 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %67, i32 0, i32 1
  store i32 128, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %71 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %550 [
    i32 128, label %73
    i32 129, label %107
    i32 131, label %180
    i32 132, label %248
    i32 130, label %480
    i32 133, label %547
  ]

73:                                               ; preds = %69
  %74 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %75 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %74, i32 0, i32 3
  %76 = call i8* @get_u16(i32* %75)
  store i8* %76, i8** %8, align 8
  %77 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %78 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %77, i32 0, i32 2
  %79 = call i8* @get_u16(i32* %78)
  store i8* %79, i8** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @watch_dog, align 4
  %82 = load i32, i32* @watch_dog2, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load i8*, i8** %8, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89, %86, %73
  %93 = call i32 @poll_delay_min_max(i32 1000, i32 2000)
  %94 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %10, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = bitcast %struct.poll_delay_t* %2 to i8*
  %96 = bitcast %struct.poll_delay_t* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  br label %106

97:                                               ; preds = %89
  %98 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %99 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %101 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %100, i32 0, i32 1
  store i32 129, i32* %101, align 4
  %102 = call i32 @poll_delay_min_max(i32 1000, i32 2000)
  %103 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %11, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = bitcast %struct.poll_delay_t* %2 to i8*
  %105 = bitcast %struct.poll_delay_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  br label %106

106:                                              ; preds = %97, %92
  br label %553

107:                                              ; preds = %69
  %108 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %109 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %113 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = call i32 @poll_delay_min_max(i32 1000, i32 2000)
  %118 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %12, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = bitcast %struct.poll_delay_t* %2 to i8*
  %120 = bitcast %struct.poll_delay_t* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  br label %179

121:                                              ; preds = %107
  %122 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %123 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %122, i32 0, i32 3
  %124 = call i8* @get_u16(i32* %123)
  %125 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %126 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %128 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %127, i32 0, i32 2
  %129 = call i8* @get_u16(i32* %128)
  %130 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %131 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %133 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %137 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  %140 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %141 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %163, %121
  %145 = load i32, i32* %5, align 4
  %146 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %13, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %147)
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %13, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %13, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %144

166:                                              ; preds = %144
  %167 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %168 = getelementptr inbounds %struct.transform_t, %struct.transform_t* %13, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = call i32 @set_transforms(%struct.jr3_channel* %167, %struct.TYPE_8__* %169, i32 0)
  %171 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %172 = call i32 @use_transform(%struct.jr3_channel* %171, i32 0)
  %173 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %174 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %173, i32 0, i32 1
  store i32 131, i32* %174, align 4
  %175 = call i32 @poll_delay_min_max(i32 20, i32 100)
  %176 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %14, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = bitcast %struct.poll_delay_t* %2 to i8*
  %178 = bitcast %struct.poll_delay_t* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 4, i1 false)
  br label %179

179:                                              ; preds = %166, %116
  br label %553

180:                                              ; preds = %69
  %181 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %182 = call i32 @is_complete(%struct.jr3_channel* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %186 = call i32 @is_complete(%struct.jr3_channel* %185)
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  %188 = call i32 @poll_delay_min_max(i32 20, i32 100)
  %189 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %15, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = bitcast %struct.poll_delay_t* %2 to i8*
  %191 = bitcast %struct.poll_delay_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %190, i8* align 4 %191, i64 4, i1 false)
  br label %247

192:                                              ; preds = %180
  %193 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  call void @get_min_full_scales(%struct.six_axis_t* sret %18, %struct.jr3_channel* %193)
  %194 = bitcast %struct.six_axis_t* %16 to i8*
  %195 = bitcast %struct.six_axis_t* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %194, i8* align 4 %195, i64 24, i1 false)
  %196 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %197 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %198)
  %200 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  %203 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %207)
  %209 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %210)
  %212 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %16, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %213)
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %216 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  call void @get_max_full_scales(%struct.six_axis_t* sret %19, %struct.jr3_channel* %216)
  %217 = bitcast %struct.six_axis_t* %17 to i8*
  %218 = bitcast %struct.six_axis_t* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 24, i1 false)
  %219 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %220 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  %223 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  %226 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %230)
  %232 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %233)
  %235 = getelementptr inbounds %struct.six_axis_t, %struct.six_axis_t* %17, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %236)
  %238 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %239 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %240 = call i32 @set_full_scales(%struct.jr3_channel* %239, %struct.six_axis_t* byval(%struct.six_axis_t) align 8 %17)
  %241 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %242 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %241, i32 0, i32 1
  store i32 132, i32* %242, align 4
  %243 = call i32 @poll_delay_min_max(i32 20, i32 100)
  %244 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %20, i32 0, i32 0
  store i32 %243, i32* %244, align 4
  %245 = bitcast %struct.poll_delay_t* %2 to i8*
  %246 = bitcast %struct.poll_delay_t* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %245, i8* align 4 %246, i64 4, i1 false)
  br label %247

247:                                              ; preds = %192, %184
  br label %553

248:                                              ; preds = %69
  %249 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %250 = call i32 @is_complete(%struct.jr3_channel* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %248
  %253 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %254 = call i32 @is_complete(%struct.jr3_channel* %253)
  %255 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %254)
  %256 = call i32 @poll_delay_min_max(i32 20, i32 100)
  %257 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %21, i32 0, i32 0
  store i32 %256, i32* %257, align 4
  %258 = bitcast %struct.poll_delay_t* %2 to i8*
  %259 = bitcast %struct.poll_delay_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 4, i1 false)
  br label %479

260:                                              ; preds = %248
  %261 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %262 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %261, i32 0, i32 1
  store %struct.force_array* %262, %struct.force_array** %22, align 8
  %263 = load %struct.force_array*, %struct.force_array** %22, align 8
  %264 = getelementptr inbounds %struct.force_array, %struct.force_array* %263, i32 0, i32 7
  %265 = call i32 @get_s16(i32* %264)
  %266 = sub nsw i32 0, %265
  %267 = mul nsw i32 %266, 1000
  %268 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %269 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %268, i32 0, i32 3
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  store i32 %267, i32* %273, align 4
  %274 = load %struct.force_array*, %struct.force_array** %22, align 8
  %275 = getelementptr inbounds %struct.force_array, %struct.force_array* %274, i32 0, i32 7
  %276 = call i32 @get_s16(i32* %275)
  %277 = mul nsw i32 %276, 1000
  %278 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %279 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %278, i32 0, i32 3
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  store i32 %277, i32* %283, align 4
  %284 = load %struct.force_array*, %struct.force_array** %22, align 8
  %285 = getelementptr inbounds %struct.force_array, %struct.force_array* %284, i32 0, i32 6
  %286 = call i32 @get_s16(i32* %285)
  %287 = sub nsw i32 0, %286
  %288 = mul nsw i32 %287, 1000
  %289 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %290 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %289, i32 0, i32 3
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i64 1
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  store i32 %288, i32* %294, align 4
  %295 = load %struct.force_array*, %struct.force_array** %22, align 8
  %296 = getelementptr inbounds %struct.force_array, %struct.force_array* %295, i32 0, i32 6
  %297 = call i32 @get_s16(i32* %296)
  %298 = mul nsw i32 %297, 1000
  %299 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %300 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %299, i32 0, i32 3
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i64 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  store i32 %298, i32* %304, align 4
  %305 = load %struct.force_array*, %struct.force_array** %22, align 8
  %306 = getelementptr inbounds %struct.force_array, %struct.force_array* %305, i32 0, i32 5
  %307 = call i32 @get_s16(i32* %306)
  %308 = sub nsw i32 0, %307
  %309 = mul nsw i32 %308, 1000
  %310 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %311 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %310, i32 0, i32 3
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 2
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  store i32 %309, i32* %315, align 4
  %316 = load %struct.force_array*, %struct.force_array** %22, align 8
  %317 = getelementptr inbounds %struct.force_array, %struct.force_array* %316, i32 0, i32 5
  %318 = call i32 @get_s16(i32* %317)
  %319 = mul nsw i32 %318, 1000
  %320 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %321 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %320, i32 0, i32 3
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i64 2
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  store i32 %319, i32* %325, align 4
  %326 = load %struct.force_array*, %struct.force_array** %22, align 8
  %327 = getelementptr inbounds %struct.force_array, %struct.force_array* %326, i32 0, i32 4
  %328 = call i32 @get_s16(i32* %327)
  %329 = sub nsw i32 0, %328
  %330 = mul nsw i32 %329, 100
  %331 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %332 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %331, i32 0, i32 3
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i64 3
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 0
  store i32 %330, i32* %336, align 4
  %337 = load %struct.force_array*, %struct.force_array** %22, align 8
  %338 = getelementptr inbounds %struct.force_array, %struct.force_array* %337, i32 0, i32 4
  %339 = call i32 @get_s16(i32* %338)
  %340 = mul nsw i32 %339, 100
  %341 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %342 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %341, i32 0, i32 3
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 3
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 1
  store i32 %340, i32* %346, align 4
  %347 = load %struct.force_array*, %struct.force_array** %22, align 8
  %348 = getelementptr inbounds %struct.force_array, %struct.force_array* %347, i32 0, i32 3
  %349 = call i32 @get_s16(i32* %348)
  %350 = sub nsw i32 0, %349
  %351 = mul nsw i32 %350, 100
  %352 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %353 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %352, i32 0, i32 3
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i64 4
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  store i32 %351, i32* %357, align 4
  %358 = load %struct.force_array*, %struct.force_array** %22, align 8
  %359 = getelementptr inbounds %struct.force_array, %struct.force_array* %358, i32 0, i32 3
  %360 = call i32 @get_s16(i32* %359)
  %361 = mul nsw i32 %360, 100
  %362 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %363 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %362, i32 0, i32 3
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i64 4
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 1
  store i32 %361, i32* %367, align 4
  %368 = load %struct.force_array*, %struct.force_array** %22, align 8
  %369 = getelementptr inbounds %struct.force_array, %struct.force_array* %368, i32 0, i32 2
  %370 = call i32 @get_s16(i32* %369)
  %371 = sub nsw i32 0, %370
  %372 = mul nsw i32 %371, 100
  %373 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %374 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %373, i32 0, i32 3
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i64 5
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 0
  store i32 %372, i32* %378, align 4
  %379 = load %struct.force_array*, %struct.force_array** %22, align 8
  %380 = getelementptr inbounds %struct.force_array, %struct.force_array* %379, i32 0, i32 2
  %381 = call i32 @get_s16(i32* %380)
  %382 = mul nsw i32 %381, 100
  %383 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %384 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %383, i32 0, i32 3
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i64 5
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 1
  store i32 %382, i32* %388, align 4
  %389 = load %struct.force_array*, %struct.force_array** %22, align 8
  %390 = getelementptr inbounds %struct.force_array, %struct.force_array* %389, i32 0, i32 1
  %391 = call i32 @get_s16(i32* %390)
  %392 = sub nsw i32 0, %391
  %393 = mul nsw i32 %392, 100
  %394 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %395 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %394, i32 0, i32 3
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i64 6
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 0
  store i32 %393, i32* %399, align 4
  %400 = load %struct.force_array*, %struct.force_array** %22, align 8
  %401 = getelementptr inbounds %struct.force_array, %struct.force_array* %400, i32 0, i32 1
  %402 = call i32 @get_s16(i32* %401)
  %403 = mul nsw i32 %402, 100
  %404 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %405 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %404, i32 0, i32 3
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i64 6
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 1
  store i32 %403, i32* %409, align 4
  %410 = load %struct.force_array*, %struct.force_array** %22, align 8
  %411 = getelementptr inbounds %struct.force_array, %struct.force_array* %410, i32 0, i32 0
  %412 = call i32 @get_s16(i32* %411)
  %413 = sub nsw i32 0, %412
  %414 = mul nsw i32 %413, 100
  %415 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %416 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %415, i32 0, i32 3
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i64 7
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 0
  store i32 %414, i32* %420, align 4
  %421 = load %struct.force_array*, %struct.force_array** %22, align 8
  %422 = getelementptr inbounds %struct.force_array, %struct.force_array* %421, i32 0, i32 0
  %423 = call i32 @get_s16(i32* %422)
  %424 = mul nsw i32 %423, 100
  %425 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %426 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %425, i32 0, i32 3
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i64 7
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  store i32 %424, i32* %430, align 4
  %431 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %432 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %431, i32 0, i32 3
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i64 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 0
  store i32 0, i32* %436, align 4
  %437 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %438 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %437, i32 0, i32 3
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i64 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 1
  store i32 65535, i32* %442, align 4
  store i32 0, i32* %23, align 4
  br label %443

443:                                              ; preds = %467, %260
  %444 = load i32, i32* %23, align 4
  %445 = icmp slt i32 %444, 9
  br i1 %445, label %446, label %470

446:                                              ; preds = %443
  %447 = load i32, i32* %23, align 4
  %448 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %449 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %448, i32 0, i32 3
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %449, align 8
  %451 = load i32, i32* %23, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %458 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %457, i32 0, i32 3
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %458, align 8
  %460 = load i32, i32* %23, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %447, i32 %456, i32 %465)
  br label %467

467:                                              ; preds = %446
  %468 = load i32, i32* %23, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %23, align 4
  br label %443

470:                                              ; preds = %443
  %471 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %472 = call i32 @use_offset(%struct.jr3_channel* %471, i32 0)
  %473 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %474 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %473, i32 0, i32 1
  store i32 130, i32* %474, align 4
  %475 = call i32 @poll_delay_min_max(i32 40, i32 100)
  %476 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %24, i32 0, i32 0
  store i32 %475, i32* %476, align 4
  %477 = bitcast %struct.poll_delay_t* %2 to i8*
  %478 = bitcast %struct.poll_delay_t* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %477, i8* align 4 %478, i64 4, i1 false)
  br label %479

479:                                              ; preds = %470, %252
  br label %553

480:                                              ; preds = %69
  %481 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %482 = call i32 @is_complete(%struct.jr3_channel* %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %492, label %484

484:                                              ; preds = %480
  %485 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %486 = call i32 @is_complete(%struct.jr3_channel* %485)
  %487 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %486)
  %488 = call i32 @poll_delay_min_max(i32 20, i32 100)
  %489 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %25, i32 0, i32 0
  store i32 %488, i32* %489, align 4
  %490 = bitcast %struct.poll_delay_t* %2 to i8*
  %491 = bitcast %struct.poll_delay_t* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %490, i8* align 4 %491, i64 4, i1 false)
  br label %546

492:                                              ; preds = %480
  %493 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %494 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 5
  %496 = call i32 @get_s16(i32* %495)
  %497 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %498 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 4
  %500 = call i32 @get_s16(i32* %499)
  %501 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %502 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 3
  %504 = call i32 @get_s16(i32* %503)
  %505 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %506 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 2
  %508 = call i32 @get_s16(i32* %507)
  %509 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %510 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %510, i32 0, i32 1
  %512 = call i32 @get_s16(i32* %511)
  %513 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %514 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %514, i32 0, i32 0
  %516 = call i32 @get_s16(i32* %515)
  %517 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %496, i32 %500, i32 %504, i32 %508, i32 %512, i32 %516)
  %518 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %519 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 5
  %521 = call i32 @set_s16(i32* %520, i32 0)
  %522 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %523 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 4
  %525 = call i32 @set_s16(i32* %524, i32 0)
  %526 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %527 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %527, i32 0, i32 3
  %529 = call i32 @set_s16(i32* %528, i32 0)
  %530 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %531 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %531, i32 0, i32 2
  %533 = call i32 @set_s16(i32* %532, i32 0)
  %534 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %535 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 1
  %537 = call i32 @set_s16(i32* %536, i32 0)
  %538 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %539 = getelementptr inbounds %struct.jr3_channel, %struct.jr3_channel* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 0
  %541 = call i32 @set_s16(i32* %540, i32 0)
  %542 = load %struct.jr3_channel*, %struct.jr3_channel** %6, align 8
  %543 = call i32 @set_offset(%struct.jr3_channel* %542)
  %544 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %4, align 8
  %545 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %544, i32 0, i32 1
  store i32 133, i32* %545, align 4
  br label %546

546:                                              ; preds = %492, %484
  br label %553

547:                                              ; preds = %69
  %548 = call i32 @poll_delay_min_max(i32 10000, i32 20000)
  %549 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %26, i32 0, i32 0
  store i32 %548, i32* %549, align 4
  br label %553

550:                                              ; preds = %69
  %551 = call i32 @poll_delay_min_max(i32 1000, i32 2000)
  %552 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %27, i32 0, i32 0
  store i32 %551, i32* %552, align 4
  br label %553

553:                                              ; preds = %550, %547, %546, %479, %247, %179, %106
  br label %554

554:                                              ; preds = %553, %1
  %555 = getelementptr inbounds %struct.poll_delay_t, %struct.poll_delay_t* %2, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  ret i32 %556
}

declare dso_local i32 @poll_delay_min_max(i32, i32) #1

declare dso_local i8* @get_u16(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @set_transforms(%struct.jr3_channel*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @use_transform(%struct.jr3_channel*, i32) #1

declare dso_local i32 @is_complete(%struct.jr3_channel*) #1

declare dso_local void @get_min_full_scales(%struct.six_axis_t* sret, %struct.jr3_channel*) #1

declare dso_local void @get_max_full_scales(%struct.six_axis_t* sret, %struct.jr3_channel*) #1

declare dso_local i32 @set_full_scales(%struct.jr3_channel*, %struct.six_axis_t* byval(%struct.six_axis_t) align 8) #1

declare dso_local i32 @get_s16(i32*) #1

declare dso_local i32 @use_offset(%struct.jr3_channel*, i32) #1

declare dso_local i32 @set_s16(i32*, i32) #1

declare dso_local i32 @set_offset(%struct.jr3_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
