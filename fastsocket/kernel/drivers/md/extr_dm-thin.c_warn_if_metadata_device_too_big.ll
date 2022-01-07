; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_warn_if_metadata_device_too_big.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_warn_if_metadata_device_too_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@THIN_METADATA_MAX_SECTORS_WARNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"Metadata device %s is larger than %u sectors: excess space will not be used.\00", align 1
@THIN_METADATA_MAX_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_device*)* @warn_if_metadata_device_too_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_if_metadata_device_too_big(%struct.block_device* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %2, align 8
  %6 = load %struct.block_device*, %struct.block_device** %2, align 8
  %7 = call i64 @get_dev_size(%struct.block_device* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @BDEVNAME_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @THIN_METADATA_MAX_SECTORS_WARNING, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.block_device*, %struct.block_device** %2, align 8
  %17 = call i32 @bdevname(%struct.block_device* %16, i8* %11)
  %18 = load i32, i32* @THIN_METADATA_MAX_SECTORS, align 4
  %19 = call i32 @DMWARN(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %21)
  ret void
}

declare dso_local i64 @get_dev_size(%struct.block_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DMWARN(i8*, i32, i32) #1

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
