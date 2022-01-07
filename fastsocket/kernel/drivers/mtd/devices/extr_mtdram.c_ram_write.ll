; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtdram.c_ram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @ram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ram_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 %12, %13
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %34

22:                                               ; preds = %5
  %23 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @memcpy(i8* %28, i32* %29, i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
