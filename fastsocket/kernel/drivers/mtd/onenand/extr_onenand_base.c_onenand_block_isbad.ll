; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_block_isbad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_block_isbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FL_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64)* @onenand_block_isbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_block_isbad(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = load i32, i32* @FL_READING, align 4
  %18 = call i32 @onenand_get_device(%struct.mtd_info* %16, i32 %17)
  %19 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @onenand_block_isbad_nolock(%struct.mtd_info* %19, i64 %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %23 = call i32 @onenand_release_device(%struct.mtd_info* %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @onenand_get_device(%struct.mtd_info*, i32) #1

declare dso_local i32 @onenand_block_isbad_nolock(%struct.mtd_info*, i64, i32) #1

declare dso_local i32 @onenand_release_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
