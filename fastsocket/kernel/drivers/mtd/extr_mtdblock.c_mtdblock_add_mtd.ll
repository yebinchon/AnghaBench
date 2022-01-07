; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_add_mtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_mtdblock_add_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_ops = type { i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.mtd_blktrans_dev = type { i32, i32, %struct.mtd_blktrans_ops*, i32, %struct.mtd_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_blktrans_ops*, %struct.mtd_info*)* @mtdblock_add_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdblock_add_mtd(%struct.mtd_blktrans_ops* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca %struct.mtd_blktrans_ops*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  store %struct.mtd_blktrans_ops* %0, %struct.mtd_blktrans_ops** %3, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mtd_blktrans_dev* @kzalloc(i32 32, i32 %6)
  store %struct.mtd_blktrans_dev* %7, %struct.mtd_blktrans_dev** %5, align 8
  %8 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %9 = icmp ne %struct.mtd_blktrans_dev* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %13, i32 0, i32 4
  store %struct.mtd_info* %12, %struct.mtd_info** %14, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 9
  %24 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %3, align 8
  %27 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %28 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %27, i32 0, i32 2
  store %struct.mtd_blktrans_ops* %26, %struct.mtd_blktrans_ops** %28, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MTD_WRITEABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %11
  %36 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %11
  %39 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %40 = call i32 @add_mtd_blktrans_dev(%struct.mtd_blktrans_dev* %39)
  br label %41

41:                                               ; preds = %38, %10
  ret void
}

declare dso_local %struct.mtd_blktrans_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @add_mtd_blktrans_dev(%struct.mtd_blktrans_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
