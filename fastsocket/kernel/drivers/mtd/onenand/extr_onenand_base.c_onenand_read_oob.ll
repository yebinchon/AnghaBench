; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 }
%struct.mtd_oob_ops = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FL_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* @onenand_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_read_oob(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.onenand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %11, align 8
  store %struct.onenand_chip* %12, %struct.onenand_chip** %8, align 8
  %13 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %14 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 130, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %3, %3
  br label %21

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %3, %17
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %16
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = load i32, i32* @FL_READING, align 4
  %24 = call i32 @onenand_get_device(%struct.mtd_info* %22, i32 %23)
  %25 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %26 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.onenand_chip*, %struct.onenand_chip** %8, align 8
  %31 = call i64 @ONENAND_IS_MLC(%struct.onenand_chip* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %37 = call i32 @onenand_mlc_read_ops_nolock(%struct.mtd_info* %34, i32 %35, %struct.mtd_oob_ops* %36)
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %42 = call i32 @onenand_read_ops_nolock(%struct.mtd_info* %39, i32 %40, %struct.mtd_oob_ops* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ %37, %33 ], [ %42, %38 ]
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %21
  %46 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %49 = call i32 @onenand_read_oob_nolock(%struct.mtd_info* %46, i32 %47, %struct.mtd_oob_ops* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %43
  %51 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %52 = call i32 @onenand_release_device(%struct.mtd_info* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @onenand_get_device(%struct.mtd_info*, i32) #1

declare dso_local i64 @ONENAND_IS_MLC(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_mlc_read_ops_nolock(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @onenand_read_ops_nolock(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @onenand_read_oob_nolock(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @onenand_release_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
