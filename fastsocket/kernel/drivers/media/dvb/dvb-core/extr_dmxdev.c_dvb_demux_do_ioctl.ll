; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_demux_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i32, i32, %struct.dmxdev* }
%struct.dmxdev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i32, i32*, i32*)*, i32 (%struct.TYPE_5__*, i8*)* }
%struct.dmx_stc = type { i32, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@DMXDEV_STATE_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i8*)* @dvb_demux_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_demux_do_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dmxdev_filter*, align 8
  %11 = alloca %struct.dmxdev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %15, align 8
  store %struct.dmxdev_filter* %16, %struct.dmxdev_filter** %10, align 8
  %17 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %18 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %17, i32 0, i32 2
  %19 = load %struct.dmxdev*, %struct.dmxdev** %18, align 8
  store %struct.dmxdev* %19, %struct.dmxdev** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %23 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %268

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %260 [
    i32 129, label %31
    i32 128, label %58
    i32 132, label %75
    i32 131, label %94
    i32 133, label %113
    i32 136, label %131
    i32 137, label %152
    i32 130, label %173
    i32 135, label %194
    i32 138, label %224
    i32 134, label %242
  ]

31:                                               ; preds = %29
  %32 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %33 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %32, i32 0, i32 0
  %34 = call i64 @mutex_lock_interruptible(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %38 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* @ERESTARTSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %268

42:                                               ; preds = %31
  %43 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %44 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMXDEV_STATE_SET, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %53 = call i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter* %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %56 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %263

58:                                               ; preds = %29
  %59 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %60 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %59, i32 0, i32 0
  %61 = call i64 @mutex_lock_interruptible(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %65 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %268

69:                                               ; preds = %58
  %70 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %71 = call i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter* %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %73 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %263

75:                                               ; preds = %29
  %76 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %77 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %76, i32 0, i32 0
  %78 = call i64 @mutex_lock_interruptible(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %82 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* @ERESTARTSYS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %268

86:                                               ; preds = %75
  %87 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %88 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @dvb_dmxdev_filter_set(%struct.dmxdev* %87, %struct.dmxdev_filter* %88, i8* %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %92 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %263

94:                                               ; preds = %29
  %95 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %96 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %95, i32 0, i32 0
  %97 = call i64 @mutex_lock_interruptible(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %101 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* @ERESTARTSYS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %268

105:                                              ; preds = %94
  %106 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %107 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev* %106, %struct.dmxdev_filter* %107, i8* %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %111 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  br label %263

113:                                              ; preds = %29
  %114 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %115 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %114, i32 0, i32 0
  %116 = call i64 @mutex_lock_interruptible(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %120 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* @ERESTARTSYS, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %268

124:                                              ; preds = %113
  %125 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @dvb_dmxdev_set_buffer_size(%struct.dmxdev_filter* %125, i64 %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %129 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %263

131:                                              ; preds = %29
  %132 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %133 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %135, align 8
  %137 = icmp ne i32 (%struct.TYPE_5__*, i8*)* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %13, align 4
  br label %263

141:                                              ; preds = %131
  %142 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %143 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %145, align 8
  %147 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %148 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 %146(%struct.TYPE_5__* %149, i8* %150)
  br label %263

152:                                              ; preds = %29
  %153 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %154 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %156, align 8
  %158 = icmp ne i32 (%struct.TYPE_5__*, i8*)* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  br label %263

162:                                              ; preds = %152
  %163 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %164 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %166, align 8
  %168 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %169 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 %167(%struct.TYPE_5__* %170, i8* %171)
  store i32 %172, i32* %13, align 4
  br label %263

173:                                              ; preds = %29
  %174 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %175 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %174, i32 0, i32 1
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %177, align 8
  %179 = icmp ne i32 (%struct.TYPE_5__*, i8*)* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %13, align 4
  br label %263

183:                                              ; preds = %173
  %184 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %185 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %187, align 8
  %189 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %190 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %189, i32 0, i32 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 %188(%struct.TYPE_5__* %191, i8* %192)
  store i32 %193, i32* %13, align 4
  br label %263

194:                                              ; preds = %29
  %195 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %196 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32 (%struct.TYPE_5__*, i32, i32*, i32*)*, i32 (%struct.TYPE_5__*, i32, i32*, i32*)** %198, align 8
  %200 = icmp ne i32 (%struct.TYPE_5__*, i32, i32*, i32*)* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %13, align 4
  br label %263

204:                                              ; preds = %194
  %205 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %206 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %205, i32 0, i32 1
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load i32 (%struct.TYPE_5__*, i32, i32*, i32*)*, i32 (%struct.TYPE_5__*, i32, i32*, i32*)** %208, align 8
  %210 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %211 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %210, i32 0, i32 1
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = bitcast i8* %213 to %struct.dmx_stc*
  %215 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = bitcast i8* %217 to %struct.dmx_stc*
  %219 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %218, i32 0, i32 1
  %220 = load i8*, i8** %9, align 8
  %221 = bitcast i8* %220 to %struct.dmx_stc*
  %222 = getelementptr inbounds %struct.dmx_stc, %struct.dmx_stc* %221, i32 0, i32 0
  %223 = call i32 %209(%struct.TYPE_5__* %212, i32 %216, i32* %219, i32* %222)
  store i32 %223, i32* %13, align 4
  br label %263

224:                                              ; preds = %29
  %225 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %226 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %225, i32 0, i32 0
  %227 = call i64 @mutex_lock_interruptible(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* @ERESTARTSYS, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %13, align 4
  br label %263

232:                                              ; preds = %224
  %233 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %234 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %235 = load i8*, i8** %9, align 8
  %236 = bitcast i8* %235 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @dvb_dmxdev_add_pid(%struct.dmxdev* %233, %struct.dmxdev_filter* %234, i32 %237)
  store i32 %238, i32* %13, align 4
  %239 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %240 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %239, i32 0, i32 0
  %241 = call i32 @mutex_unlock(i32* %240)
  br label %263

242:                                              ; preds = %29
  %243 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %244 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %243, i32 0, i32 0
  %245 = call i64 @mutex_lock_interruptible(i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i32, i32* @ERESTARTSYS, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %13, align 4
  br label %263

250:                                              ; preds = %242
  %251 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %252 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = bitcast i8* %253 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @dvb_dmxdev_remove_pid(%struct.dmxdev* %251, %struct.dmxdev_filter* %252, i32 %255)
  store i32 %256, i32* %13, align 4
  %257 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %10, align 8
  %258 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %257, i32 0, i32 0
  %259 = call i32 @mutex_unlock(i32* %258)
  br label %263

260:                                              ; preds = %29
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %13, align 4
  br label %263

263:                                              ; preds = %260, %250, %247, %232, %229, %204, %201, %183, %180, %162, %159, %141, %138, %124, %105, %86, %69, %54
  %264 = load %struct.dmxdev*, %struct.dmxdev** %11, align 8
  %265 = getelementptr inbounds %struct.dmxdev, %struct.dmxdev* %264, i32 0, i32 0
  %266 = call i32 @mutex_unlock(i32* %265)
  %267 = load i32, i32* %13, align 4
  store i32 %267, i32* %5, align 4
  br label %268

268:                                              ; preds = %263, %118, %99, %80, %63, %36, %26
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dvb_dmxdev_filter_start(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_stop(%struct.dmxdev_filter*) #1

declare dso_local i32 @dvb_dmxdev_filter_set(%struct.dmxdev*, %struct.dmxdev_filter*, i8*) #1

declare dso_local i32 @dvb_dmxdev_pes_filter_set(%struct.dmxdev*, %struct.dmxdev_filter*, i8*) #1

declare dso_local i32 @dvb_dmxdev_set_buffer_size(%struct.dmxdev_filter*, i64) #1

declare dso_local i32 @dvb_dmxdev_add_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

declare dso_local i32 @dvb_dmxdev_remove_pid(%struct.dmxdev*, %struct.dmxdev_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
