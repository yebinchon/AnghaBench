; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_flakey_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.flakey_c* }
%struct.flakey_c = type { i32, i32, i32, i64, i64, i32 }
%struct.bio = type { i32 }
%union.map_info = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@DROP_WRITES = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @flakey_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flakey_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %union.map_info*, align 8
  %8 = alloca %struct.flakey_c*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %union.map_info* %2, %union.map_info** %7, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.flakey_c*, %struct.flakey_c** %11, align 8
  store %struct.flakey_c* %12, %struct.flakey_c** %8, align 8
  %13 = load i32, i32* @jiffies, align 4
  %14 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %15 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 %13, %16
  %18 = load i32, i32* @HZ, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %22 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %25 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add i32 %23, %26
  %28 = urem i32 %20, %27
  %29 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %30 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %3
  %34 = load %union.map_info*, %union.map_info** %7, align 8
  %35 = bitcast %union.map_info* %34 to i32*
  store i32 1, i32* %35, align 4
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i64 @bio_data_dir(%struct.bio* %36)
  %38 = load i64, i64* @READ, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %76

41:                                               ; preds = %33
  %42 = load i32, i32* @DROP_WRITES, align 4
  %43 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %44 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %43, i32 0, i32 5
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.bio*, %struct.bio** %6, align 8
  %49 = call i32 @bio_endio(%struct.bio* %48, i32 0)
  %50 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %41
  %52 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %53 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %58 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WRITE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %65 = call i64 @all_corrupt_bio_flags_match(%struct.bio* %63, %struct.flakey_c* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.bio*, %struct.bio** %6, align 8
  %69 = load %struct.flakey_c*, %struct.flakey_c** %8, align 8
  %70 = call i32 @corrupt_bio_data(%struct.bio* %68, %struct.flakey_c* %69)
  br label %71

71:                                               ; preds = %67, %62
  br label %76

72:                                               ; preds = %56, %51
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %81

75:                                               ; preds = %3
  br label %76

76:                                               ; preds = %75, %71, %40
  %77 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = call i32 @flakey_map_bio(%struct.dm_target* %77, %struct.bio* %78)
  %80 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %72, %47
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @all_corrupt_bio_flags_match(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @corrupt_bio_data(%struct.bio*, %struct.flakey_c*) #1

declare dso_local i32 @flakey_map_bio(%struct.dm_target*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
