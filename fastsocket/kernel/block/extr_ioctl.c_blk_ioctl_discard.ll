; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_ioctl.c_blk_ioctl_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_ioctl.c_blk_ioctl_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32)* @blk_ioctl_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_ioctl_discard(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 %8, 511
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 511
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 9
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 9
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.block_device*, %struct.block_device** %5, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i_size_read(i32 %31)
  %33 = ashr i32 %32, 9
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %21
  %39 = load %struct.block_device*, %struct.block_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @blkdev_issue_discard(%struct.block_device* %39, i32 %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35, %18, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @blkdev_issue_discard(%struct.block_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
