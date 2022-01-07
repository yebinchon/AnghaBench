; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"flush (%d pending works)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"flush more (%d pending works)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_flush(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %6 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @dbg_wl(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %7)
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = call i32 @do_work(%struct.ubi_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %14
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = call i32 @down_write(i32* %24)
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 1
  %28 = call i32 @up_write(i32* %27)
  br label %29

29:                                               ; preds = %45, %22
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dbg_wl(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %40 = call i32 @do_work(%struct.ubi_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %34
  br label %29

46:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @dbg_wl(i8*, i64) #1

declare dso_local i32 @do_work(%struct.ubi_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
