; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mirror = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DM_RAID1_READ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Read failure on mirror device %s.  Trying alternative device.\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Read failure on mirror device %s.  Failing I/O.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_callback(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mirror*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bio*
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = call %struct.mirror* @bio_get_m(%struct.bio* %9)
  store %struct.mirror* %10, %struct.mirror** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = call i32 @bio_set_m(%struct.bio* %11, i32* null)
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i32 @bio_endio(%struct.bio* %20, i32 0)
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.mirror*, %struct.mirror** %6, align 8
  %24 = load i32, i32* @DM_RAID1_READ_ERROR, align 4
  %25 = call i32 @fail_mirror(%struct.mirror* %23, i32 %24)
  %26 = load %struct.mirror*, %struct.mirror** %6, align 8
  %27 = call i32 @default_ok(%struct.mirror* %26)
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load %struct.mirror*, %struct.mirror** %6, align 8
  %32 = getelementptr inbounds %struct.mirror, %struct.mirror* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = call i64 @mirror_available(i32 %33, %struct.bio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30, %22
  %38 = load %struct.mirror*, %struct.mirror** %6, align 8
  %39 = getelementptr inbounds %struct.mirror, %struct.mirror* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DMWARN_LIMIT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mirror*, %struct.mirror** %6, align 8
  %45 = getelementptr inbounds %struct.mirror, %struct.mirror* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = call i32 @bio_rw(%struct.bio* %48)
  %50 = call i32 @queue_bio(i32 %46, %struct.bio* %47, i32 %49)
  br label %62

51:                                               ; preds = %30
  %52 = load %struct.mirror*, %struct.mirror** %6, align 8
  %53 = getelementptr inbounds %struct.mirror, %struct.mirror* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @bio_endio(%struct.bio* %58, i32 %60)
  br label %62

62:                                               ; preds = %51, %37, %19
  ret void
}

declare dso_local %struct.mirror* @bio_get_m(%struct.bio*) #1

declare dso_local i32 @bio_set_m(%struct.bio*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @fail_mirror(%struct.mirror*, i32) #1

declare dso_local i32 @default_ok(%struct.mirror*) #1

declare dso_local i64 @mirror_available(i32, %struct.bio*) #1

declare dso_local i32 @DMWARN_LIMIT(i8*, i32) #1

declare dso_local i32 @queue_bio(i32, %struct.bio*, i32) #1

declare dso_local i32 @bio_rw(%struct.bio*) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
