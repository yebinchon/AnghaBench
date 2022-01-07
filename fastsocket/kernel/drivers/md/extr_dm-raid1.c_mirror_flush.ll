; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.mirror_set* }
%struct.mirror_set = type { i32, %struct.mirror*, i32 }
%struct.mirror = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.dm_io_region = type { i64, i64, i32 }

@DM_IO_KMEM = common dso_local global i32 0, align 4
@WRITE_FLUSH = common dso_local global i32 0, align 4
@DM_RAID1_FLUSH_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @mirror_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_flush(%struct.dm_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mirror*, align 8
  %10 = alloca %struct.dm_io_request, align 8
  %11 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.mirror_set*, %struct.mirror_set** %13, align 8
  store %struct.mirror_set* %14, %struct.mirror_set** %4, align 8
  %15 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %16 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.dm_io_region, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 0
  %22 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %23 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %29 = load i32, i32* @DM_IO_KMEM, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 2
  %31 = load i32, i32* @WRITE_FLUSH, align 4
  store i32 %31, i32* %30, align 8
  store i32 0, i32* %6, align 4
  %32 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %33 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %32, i32 0, i32 1
  %34 = load %struct.mirror*, %struct.mirror** %33, align 8
  store %struct.mirror* %34, %struct.mirror** %9, align 8
  br label %35

35:                                               ; preds = %59, %1
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %38 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.mirror*, %struct.mirror** %9, align 8
  %43 = getelementptr inbounds %struct.mirror, %struct.mirror* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i64 %48
  %50 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i64 %52
  %54 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i64 %56
  %58 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load %struct.mirror*, %struct.mirror** %9, align 8
  %63 = getelementptr inbounds %struct.mirror, %struct.mirror* %62, i32 1
  store %struct.mirror* %63, %struct.mirror** %9, align 8
  br label %35

64:                                               ; preds = %35
  store i64 -1, i64* %5, align 8
  %65 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %66 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dm_io(%struct.dm_io_request* %10, i32 %67, %struct.dm_io_region* %20, i64* %5)
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %95, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %78 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @test_bit(i32 %82, i64* %5)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %87 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %86, i32 0, i32 1
  %88 = load %struct.mirror*, %struct.mirror** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mirror, %struct.mirror* %88, i64 %90
  %92 = load i32, i32* @DM_RAID1_FLUSH_ERROR, align 4
  %93 = call i32 @fail_mirror(%struct.mirror* %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %75

98:                                               ; preds = %75
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

101:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i64*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local i32 @fail_mirror(%struct.mirror*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
