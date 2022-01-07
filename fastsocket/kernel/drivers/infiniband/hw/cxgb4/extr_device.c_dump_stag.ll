; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_dump_stag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_dump_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_debugfs_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @dump_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_stag(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c4iw_debugfs_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.c4iw_debugfs_data*
  store %struct.c4iw_debugfs_data* %12, %struct.c4iw_debugfs_data** %8, align 8
  %13 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %8, align 8
  %14 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %8, align 8
  %17 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %8, align 8
  %26 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %8, align 8
  %29 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 8
  %35 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %8, align 8
  %42 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %24
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
