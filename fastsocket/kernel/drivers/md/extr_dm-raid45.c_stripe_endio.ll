; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stripe_chunk = type { i32 }
%struct.bio_list = type { i32 }

@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.stripe*)* @stripe_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_endio(i32 %0, %struct.stripe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe_chunk*, align 8
  %9 = alloca %struct.bio_list*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.stripe* %1, %struct.stripe** %4, align 8
  %10 = load %struct.stripe*, %struct.stripe** %4, align 8
  %11 = getelementptr inbounds %struct.stripe, %struct.stripe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.raid_set* @RS(i32 %12)
  store %struct.raid_set* %13, %struct.raid_set** %5, align 8
  %14 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @READ, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %92, %39, %2
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %22
  %27 = load %struct.stripe*, %struct.stripe** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %27, i32 %28)
  store %struct.stripe_chunk* %29, %struct.stripe_chunk** %8, align 8
  %30 = load %struct.stripe_chunk*, %struct.stripe_chunk** %8, align 8
  %31 = call i32 @ChunkLocked(%struct.stripe_chunk* %30)
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.stripe_chunk*, %struct.stripe_chunk** %8, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.bio_list* @BL_CHUNK(%struct.stripe_chunk* %33, i32 %34)
  store %struct.bio_list* %35, %struct.bio_list** %9, align 8
  %36 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %37 = call i64 @bio_list_empty(%struct.bio_list* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %22

40:                                               ; preds = %26
  %41 = load %struct.stripe_chunk*, %struct.stripe_chunk** %8, align 8
  %42 = call i64 @ChunkError(%struct.stripe_chunk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load %struct.stripe_chunk*, %struct.stripe_chunk** %8, align 8
  %46 = call i32 @ChunkUptodate(%struct.stripe_chunk* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ true, %40 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %56 = call i32 @RSDead(%struct.raid_set* %55)
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.stripe*, %struct.stripe** %4, align 8
  %61 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @bio_list_endio(%struct.stripe* %60, %struct.bio_list* %61, i32 %62, i32 %64)
  br label %75

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.stripe*, %struct.stripe** %4, align 8
  %71 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @bio_list_endio(%struct.stripe* %70, %struct.bio_list* %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %69, %66
  br label %75

75:                                               ; preds = %74, %59
  br label %92

76:                                               ; preds = %49
  %77 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %78 = call i32 @RSDegraded(%struct.raid_set* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.stripe_chunk*, %struct.stripe_chunk** %8, align 8
  %82 = call i64 @ChunkDirty(%struct.stripe_chunk* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load %struct.stripe*, %struct.stripe** %4, align 8
  %89 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @bio_list_endio(%struct.stripe* %88, %struct.bio_list* %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %84, %75
  br label %22

93:                                               ; preds = %22
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ChunkLocked(%struct.stripe_chunk*) #1

declare dso_local %struct.bio_list* @BL_CHUNK(%struct.stripe_chunk*, i32) #1

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ChunkError(%struct.stripe_chunk*) #1

declare dso_local i32 @ChunkUptodate(%struct.stripe_chunk*) #1

declare dso_local i32 @RSDead(%struct.raid_set*) #1

declare dso_local i32 @bio_list_endio(%struct.stripe*, %struct.bio_list*, i32, i32) #1

declare dso_local i32 @RSDegraded(%struct.raid_set*) #1

declare dso_local i64 @ChunkDirty(%struct.stripe_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
