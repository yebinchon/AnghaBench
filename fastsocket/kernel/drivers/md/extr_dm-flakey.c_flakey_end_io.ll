; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.flakey_c* }
%struct.flakey_c = type { i64, i64 }
%struct.bio = type { i32 }
%union.map_info = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32, %union.map_info*)* @flakey_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_end_io(%struct.dm_target* %0, %struct.bio* %1, i32 %2, %union.map_info* %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.map_info*, align 8
  %9 = alloca %struct.flakey_c*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.map_info* %3, %union.map_info** %8, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.flakey_c*, %struct.flakey_c** %12, align 8
  store %struct.flakey_c* %13, %struct.flakey_c** %9, align 8
  %14 = load %union.map_info*, %union.map_info** %8, align 8
  %15 = bitcast %union.map_info* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.flakey_c*, %struct.flakey_c** %9, align 8
  %18 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = call i64 @bio_data_dir(%struct.bio* %28)
  %30 = load i64, i64* @READ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.flakey_c*, %struct.flakey_c** %9, align 8
  %34 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @READ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.bio*, %struct.bio** %6, align 8
  %40 = load %struct.flakey_c*, %struct.flakey_c** %9, align 8
  %41 = call i64 @all_corrupt_bio_flags_match(%struct.bio* %39, %struct.flakey_c* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = load %struct.flakey_c*, %struct.flakey_c** %9, align 8
  %46 = call i32 @corrupt_bio_data(%struct.bio* %44, %struct.flakey_c* %45)
  br label %47

47:                                               ; preds = %43, %38, %32, %27, %24, %21, %4
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @all_corrupt_bio_flags_match(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @corrupt_bio_data(%struct.bio*, %struct.flakey_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
