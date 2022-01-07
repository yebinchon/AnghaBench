; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_phram_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_phram_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32* }
%struct.erase_info = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @phram_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phram_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %11 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %14 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %27 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %31 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memset(i32* %29, i32 255, i64 %32)
  %34 = load i32, i32* @MTD_ERASE_DONE, align 4
  %35 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %36 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %38 = call i32 @mtd_erase_callback(%struct.erase_info* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %24, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
