; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_spinup_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_spinup_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@TEST_UNIT_READY = common dso_local global i8 0, align 1
@DMA_NONE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unit Not Ready\0A\00", align 1
@NOT_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Spinning up disk...\00", align 1
@START_STOP = common dso_local global i8 0, align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ready\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"not responding...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*)* @sd_spinup_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_spinup_disk(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sense_hdr, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %212, %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %61, %10
  %12 = load i8, i8* @TEST_UNIT_READY, align 1
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  %15 = call i32 @memset(i8* %14, i32 0, i32 9)
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %20 = load i32, i32* @DMA_NONE, align 4
  %21 = load i32, i32* @SD_TIMEOUT, align 4
  %22 = load i32, i32* @SD_MAX_RETRIES, align 4
  %23 = call i32 @scsi_execute_req(%struct.TYPE_2__* %18, i8* %19, i32 %20, i32* null, i32 0, %struct.scsi_sense_hdr* %8, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %25 = call i64 @media_not_present(%struct.scsi_disk* %24, %struct.scsi_sense_hdr* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  br label %226

28:                                               ; preds = %11
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %8)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @scsi_status_is_good(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @driver_byte(i32 %44)
  %46 = load i32, i32* @DRIVER_SENSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNIT_ATTENTION, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %52, %49, %43
  %58 = phi i1 [ false, %49 ], [ false, %43 ], [ %56, %52 ]
  br label %59

59:                                               ; preds = %57, %39
  %60 = phi i1 [ true, %39 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %36
  %62 = phi i1 [ false, %36 ], [ %60, %59 ]
  br i1 %62, label %11, label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @driver_byte(i32 %64)
  %66 = load i32, i32* @DRIVER_SENSE, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @scsi_status_is_good(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @KERN_NOTICE, align 4
  %78 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %79 = call i32 @sd_printk(i32 %77, %struct.scsi_disk* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @sd_print_result(%struct.scsi_disk* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %72, %69
  br label %214

84:                                               ; preds = %63
  %85 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %214

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %169

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NOT_READY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %214

109:                                              ; preds = %104, %100
  %110 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 11
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %214

118:                                              ; preds = %113, %109
  %119 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 12
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %214

127:                                              ; preds = %122, %118
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %166, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @KERN_NOTICE, align 4
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %133 = call i32 @sd_printk(i32 %131, %struct.scsi_disk* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i8, i8* @START_STOP, align 1
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %134, i8* %135, align 1
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 1, i8* %136, align 1
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  %138 = call i32 @memset(i8* %137, i32 0, i32 8)
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 4
  store i8 1, i8* %139, align 1
  %140 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %141 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %130
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 4
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %149, 16
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %147, align 1
  br label %152

152:                                              ; preds = %146, %130
  %153 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %154 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %157 = load i32, i32* @DMA_NONE, align 4
  %158 = load i32, i32* @SD_TIMEOUT, align 4
  %159 = load i32, i32* @SD_MAX_RETRIES, align 4
  %160 = call i32 @scsi_execute_req(%struct.TYPE_2__* %155, i8* %156, i32 %157, i32* null, i32 0, %struct.scsi_sense_hdr* %8, i32 %158, i32 %159, i32* null)
  %161 = load i32, i32* @jiffies, align 4
  %162 = load i32, i32* @HZ, align 4
  %163 = mul nsw i32 100, %162
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %152, %127
  %167 = call i32 @msleep(i32 1000)
  %168 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %203

169:                                              ; preds = %95, %92
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @UNIT_ATTENTION, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 40
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @jiffies, align 4
  %186 = load i32, i32* @HZ, align 4
  %187 = mul nsw i32 5, %186
  %188 = add nsw i32 %185, %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %190

190:                                              ; preds = %184, %181
  %191 = call i32 @msleep(i32 1000)
  br label %202

192:                                              ; preds = %177, %172, %169
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* @KERN_NOTICE, align 4
  %197 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %198 = call i32 @sd_printk(i32 %196, %struct.scsi_disk* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %200 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %199, %struct.scsi_sense_hdr* %8)
  br label %201

201:                                              ; preds = %195, %192
  br label %214

202:                                              ; preds = %190
  br label %203

203:                                              ; preds = %202, %166
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i32, i32* @jiffies, align 4
  %209 = load i64, i64* %4, align 8
  %210 = call i64 @time_before_eq(i32 %208, i64 %209)
  %211 = icmp ne i64 %210, 0
  br label %212

212:                                              ; preds = %207, %204
  %213 = phi i1 [ false, %204 ], [ %211, %207 ]
  br i1 %213, label %10, label %214

214:                                              ; preds = %212, %201, %126, %117, %108, %91, %83
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load i32, i32* %7, align 4
  %219 = call i64 @scsi_status_is_good(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %225

223:                                              ; preds = %217
  %224 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %221
  br label %226

226:                                              ; preds = %27, %225, %214
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @scsi_execute_req(%struct.TYPE_2__*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @media_not_present(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_status_is_good(i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @time_before_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
