; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_update_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_update_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pm8001_ioctl_payload = type { i32, i32, i64 }
%struct.fw_control_info = type { i32, i32, i64, i32, i64 }
%struct.pm8001_fw_image_header = type { i32 }

@completion = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FAIL_FILE_SIZE = common dso_local global i32 0, align 4
@HEADER_LEN = common dso_local global i32 0, align 4
@IOCTL_BUF_SIZE = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@FLASH_UPDATE_IN_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_update_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_update_flash(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_ioctl_payload*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_control_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pm8001_fw_image_header*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %16 = load i32, i32* @completion, align 4
  %17 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %16)
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 16399, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.pm8001_fw_image_header*
  store %struct.pm8001_fw_image_header* %26, %struct.pm8001_fw_image_header** %15, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %212

32:                                               ; preds = %1
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 28
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @FAIL_FILE_SIZE, align 4
  store i32 %40, i32* %13, align 4
  br label %208

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %204, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %207

50:                                               ; preds = %42
  %51 = load %struct.pm8001_fw_image_header*, %struct.pm8001_fw_image_header** %15, align 8
  %52 = getelementptr inbounds %struct.pm8001_fw_image_header, %struct.pm8001_fw_image_header* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @HEADER_LEN, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %66 = srem i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %50
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %197, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %200

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = bitcast i32* %83 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %84, %struct.pm8001_ioctl_payload** %4, align 8
  %85 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %86 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %85, i32 0, i32 0
  store i32 16384, i32* %86, align 8
  %87 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %88 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %90 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to %struct.fw_control_info*
  store %struct.fw_control_info* %91, %struct.fw_control_info** %7, align 8
  %92 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %93 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %94 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @HEADER_LEN, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %99 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %101 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %106 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %152

111:                                              ; preds = %82
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @HEADER_LEN, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %116 = srem i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @HEADER_LEN, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %123 = srem i32 %121, %122
  %124 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %125 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %127 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %131 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @HEADER_LEN, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %143 = srem i32 %141, %142
  %144 = call i32 @memcpy(i32* %129, i32* %138, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @HEADER_LEN, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %149 = srem i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %171

152:                                              ; preds = %111, %82
  %153 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %154 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %158 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %167 = call i32 @memcpy(i32* %156, i32* %165, i32 %166)
  %168 = load i32, i32* @IOCTL_BUF_SIZE, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %152, %118
  %172 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %173 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %172, i32 0, i32 0
  store i32* @completion, i32** %173, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)** %175, align 8
  %177 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %178 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %4, align 8
  %179 = call i32 %176(%struct.pm8001_hba_info* %177, %struct.pm8001_ioctl_payload* %178)
  store i32 %179, i32* %13, align 4
  %180 = call i32 @wait_for_completion(i32* @completion)
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %171
  %184 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %185 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @FLASH_UPDATE_IN_PROGRESS, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %183, %171
  %190 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %191 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %13, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @kfree(i32* %194)
  store i32* null, i32** %5, align 8
  br label %200

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %78

200:                                              ; preds = %189, %78
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %42

207:                                              ; preds = %203, %42
  br label %208

208:                                              ; preds = %207, %39
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @kfree(i32* %209)
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %29
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
