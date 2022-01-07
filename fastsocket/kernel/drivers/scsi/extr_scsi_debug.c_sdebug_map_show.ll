; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_map_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0-%u\0A\00", align 1
@sdebug_store_sectors = common dso_local global i32 0, align 4
@map_storep = common dso_local global i32 0, align 4
@map_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*)* @sdebug_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdebug_map_show(%struct.device_driver* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @scsi_debug_lbp()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @sdebug_store_sectors, align 4
  %13 = call i32 @scnprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @map_storep, align 4
  %18 = load i32, i32* @map_size, align 4
  %19 = call i32 @bitmap_scnlistprintf(i8* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 10, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @scsi_debug_lbp(...) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bitmap_scnlistprintf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
