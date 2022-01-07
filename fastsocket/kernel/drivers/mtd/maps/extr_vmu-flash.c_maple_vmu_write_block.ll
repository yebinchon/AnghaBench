; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_maple_vmu_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_vmu-flash.c_maple_vmu_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.mdev_part* }
%struct.mdev_part = type { i32, %struct.maple_device* }
%struct.maple_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.memcard = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"VMU write at (%d, %d)failed - device is busy\0A\00", align 1
@MAPLE_FUNC_MEMCARD = common dso_local global i32 0, align 4
@MAPLE_COMMAND_BWRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Write at (%d, %d) of block 0x%X at phase %d failed: could not communicate with VMU\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"VMU (%d, %d): write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.mtd_info*)* @maple_vmu_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maple_vmu_write_block(i32 %0, i8* %1, %struct.mtd_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.memcard*, align 8
  %9 = alloca %struct.mdev_part*, align 8
  %10 = alloca %struct.maple_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.mtd_info* %2, %struct.mtd_info** %7, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load %struct.mdev_part*, %struct.mdev_part** %19, align 8
  store %struct.mdev_part* %20, %struct.mdev_part** %9, align 8
  %21 = load %struct.mdev_part*, %struct.mdev_part** %9, align 8
  %22 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %21, i32 0, i32 1
  %23 = load %struct.maple_device*, %struct.maple_device** %22, align 8
  store %struct.maple_device* %23, %struct.maple_device** %10, align 8
  %24 = load %struct.mdev_part*, %struct.mdev_part** %9, align 8
  %25 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %28 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %27)
  store %struct.memcard* %28, %struct.memcard** %8, align 8
  %29 = load %struct.memcard*, %struct.memcard** %8, align 8
  %30 = getelementptr inbounds %struct.memcard, %struct.memcard* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.memcard*, %struct.memcard** %8, align 8
  %33 = getelementptr inbounds %struct.memcard, %struct.memcard* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kmalloc(i32 %37, i32 %38)
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %199

45:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %187, %45
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.memcard*, %struct.memcard** %8, align 8
  %49 = getelementptr inbounds %struct.memcard, %struct.memcard* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %190

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = shl i32 %53, 24
  %55 = load i32, i32* %14, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = load i32*, i32** %17, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %17, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @memcpy(i32* %64, i8* %70, i32 %71)
  %73 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %74 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %73, i32 0, i32 4
  %75 = call i32 @atomic_read(i32* %74)
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %105

77:                                               ; preds = %52
  %78 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %79 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %82 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %81, i32 0, i32 4
  %83 = call i32 @atomic_read(i32* %82)
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* @HZ, align 4
  %87 = call i32 @wait_event_interruptible_timeout(i32 %80, i32 %85, i32 %86)
  %88 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %89 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %88, i32 0, i32 4
  %90 = call i32 @atomic_read(i32* %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %104

92:                                               ; preds = %77
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %96 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %95, i32 0, i32 2
  %97 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %98 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %101 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_notice(i32* %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  br label %196

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104, %52
  %106 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %107 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %106, i32 0, i32 4
  %108 = call i32 @atomic_set(i32* %107, i32 1)
  %109 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %110 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %111 = load i32, i32* @MAPLE_COMMAND_BWRITE, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sdiv i32 %112, 4
  %114 = add nsw i32 %113, 2
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @maple_add_packet(%struct.maple_device* %109, i32 %110, i32 %111, i32 %114, i32* %115)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %118 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %121 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %120, i32 0, i32 4
  %122 = call i32 @atomic_read(i32* %121)
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* @HZ, align 4
  %126 = sdiv i32 %125, 10
  %127 = call i32 @wait_event_interruptible_timeout(i32 %119, i32 %124, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %105
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %12, align 4
  %133 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %134 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %133, i32 0, i32 4
  %135 = call i32 @atomic_set(i32* %134, i32 0)
  br label %196

136:                                              ; preds = %105
  %137 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %138 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %137, i32 0, i32 4
  %139 = call i32 @atomic_read(i32* %138)
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %143 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %142, i32 0, i32 4
  %144 = call i32 @atomic_set(i32* %143, i32 0)
  br label %186

145:                                              ; preds = %136
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* @ERESTARTSYS, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %148, %145
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %12, align 4
  %156 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %157 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %156, i32 0, i32 2
  %158 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %159 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %162 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @dev_warn(i32* %157, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %168 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %167, i32 0, i32 4
  %169 = call i32 @atomic_set(i32* %168, i32 0)
  %170 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %171 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %170, i32 0, i32 3
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @kfree(i32* %174)
  %176 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %177 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %176, i32 0, i32 3
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  %180 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %181 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 @list_del_init(i32* %183)
  br label %196

185:                                              ; preds = %148
  br label %186

186:                                              ; preds = %185, %141
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %46

190:                                              ; preds = %46
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @kfree(i32* %191)
  %193 = load %struct.memcard*, %struct.memcard** %8, align 8
  %194 = getelementptr inbounds %struct.memcard, %struct.memcard* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %4, align 4
  br label %210

196:                                              ; preds = %153, %130, %92
  %197 = load i32*, i32** %17, align 8
  %198 = call i32 @kfree(i32* %197)
  br label %199

199:                                              ; preds = %196, %42
  %200 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %201 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %200, i32 0, i32 2
  %202 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %203 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.maple_device*, %struct.maple_device** %10, align 8
  %206 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(i32* %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %199, %190
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
