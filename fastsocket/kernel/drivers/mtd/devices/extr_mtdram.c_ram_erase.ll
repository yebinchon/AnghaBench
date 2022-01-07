; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.erase_info = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @ram_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ram_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %6 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %7 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %10 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %26 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %30 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memset(i8* %28, i32 255, i64 %31)
  %33 = load i32, i32* @MTD_ERASE_DONE, align 4
  %34 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %35 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %37 = call i32 @mtd_erase_callback(%struct.erase_info* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
