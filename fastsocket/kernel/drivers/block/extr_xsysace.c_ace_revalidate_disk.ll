; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.ace_device* }
%struct.ace_device = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"ace_revalidate_disk()\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"requesting cf id and scheduling tasklet\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"revalidate complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @ace_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ace_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.ace_device*, align 8
  %4 = alloca i64, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load %struct.ace_device*, %struct.ace_device** %6, align 8
  store %struct.ace_device* %7, %struct.ace_device** %3, align 8
  %8 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %9 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %13 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %18 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %22 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %21, i32 0, i32 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %26 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %30 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %29, i32 0, i32 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %34 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %33, i32 0, i32 3
  %35 = call i32 @tasklet_schedule(i32* %34)
  %36 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %37 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %36, i32 0, i32 2
  %38 = call i32 @wait_for_completion(i32* %37)
  br label %39

39:                                               ; preds = %16, %1
  %40 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %41 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %45 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
