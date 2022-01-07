; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_get_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_get_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32 }
%struct.gendisk = type { i32 }
%struct.disk_part_tbl = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @disk_get_part(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.hd_struct*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hd_struct*, align 8
  %7 = alloca %struct.disk_part_tbl*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hd_struct* null, %struct.hd_struct** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.hd_struct* null, %struct.hd_struct** %3, align 8
  br label %49

14:                                               ; preds = %2
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rcu_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %20, %struct.disk_part_tbl** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %23 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %14
  %30 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %31 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @rcu_dereference(i32 %36)
  %38 = bitcast i8* %37 to %struct.hd_struct*
  store %struct.hd_struct* %38, %struct.hd_struct** %6, align 8
  %39 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %40 = icmp ne %struct.hd_struct* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %43 = call i32 @part_to_dev(%struct.hd_struct* %42)
  %44 = call i32 @get_device(i32 %43)
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %14
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  store %struct.hd_struct* %48, %struct.hd_struct** %3, align 8
  br label %49

49:                                               ; preds = %46, %13
  %50 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  ret %struct.hd_struct* %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_device(i32) #1

declare dso_local i32 @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
