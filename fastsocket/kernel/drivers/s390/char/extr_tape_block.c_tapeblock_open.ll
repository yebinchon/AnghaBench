; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.tape_device = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"TBLOCK: missing tapemarks\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"%s: Opening the tape failed because of missing end-of-file marks\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@TS_BLKUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @tapeblock_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapeblock_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.tape_device*, align 8
  %8 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 0
  %11 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  store %struct.gendisk* %11, %struct.gendisk** %6, align 8
  %12 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tape_device* @tape_get_device_reference(i32 %14)
  store %struct.tape_device* %15, %struct.tape_device** %7, align 8
  %16 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %17 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_name(i32* %25)
  %27 = call i32 @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %32 = call i32 @tape_open(%struct.tape_device* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %49

36:                                               ; preds = %30
  %37 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %38 = call i32 @tapeblock_revalidate_disk(%struct.gendisk* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  %43 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %44 = load i32, i32* @TS_BLKUSE, align 4
  %45 = call i32 @tape_state_set(%struct.tape_device* %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %53

46:                                               ; preds = %41
  %47 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %48 = call i32 @tape_release(%struct.tape_device* %47)
  br label %49

49:                                               ; preds = %46, %35, %20
  %50 = load %struct.tape_device*, %struct.tape_device** %7, align 8
  %51 = call i32 @tape_put_device(%struct.tape_device* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.tape_device* @tape_get_device_reference(i32) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @tape_open(%struct.tape_device*) #1

declare dso_local i32 @tapeblock_revalidate_disk(%struct.gendisk*) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_release(%struct.tape_device*) #1

declare dso_local i32 @tape_put_device(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
