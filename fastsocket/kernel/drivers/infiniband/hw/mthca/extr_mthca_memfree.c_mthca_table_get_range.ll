; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_icm_table = type { i32 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_table_get_range(%struct.mthca_dev* %0, %struct.mthca_icm_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_icm_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_icm_table* %1, %struct.mthca_icm_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %14 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %7, align 8
  %15 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %32, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %25 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @mthca_table_get(%struct.mthca_dev* %24, %struct.mthca_icm_table* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %37

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %52

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %47 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mthca_table_put(%struct.mthca_dev* %46, %struct.mthca_icm_table* %47, i32 %48)
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %36
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @mthca_table_get(%struct.mthca_dev*, %struct.mthca_icm_table*, i32) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, %struct.mthca_icm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
