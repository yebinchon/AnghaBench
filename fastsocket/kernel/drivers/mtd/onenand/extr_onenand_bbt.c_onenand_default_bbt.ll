; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_bbt.c_onenand_default_bbt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_bbt.c_onenand_default_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { %struct.bbm_info* }
%struct.bbm_info = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@largepage_memorybased = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onenand_default_bbt(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.onenand_chip*, align 8
  %5 = alloca %struct.bbm_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  store %struct.onenand_chip* %8, %struct.onenand_chip** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bbm_info* @kzalloc(i32 8, i32 %9)
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %11, i32 0, i32 0
  store %struct.bbm_info* %10, %struct.bbm_info** %12, align 8
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 0
  %15 = load %struct.bbm_info*, %struct.bbm_info** %14, align 8
  %16 = icmp ne %struct.bbm_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %22 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %21, i32 0, i32 0
  %23 = load %struct.bbm_info*, %struct.bbm_info** %22, align 8
  store %struct.bbm_info* %23, %struct.bbm_info** %5, align 8
  %24 = load %struct.bbm_info*, %struct.bbm_info** %5, align 8
  %25 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.bbm_info*, %struct.bbm_info** %5, align 8
  %30 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %29, i32 0, i32 0
  store i32* @largepage_memorybased, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %33 = load %struct.bbm_info*, %struct.bbm_info** %5, align 8
  %34 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @onenand_scan_bbt(%struct.mtd_info* %32, i32* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.bbm_info* @kzalloc(i32, i32) #1

declare dso_local i32 @onenand_scan_bbt(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
