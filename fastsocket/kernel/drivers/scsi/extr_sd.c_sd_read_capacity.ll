; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, %struct.scsi_device*, i64 }
%struct.scsi_device = type { i32, i32, i64, i64 }

@EOVERFLOW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Adjusting the sector count from its reported value: %llu\0A\00", align 1
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Sector size 0 reported, assuming 512.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported sector size %d.\0A\00", align 1
@STRING_UNITS_2 = common dso_local global i32 0, align 4
@STRING_UNITS_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%llu %d-byte logical blocks: (%s/%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%u-byte physical blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_capacity(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %11, i32 0, i32 2
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %6, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = call i64 @sd_try_rc16_first(%struct.scsi_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @read_capacity_16(%struct.scsi_disk* %21, %struct.scsi_device* %22, i8* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EOVERFLOW, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %93

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %224

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %41 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @read_capacity_10(%struct.scsi_disk* %40, %struct.scsi_device* %41, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %224

48:                                               ; preds = %44
  br label %64

49:                                               ; preds = %2
  %50 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %51 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @read_capacity_10(%struct.scsi_disk* %50, %struct.scsi_device* %51, i8* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @EOVERFLOW, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %93

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %224

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74, %64
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %83 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %81, %struct.scsi_disk* %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %80, %74, %69
  br label %93

93:                                               ; preds = %92, %58, %29
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  store i32 512, i32* %5, align 4
  %97 = load i32, i32* @KERN_NOTICE, align 4
  %98 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %99 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %97, %struct.scsi_disk* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 512
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 1024
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 2048
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 4096
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 256
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* @KERN_NOTICE, align 4
  %117 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %116, %struct.scsi_disk* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %121 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  store i32 512, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %112, %109, %106, %103, %100
  %123 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @blk_queue_logical_block_size(i32 %125, i32 %126)
  %128 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %129 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @ilog2(i32 %131)
  %133 = shl i32 %130, %132
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @STRING_UNITS_2, align 4
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %137 = call i32 @string_get_size(i32 %134, i32 %135, i8* %136, i32 10)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @STRING_UNITS_10, align 4
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %141 = call i32 @string_get_size(i32 %138, i32 %139, i8* %140, i32 10)
  %142 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %143 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %122
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %149 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %176

152:                                              ; preds = %146, %122
  %153 = load i32, i32* @KERN_NOTICE, align 4
  %154 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %155 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %156 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %5, align 4
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %161 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %162 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %153, %struct.scsi_disk* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %158, i32 %159, i8* %160, i8* %161)
  %163 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %164 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %152
  %169 = load i32, i32* @KERN_NOTICE, align 4
  %170 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %171 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %172 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %169, %struct.scsi_disk* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %168, %152
  br label %176

176:                                              ; preds = %175, %146
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %177, 4096
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %181 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = shl i32 %182, 3
  store i32 %183, i32* %181, align 8
  br label %211

184:                                              ; preds = %176
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %185, 2048
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %189 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = shl i32 %190, 2
  store i32 %191, i32* %189, align 8
  br label %210

192:                                              ; preds = %184
  %193 = load i32, i32* %5, align 4
  %194 = icmp eq i32 %193, 1024
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %197 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = shl i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %209

200:                                              ; preds = %192
  %201 = load i32, i32* %5, align 4
  %202 = icmp eq i32 %201, 256
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %205 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = ashr i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %203, %200
  br label %209

209:                                              ; preds = %208, %195
  br label %210

210:                                              ; preds = %209, %187
  br label %211

211:                                              ; preds = %210, %179
  %212 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %213 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %216 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @blk_queue_physical_block_size(i32 %214, i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %221 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %220, i32 0, i32 2
  %222 = load %struct.scsi_device*, %struct.scsi_device** %221, align 8
  %223 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %222, i32 0, i32 0
  store i32 %219, i32* %223, align 8
  br label %224

224:                                              ; preds = %211, %62, %47, %35
  ret void
}

declare dso_local i64 @sd_try_rc16_first(%struct.scsi_device*) #1

declare dso_local i32 @read_capacity_16(%struct.scsi_disk*, %struct.scsi_device*, i8*) #1

declare dso_local i32 @read_capacity_10(%struct.scsi_disk*, %struct.scsi_device*, i8*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @string_get_size(i32, i32, i8*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
