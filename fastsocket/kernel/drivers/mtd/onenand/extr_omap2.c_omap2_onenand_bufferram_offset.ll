; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_omap2.c_omap2_onenand_bufferram_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_omap2.c_omap2_onenand_bufferram_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32 }

@ONENAND_DATARAM = common dso_local global i32 0, align 4
@ONENAND_SPARERAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @omap2_onenand_bufferram_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_onenand_bufferram_offset(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 1
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %8, align 8
  store %struct.onenand_chip* %9, %struct.onenand_chip** %6, align 8
  %10 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %11 = call i64 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ONENAND_DATARAM, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %19 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ONENAND_SPARERAM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
