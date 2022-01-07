; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_block_markbad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (%struct.mtd_info.0*, i32)* }
%struct.mtd_info.0 = type opaque

@FL_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @onenand_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_block_markbad(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.onenand_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.onenand_chip*, %struct.onenand_chip** %9, align 8
  store %struct.onenand_chip* %10, %struct.onenand_chip** %6, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @onenand_block_isbad(%struct.mtd_info* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %24 = load i32, i32* @FL_WRITING, align 4
  %25 = call i32 @onenand_get_device(%struct.mtd_info* %23, i32 %24)
  %26 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %26, i32 0, i32 0
  %28 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %27, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %30 = bitcast %struct.mtd_info* %29 to %struct.mtd_info.0*
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %28(%struct.mtd_info.0* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = call i32 @onenand_release_device(%struct.mtd_info* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %20, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @onenand_block_isbad(%struct.mtd_info*, i32) #1

declare dso_local i32 @onenand_get_device(%struct.mtd_info*, i32) #1

declare dso_local i32 @onenand_release_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
