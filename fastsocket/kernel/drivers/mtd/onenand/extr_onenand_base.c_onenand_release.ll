; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.bbm_info*, %struct.onenand_chip* }
%struct.bbm_info = type { %struct.bbm_info* }
%struct.onenand_chip = type { i32, %struct.bbm_info*, %struct.bbm_info*, %struct.bbm_info* }

@ONENAND_PAGEBUF_ALLOC = common dso_local global i32 0, align 4
@ONENAND_OOBBUF_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @onenand_release(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca %struct.bbm_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 1
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  store %struct.onenand_chip* %7, %struct.onenand_chip** %3, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = call i32 @del_mtd_device(%struct.mtd_info* %8)
  %10 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %10, i32 0, i32 3
  %12 = load %struct.bbm_info*, %struct.bbm_info** %11, align 8
  %13 = icmp ne %struct.bbm_info* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %16 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %15, i32 0, i32 3
  %17 = load %struct.bbm_info*, %struct.bbm_info** %16, align 8
  store %struct.bbm_info* %17, %struct.bbm_info** %4, align 8
  %18 = load %struct.bbm_info*, %struct.bbm_info** %4, align 8
  %19 = getelementptr inbounds %struct.bbm_info, %struct.bbm_info* %18, i32 0, i32 0
  %20 = load %struct.bbm_info*, %struct.bbm_info** %19, align 8
  %21 = call i32 @kfree(%struct.bbm_info* %20)
  %22 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %22, i32 0, i32 3
  %24 = load %struct.bbm_info*, %struct.bbm_info** %23, align 8
  %25 = call i32 @kfree(%struct.bbm_info* %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %28 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ONENAND_PAGEBUF_ALLOC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 2
  %36 = load %struct.bbm_info*, %struct.bbm_info** %35, align 8
  %37 = call i32 @kfree(%struct.bbm_info* %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %40 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ONENAND_OOBBUF_ALLOC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %46, i32 0, i32 1
  %48 = load %struct.bbm_info*, %struct.bbm_info** %47, align 8
  %49 = call i32 @kfree(%struct.bbm_info* %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 0
  %53 = load %struct.bbm_info*, %struct.bbm_info** %52, align 8
  %54 = call i32 @kfree(%struct.bbm_info* %53)
  ret void
}

declare dso_local i32 @del_mtd_device(%struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.bbm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
