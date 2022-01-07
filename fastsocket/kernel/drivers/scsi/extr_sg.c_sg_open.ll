; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32* }
%struct.request_queue = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32, i32, i64, i32, i64 }
%struct.TYPE_11__ = type { %struct.request_queue* }

@.str = private unnamed_addr constant [29 x i8] c"sg_open: dev=%d, flags=0x%x\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @iminor(%struct.inode* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @lock_kernel()
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @nonseekable_open(%struct.inode* %18, %struct.file* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @SCSI_LOG_TIMEOUT(i32 3, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_10__* @sg_get_dev(i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = call i64 @IS_ERR(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.TYPE_10__* %31)
  store i32 %32, i32* %11, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %197

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call i32 @scsi_device_get(%struct.TYPE_11__* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %197

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = call i64 @scsi_block_when_processing_errors(%struct.TYPE_11__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %188

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @O_EXCL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %55
  %61 = load i32, i32* @O_RDONLY, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @O_ACCMODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %188

69:                                               ; preds = %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = call i64 @list_empty(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %188

82:                                               ; preds = %74, %69
  store i32 0, i32* %10, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = call i64 @list_empty(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %82
  br label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ 0, %95 ], [ 1, %96 ]
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @__wait_event_interruptible(i32 %85, i32 %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %11, align 4
  br label %188

107:                                              ; preds = %99
  br label %139

108:                                              ; preds = %55
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @O_NONBLOCK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %188

121:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @__wait_event_interruptible(i32 %124, i32 %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %11, align 4
  br label %188

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %108
  br label %139

139:                                              ; preds = %138, %107
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %11, align 4
  br label %188

147:                                              ; preds = %139
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  %150 = call i64 @list_empty(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 4
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load %struct.request_queue*, %struct.request_queue** %158, align 8
  store %struct.request_queue* %159, %struct.request_queue** %7, align 8
  %160 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %161 = call i32 @queue_max_segments(%struct.request_queue* %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %152, %147
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32* @sg_add_sfp(%struct.TYPE_10__* %165, i32 %166)
  store i32* %167, i32** %9, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.file*, %struct.file** %4, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 1
  store i32* %170, i32** %172, align 8
  br label %187

173:                                              ; preds = %164
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @O_EXCL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = call i32 @wake_up_interruptible(i32* %182)
  br label %184

184:                                              ; preds = %178, %173
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %11, align 4
  br label %188

187:                                              ; preds = %169
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %187, %184, %144, %135, %118, %105, %79, %66, %52
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = call i32 @scsi_device_put(%struct.TYPE_11__* %194)
  br label %196

196:                                              ; preds = %191, %188
  br label %197

197:                                              ; preds = %196, %40, %30
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %199 = icmp ne %struct.TYPE_10__* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = call i32 @sg_put_dev(%struct.TYPE_10__* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = call i32 (...) @unlock_kernel()
  %205 = load i32, i32* %11, align 4
  ret i32 %205
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @sg_get_dev(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @scsi_device_get(%struct.TYPE_11__*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.TYPE_11__*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__wait_event_interruptible(i32, i32, i32) #1

declare dso_local i32 @queue_max_segments(%struct.request_queue*) #1

declare dso_local i32* @sg_add_sfp(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @scsi_device_put(%struct.TYPE_11__*) #1

declare dso_local i32 @sg_put_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
