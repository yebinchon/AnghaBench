; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_is_same_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_is_same_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.hd_struct = type { i32 }
%struct.disk_part_tbl = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_same_part(%struct.gendisk* %0, i32 %1, i32 %2, %struct.hd_struct** %3, %struct.hd_struct** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hd_struct**, align 8
  %11 = alloca %struct.hd_struct**, align 8
  %12 = alloca %struct.disk_part_tbl*, align 8
  %13 = alloca %struct.hd_struct*, align 8
  %14 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hd_struct** %3, %struct.hd_struct*** %10, align 8
  store %struct.hd_struct** %4, %struct.hd_struct*** %11, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.hd_struct**, %struct.hd_struct*** %11, align 8
  store %struct.hd_struct* null, %struct.hd_struct** %15, align 8
  %16 = load %struct.hd_struct**, %struct.hd_struct*** %10, align 8
  store %struct.hd_struct* null, %struct.hd_struct** %16, align 8
  %17 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %18 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @rcu_dereference(i32 %19)
  %21 = bitcast i8* %20 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %21, %struct.disk_part_tbl** %12, align 8
  %22 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %12, align 8
  %23 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @rcu_dereference(i32 %24)
  %26 = bitcast i8* %25 to %struct.hd_struct*
  store %struct.hd_struct* %26, %struct.hd_struct** %13, align 8
  br label %27

27:                                               ; preds = %72, %5
  %28 = load %struct.hd_struct*, %struct.hd_struct** %13, align 8
  %29 = icmp ne %struct.hd_struct* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.hd_struct*, %struct.hd_struct** %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @sector_in_part(%struct.hd_struct* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.hd_struct*, %struct.hd_struct** %13, align 8
  %37 = load %struct.hd_struct**, %struct.hd_struct*** %10, align 8
  store %struct.hd_struct* %36, %struct.hd_struct** %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.hd_struct*, %struct.hd_struct** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @sector_in_part(%struct.hd_struct* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.hd_struct*, %struct.hd_struct** %13, align 8
  %45 = load %struct.hd_struct**, %struct.hd_struct*** %11, align 8
  store %struct.hd_struct* %44, %struct.hd_struct** %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.hd_struct**, %struct.hd_struct*** %10, align 8
  %48 = load %struct.hd_struct*, %struct.hd_struct** %47, align 8
  %49 = icmp ne %struct.hd_struct* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.hd_struct**, %struct.hd_struct*** %11, align 8
  %52 = load %struct.hd_struct*, %struct.hd_struct** %51, align 8
  %53 = icmp ne %struct.hd_struct* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.hd_struct**, %struct.hd_struct*** %10, align 8
  %56 = load %struct.hd_struct*, %struct.hd_struct** %55, align 8
  %57 = load %struct.hd_struct**, %struct.hd_struct*** %11, align 8
  %58 = load %struct.hd_struct*, %struct.hd_struct** %57, align 8
  %59 = icmp eq %struct.hd_struct* %56, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %86

61:                                               ; preds = %50, %46
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %12, align 8
  %64 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @rcu_dereference(i32 %69)
  %71 = bitcast i8* %70 to %struct.hd_struct*
  store %struct.hd_struct* %71, %struct.hd_struct** %13, align 8
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  %75 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %12, align 8
  %76 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %27, label %79

79:                                               ; preds = %72
  %80 = load %struct.hd_struct**, %struct.hd_struct*** %10, align 8
  %81 = load %struct.hd_struct*, %struct.hd_struct** %80, align 8
  %82 = load %struct.hd_struct**, %struct.hd_struct*** %11, align 8
  %83 = load %struct.hd_struct*, %struct.hd_struct** %82, align 8
  %84 = icmp eq %struct.hd_struct* %81, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %79, %54
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @sector_in_part(%struct.hd_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
