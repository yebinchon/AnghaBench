; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ro_spine = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@lower_bound = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_lookup(%struct.dm_btree_info* %0, i32 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_btree_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ro_spine, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %19 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %25 = call i32 @init_ro_spine(%struct.ro_spine* %15, %struct.dm_btree_info* %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %76, %4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %29 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %17, align 8
  %38 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %39 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  br label %44

42:                                               ; preds = %32
  %43 = bitcast i32* %14 to i8*
  store i8* %43, i8** %17, align 8
  store i64 8, i64* %16, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @lower_bound, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @btree_lookup_raw(%struct.ro_spine* %15, i32 %45, i64 %50, i32 %51, i64* %13, i8* %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %13, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = call i32 @exit_ro_spine(%struct.ro_spine* %15)
  %67 = load i32, i32* @ENODATA, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %82

69:                                               ; preds = %57
  br label %73

70:                                               ; preds = %44
  %71 = call i32 @exit_ro_spine(%struct.ro_spine* %15)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %82

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @le64_to_cpu(i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %26

79:                                               ; preds = %26
  %80 = call i32 @exit_ro_spine(%struct.ro_spine* %15)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %70, %65
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @init_ro_spine(%struct.ro_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @btree_lookup_raw(%struct.ro_spine*, i32, i64, i32, i64*, i8*, i64) #1

declare dso_local i32 @exit_ro_spine(%struct.ro_spine*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
