; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@C4IW_ID_TABLE_F_RANDOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_init_resource(%struct.c4iw_rdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.c4iw_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %10 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @C4IW_ID_TABLE_F_RANDOM, align 4
  %14 = call i32 @c4iw_id_table_alloc(i32* %11, i32 0, i32 %12, i32 1, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %20 = call i32 @c4iw_init_qid_table(%struct.c4iw_rdev* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %39

24:                                               ; preds = %18
  %25 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %26 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @c4iw_id_table_alloc(i32* %27, i32 0, i32 %28, i32 1, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %47

34:                                               ; preds = %32
  %35 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %36 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @c4iw_id_table_free(i32* %37)
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %5, align 8
  %41 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @c4iw_id_table_free(i32* %42)
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @c4iw_id_table_alloc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @c4iw_init_qid_table(%struct.c4iw_rdev*) #1

declare dso_local i32 @c4iw_id_table_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
