; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.gendisk* }
%struct.gendisk = type { %struct.tape_device* }
%struct.tape_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"tapeblock_ioctl(0x%0x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"device = %d:%d\0A\00", align 1
@tapeblock_major = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @tapeblock_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapeblock_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gendisk*, align 8
  %12 = alloca %struct.tape_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 1
  %15 = load %struct.gendisk*, %struct.gendisk** %14, align 8
  store %struct.gendisk* %15, %struct.gendisk** %11, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %17 = icmp ne %struct.gendisk* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 0
  %23 = load %struct.tape_device*, %struct.tape_device** %22, align 8
  store %struct.tape_device* %23, %struct.tape_device** %12, align 8
  %24 = load %struct.tape_device*, %struct.tape_device** %12, align 8
  %25 = icmp ne %struct.tape_device* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.block_device*, %struct.block_device** %5, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MINOR(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @tapeblock_major, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %42 [
    i32 21264, label %39
  ]

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
