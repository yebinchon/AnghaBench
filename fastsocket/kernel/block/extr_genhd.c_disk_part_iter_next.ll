; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_part_iter_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_part_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32 }
%struct.disk_part_iter = type { i32, i32, %struct.hd_struct*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.disk_part_tbl = type { i32, i32* }

@DISK_PITER_REVERSE = common dso_local global i32 0, align 4
@DISK_PITER_INCL_PART0 = common dso_local global i32 0, align 4
@DISK_PITER_INCL_EMPTY_PART0 = common dso_local global i32 0, align 4
@DISK_PITER_INCL_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %0) #0 {
  %2 = alloca %struct.disk_part_iter*, align 8
  %3 = alloca %struct.disk_part_tbl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.disk_part_iter* %0, %struct.disk_part_iter** %2, align 8
  %7 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %8 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %7, i32 0, i32 2
  %9 = load %struct.hd_struct*, %struct.hd_struct** %8, align 8
  %10 = call i32 @disk_put_part(%struct.hd_struct* %9)
  %11 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %12 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %11, i32 0, i32 2
  store %struct.hd_struct* null, %struct.hd_struct** %12, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %15 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rcu_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %20, %struct.disk_part_tbl** %3, align 8
  %21 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %22 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DISK_PITER_REVERSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  %28 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %29 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DISK_PITER_INCL_PART0, align 4
  %32 = load i32, i32* @DISK_PITER_INCL_EMPTY_PART0, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %43

39:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %40 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %3, align 8
  %41 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %38
  br label %44

44:                                               ; preds = %102, %43
  %45 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %46 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %44
  %51 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %3, align 8
  %52 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %55 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @rcu_dereference(i32 %59)
  %61 = bitcast i8* %60 to %struct.hd_struct*
  store %struct.hd_struct* %61, %struct.hd_struct** %6, align 8
  %62 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %63 = icmp ne %struct.hd_struct* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %102

65:                                               ; preds = %50
  %66 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %67 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %65
  %71 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %72 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DISK_PITER_INCL_EMPTY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %70
  %78 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %79 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DISK_PITER_INCL_EMPTY_PART0, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %86 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %77
  br label %102

90:                                               ; preds = %84, %70, %65
  %91 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %92 = call i32 @part_to_dev(%struct.hd_struct* %91)
  %93 = call i32 @get_device(i32 %92)
  %94 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %95 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %96 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %95, i32 0, i32 2
  store %struct.hd_struct* %94, %struct.hd_struct** %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %99 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %89, %64
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %105 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %44

108:                                              ; preds = %90, %44
  %109 = call i32 (...) @rcu_read_unlock()
  %110 = load %struct.disk_part_iter*, %struct.disk_part_iter** %2, align 8
  %111 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %110, i32 0, i32 2
  %112 = load %struct.hd_struct*, %struct.hd_struct** %111, align 8
  ret %struct.hd_struct* %112
}

declare dso_local i32 @disk_put_part(%struct.hd_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @get_device(i32) #1

declare dso_local i32 @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
