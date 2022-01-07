; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_vmu_flash_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_vmu_flash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.mdev_part* }
%struct.mdev_part = type { i32, %struct.maple_device* }
%struct.maple_device = type { i32 }
%struct.memcard = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vmu_cache* }
%struct.vmu_cache = type { i64, i64, i64, i64 }
%struct.vmu_block = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @vmu_flash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmu_flash_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.maple_device*, align 8
  %13 = alloca %struct.memcard*, align 8
  %14 = alloca %struct.mdev_part*, align 8
  %15 = alloca %struct.vmu_cache*, align 8
  %16 = alloca %struct.vmu_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %216

28:                                               ; preds = %5
  %29 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load %struct.mdev_part*, %struct.mdev_part** %30, align 8
  store %struct.mdev_part* %31, %struct.mdev_part** %14, align 8
  %32 = load %struct.mdev_part*, %struct.mdev_part** %14, align 8
  %33 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %32, i32 0, i32 1
  %34 = load %struct.maple_device*, %struct.maple_device** %33, align 8
  store %struct.maple_device* %34, %struct.maple_device** %12, align 8
  %35 = load %struct.mdev_part*, %struct.mdev_part** %14, align 8
  %36 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %19, align 4
  %38 = load %struct.maple_device*, %struct.maple_device** %12, align 8
  %39 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %38)
  store %struct.memcard* %39, %struct.memcard** %13, align 8
  %40 = load %struct.memcard*, %struct.memcard** %13, align 8
  %41 = getelementptr inbounds %struct.memcard, %struct.memcard* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %21, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.memcard*, %struct.memcard** %13, align 8
  %53 = getelementptr inbounds %struct.memcard, %struct.memcard* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %50, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %28
  %59 = load i32, i32* %21, align 4
  %60 = load %struct.memcard*, %struct.memcard** %13, align 8
  %61 = getelementptr inbounds %struct.memcard, %struct.memcard* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %58, %28
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %216

73:                                               ; preds = %67
  %74 = load %struct.memcard*, %struct.memcard** %13, align 8
  %75 = getelementptr inbounds %struct.memcard, %struct.memcard* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.vmu_cache*, %struct.vmu_cache** %80, align 8
  store %struct.vmu_cache* %81, %struct.vmu_cache** %15, align 8
  br label %82

82:                                               ; preds = %207, %73
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %88 = load i32, i32* %19, align 4
  %89 = call %struct.vmu_block* @ofs_to_block(i64 %86, %struct.mtd_info* %87, i32 %88)
  store %struct.vmu_block* %89, %struct.vmu_block** %16, align 8
  %90 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %91 = icmp ne %struct.vmu_block* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %216

95:                                               ; preds = %82
  %96 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %97 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %178

100:                                              ; preds = %95
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %103 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HZ, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i64 @time_before(i32 %101, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %178

109:                                              ; preds = %100
  %110 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %111 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %114 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %178

117:                                              ; preds = %109
  %118 = load %struct.memcard*, %struct.memcard** %13, align 8
  %119 = getelementptr inbounds %struct.memcard, %struct.memcard* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %123 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %121, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %20, align 4
  %127 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %128 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %129, %130
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %131, %133
  %135 = load %struct.memcard*, %struct.memcard** %13, align 8
  %136 = getelementptr inbounds %struct.memcard, %struct.memcard* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = icmp ult i64 %134, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %117
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %146 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %149 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %147, %150
  %152 = load i64, i64* %9, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %152, %154
  %156 = trunc i64 %155 to i32
  %157 = call i32 @memcpy(i32* %144, i64 %151, i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %17, align 4
  br label %177

160:                                              ; preds = %117
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %166 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %169 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %167, %170
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @memcpy(i32* %164, i64 %171, i32 %172)
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %160, %140
  br label %204

178:                                              ; preds = %109, %100, %95
  %179 = load i64, i64* %8, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %179, %181
  %183 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %184 = call zeroext i8 @vmu_flash_read_char(i64 %182, i32* %18, %struct.mtd_info* %183)
  store i8 %184, i8* %22, align 1
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64*, i64** %10, align 8
  store i64 %189, i64* %190, align 8
  %191 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %192 = call i32 @kfree(%struct.vmu_block* %191)
  %193 = load i8, i8* %22, align 1
  %194 = zext i8 %193 to i32
  store i32 %194, i32* %6, align 4
  br label %216

195:                                              ; preds = %178
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i8, i8* %22, align 1
  %201 = call i32 @memset(i32* %199, i8 zeroext %200, i32 1)
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %195, %177
  %205 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %206 = call i32 @kfree(%struct.vmu_block* %205)
  br label %207

207:                                              ; preds = %204
  %208 = load i64, i64* %9, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp ugt i64 %208, %210
  br i1 %211, label %82, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64*, i64** %10, align 8
  store i64 %214, i64* %215, align 8
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %212, %187, %92, %70, %25
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local %struct.vmu_block* @ofs_to_block(i64, %struct.mtd_info*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local zeroext i8 @vmu_flash_read_char(i64, i32*, %struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.vmu_block*) #1

declare dso_local i32 @memset(i32*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
