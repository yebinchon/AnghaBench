; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_reset_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_reset_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HD_CMD = common dso_local global i32 0, align 4
@hd_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"hd: controller still busy\0A\00", align 1
@HD_ERROR = common dso_local global i32 0, align 4
@hd_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hd: controller reset failed: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_controller() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @HD_CMD, align 4
  %3 = call i32 @outb_p(i32 4, i32 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = call i32 (...) @barrier()
  br label %9

9:                                                ; preds = %7
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hd_info, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = load i32, i32* @HD_CMD, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %25, %12
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 1000
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 (...) @barrier()
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %20

28:                                               ; preds = %20
  %29 = call i64 (...) @drive_busy()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

33:                                               ; preds = %28
  %34 = load i32, i32* @HD_ERROR, align 4
  %35 = call i32 @inb(i32 %34)
  store i32 %35, i32* @hd_error, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @hd_error, align 4
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @drive_busy(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
