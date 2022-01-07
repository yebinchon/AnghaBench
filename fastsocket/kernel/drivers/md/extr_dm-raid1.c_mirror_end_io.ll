; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.bio = type { i32 }
%union.map_info = type { %struct.dm_raid1_read_record* }
%struct.dm_raid1_read_record = type { %struct.dm_bio_details, %struct.mirror* }
%struct.dm_bio_details = type { i32 }
%struct.mirror = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mirror_set = type { i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@BIO_RW_AHEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Mirror read failed.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Mirror read failed from %s. Trying alternative device.\00", align 1
@DM_RAID1_READ_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"All replicated volumes dead, failing I/O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32, %union.map_info*)* @mirror_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_end_io(%struct.dm_target* %0, %struct.bio* %1, i32 %2, %union.map_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.map_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mirror_set*, align 8
  %12 = alloca %struct.mirror*, align 8
  %13 = alloca %struct.dm_bio_details*, align 8
  %14 = alloca %struct.dm_raid1_read_record*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.map_info* %3, %union.map_info** %9, align 8
  %15 = load %struct.bio*, %struct.bio** %7, align 8
  %16 = call i32 @bio_rw(%struct.bio* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.mirror_set*
  store %struct.mirror_set* %20, %struct.mirror_set** %11, align 8
  store %struct.mirror* null, %struct.mirror** %12, align 8
  store %struct.dm_bio_details* null, %struct.dm_bio_details** %13, align 8
  %21 = load %union.map_info*, %union.map_info** %9, align 8
  %22 = bitcast %union.map_info* %21 to %struct.dm_raid1_read_record**
  %23 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %22, align 8
  store %struct.dm_raid1_read_record* %23, %struct.dm_raid1_read_record** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @WRITE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %4
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BIO_FLUSH, align 4
  %32 = load i32, i32* @BIO_DISCARD, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %38 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %union.map_info*, %union.map_info** %9, align 8
  %41 = bitcast %union.map_info* %40 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dm_rh_dec(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %27
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %5, align 4
  br label %128

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %115

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EWOULDBLOCK, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.bio*, %struct.bio** %7, align 8
  %59 = load i32, i32* @BIO_RW_AHEAD, align 4
  %60 = call i64 @bio_rw_flagged(%struct.bio* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %115

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %69 = icmp ne %struct.dm_raid1_read_record* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %128

74:                                               ; preds = %67
  %75 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %76 = getelementptr inbounds %struct.dm_raid1_read_record, %struct.dm_raid1_read_record* %75, i32 0, i32 1
  %77 = load %struct.mirror*, %struct.mirror** %76, align 8
  store %struct.mirror* %77, %struct.mirror** %12, align 8
  %78 = load %struct.mirror*, %struct.mirror** %12, align 8
  %79 = getelementptr inbounds %struct.mirror, %struct.mirror* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.mirror*, %struct.mirror** %12, align 8
  %85 = load i32, i32* @DM_RAID1_READ_ERROR, align 4
  %86 = call i32 @fail_mirror(%struct.mirror* %84, i32 %85)
  %87 = load %struct.mirror*, %struct.mirror** %12, align 8
  %88 = call i64 @default_ok(%struct.mirror* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %74
  %91 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %92 = load %struct.bio*, %struct.bio** %7, align 8
  %93 = call i64 @mirror_available(%struct.mirror_set* %91, %struct.bio* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90, %74
  %96 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %97 = getelementptr inbounds %struct.dm_raid1_read_record, %struct.dm_raid1_read_record* %96, i32 0, i32 0
  store %struct.dm_bio_details* %97, %struct.dm_bio_details** %13, align 8
  %98 = load %struct.dm_bio_details*, %struct.dm_bio_details** %13, align 8
  %99 = load %struct.bio*, %struct.bio** %7, align 8
  %100 = call i32 @dm_bio_restore(%struct.dm_bio_details* %98, %struct.bio* %99)
  %101 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %102 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %103 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mempool_free(%struct.dm_raid1_read_record* %101, i32 %104)
  %106 = load %union.map_info*, %union.map_info** %9, align 8
  %107 = bitcast %union.map_info* %106 to %struct.dm_raid1_read_record**
  store %struct.dm_raid1_read_record* null, %struct.dm_raid1_read_record** %107, align 8
  %108 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %109 = load %struct.bio*, %struct.bio** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @queue_bio(%struct.mirror_set* %108, %struct.bio* %109, i32 %110)
  store i32 1, i32* %5, align 4
  br label %128

112:                                              ; preds = %90
  %113 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %63
  br label %115

115:                                              ; preds = %114, %62, %51
  %116 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %117 = icmp ne %struct.dm_raid1_read_record* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.dm_raid1_read_record*, %struct.dm_raid1_read_record** %14, align 8
  %120 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %121 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mempool_free(%struct.dm_raid1_read_record* %119, i32 %122)
  %124 = load %union.map_info*, %union.map_info** %9, align 8
  %125 = bitcast %union.map_info* %124 to %struct.dm_raid1_read_record**
  store %struct.dm_raid1_read_record* null, %struct.dm_raid1_read_record** %125, align 8
  br label %126

126:                                              ; preds = %118, %115
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %95, %70, %44
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @bio_rw(%struct.bio*) #1

declare dso_local i32 @dm_rh_dec(i32, i32) #1

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @fail_mirror(%struct.mirror*, i32) #1

declare dso_local i64 @default_ok(%struct.mirror*) #1

declare dso_local i64 @mirror_available(%struct.mirror_set*, %struct.bio*) #1

declare dso_local i32 @dm_bio_restore(%struct.dm_bio_details*, %struct.bio*) #1

declare dso_local i32 @mempool_free(%struct.dm_raid1_read_record*, i32) #1

declare dso_local i32 @queue_bio(%struct.mirror_set*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
