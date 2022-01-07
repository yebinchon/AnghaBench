; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_drive_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_hd.c_drive_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HD_STATUS = common dso_local global i32 0, align 4
@BUSY_STAT = common dso_local global i8 0, align 1
@READY_STAT = common dso_local global i8 0, align 1
@SEEK_STAT = common dso_local global i8 0, align 1
@STAT_OK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [16 x i8] c"reset timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @drive_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_busy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 500000
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load i32, i32* @HD_STATUS, align 4
  %9 = call zeroext i8 @inb_p(i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @BUSY_STAT, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @READY_STAT, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = load i8, i8* @SEEK_STAT, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = and i32 %11, %19
  %21 = load i8, i8* @STAT_OK, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %32

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %4

29:                                               ; preds = %4
  %30 = load i8, i8* %3, align 1
  %31 = call i32 @dump_status(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @dump_status(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
