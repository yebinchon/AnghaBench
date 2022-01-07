; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_expand_part_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_expand_part_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, %struct.disk_part_tbl* }
%struct.disk_part_tbl = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_expand_part_tbl(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_part_tbl*, align 8
  %7 = alloca %struct.disk_part_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 1
  %14 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %13, align 8
  store %struct.disk_part_tbl* %14, %struct.disk_part_tbl** %6, align 8
  %15 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %16 = icmp ne %struct.disk_part_tbl* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %19 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %27 = call i32 @disk_max_parts(%struct.gendisk* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %32 = call i32 @disk_max_parts(%struct.gendisk* %31)
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %92

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %92

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 24, %45
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.disk_part_tbl* @kzalloc_node(i64 %47, i32 %48, i32 %51)
  store %struct.disk_part_tbl* %52, %struct.disk_part_tbl** %7, align 8
  %53 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %54 = icmp ne %struct.disk_part_tbl* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %42
  %59 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %60 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %59, i32 0, i32 2
  %61 = call i32 @INIT_RCU_HEAD(i32* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %64 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %85, %58
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %71 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %78 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rcu_assign_pointer(i32 %76, i32 %83)
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %90 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %91 = call i32 @disk_replace_part_tbl(%struct.gendisk* %89, %struct.disk_part_tbl* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %55, %41, %34
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @disk_max_parts(%struct.gendisk*) #1

declare dso_local %struct.disk_part_tbl* @kzalloc_node(i64, i32, i32) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @disk_replace_part_tbl(%struct.gendisk*, %struct.disk_part_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
