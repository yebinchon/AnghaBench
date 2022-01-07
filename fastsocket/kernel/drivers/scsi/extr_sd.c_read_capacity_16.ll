; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, i32, i32, i64 }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@READ_CAPACITY_RETRIES_ON_RESET = common dso_local global i32 0, align 4
@SERVICE_ACTION_IN = common dso_local global i8 0, align 1
@SAI_READ_CAPACITY_16 = common dso_local global i8 0, align 1
@RC16_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"READ CAPACITY(16) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"physical block alignment offset: %u\0A\00", align 1
@SD_LBP_WS16 = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, %struct.scsi_device*, i8*)* @read_capacity_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_capacity_16(%struct.scsi_disk* %0, %struct.scsi_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.scsi_sense_hdr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %12, align 4
  %17 = load i32, i32* @READ_CAPACITY_RETRIES_ON_RESET, align 4
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %104, %3
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 16)
  %21 = load i8, i8* @SERVICE_ACTION_IN, align 1
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 %21, i8* %22, align 16
  %23 = load i8, i8* @SAI_READ_CAPACITY_16, align 1
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* @RC16_LEN, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 13
  store i8 %26, i8* %27, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @RC16_LEN, align 4
  %30 = call i32 @memset(i8* %28, i32 0, i32 %29)
  %31 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @RC16_LEN, align 4
  %36 = load i32, i32* @SD_TIMEOUT, align 4
  %37 = load i32, i32* @SD_MAX_RETRIES, align 4
  %38 = call i32 @scsi_execute_req(%struct.scsi_device* %31, i8* %32, i32 %33, i8* %34, i32 %35, %struct.scsi_sense_hdr* %9, i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %40 = call i64 @media_not_present(%struct.scsi_disk* %39, %struct.scsi_sense_hdr* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %206

45:                                               ; preds = %18
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %45
  %49 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %9)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 36
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %206

72:                                               ; preds = %65, %61, %52, %48
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UNIT_ATTENTION, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 41
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %98

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %84, %80, %75, %72
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ false, %98 ], [ %103, %101 ]
  br i1 %105, label %18, label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, i32* @KERN_NOTICE, align 4
  %111 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %112 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %110, %struct.scsi_disk* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %114 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @read_capacity_error(%struct.scsi_disk* %113, %struct.scsi_device* %114, %struct.scsi_sense_hdr* %9, i32 %115, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %206

120:                                              ; preds = %106
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  %123 = call i32 @get_unaligned_be32(i8* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = call i64 @get_unaligned_be64(i8* %125)
  store i64 %126, i64* %15, align 8
  %127 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i64 @sd_read_protection_type(%struct.scsi_disk* %127, i8* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %133 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %206

136:                                              ; preds = %120
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 13
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 15
  %142 = shl i32 1, %141
  %143 = load i32, i32* %16, align 4
  %144 = mul i32 %142, %143
  %145 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %146 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 14
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 63
  %152 = shl i32 %151, 8
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 15
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %152, %156
  %158 = load i32, i32* %16, align 4
  %159 = mul i32 %157, %158
  store i32 %159, i32* %14, align 4
  %160 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @blk_queue_alignment_offset(i32 %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %136
  %168 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %169 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* @KERN_NOTICE, align 4
  %174 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %173, %struct.scsi_disk* %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %172, %167, %136
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 14
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 128
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %177
  %185 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %186 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %185, i32 0, i32 2
  store i32 1, i32* %186, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 14
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = and i32 %190, 64
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %195 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %194, i32 0, i32 3
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %184
  %197 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %198 = load i32, i32* @SD_LBP_WS16, align 4
  %199 = call i32 @sd_config_discard(%struct.scsi_disk* %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %177
  %201 = load i64, i64* %15, align 8
  %202 = add i64 %201, 1
  %203 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %204 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = load i32, i32* %16, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %200, %131, %109, %69, %42
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @media_not_present(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @read_capacity_error(%struct.scsi_disk*, %struct.scsi_device*, %struct.scsi_sense_hdr*, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i64 @get_unaligned_be64(i8*) #1

declare dso_local i64 @sd_read_protection_type(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @blk_queue_alignment_offset(i32, i32) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
