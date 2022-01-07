; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_fail_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_fail_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stripe_chunk = type { %struct.bio_list* }
%struct.bio_list = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*)* @stripe_fail_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_fail_io(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stripe_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_list*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %8 = load %struct.stripe*, %struct.stripe** %2, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.raid_set* @RS(i32 %10)
  store %struct.raid_set* %11, %struct.raid_set** %3, align 8
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load %struct.stripe*, %struct.stripe** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %21, i32 %22)
  store %struct.stripe_chunk* %23, %struct.stripe_chunk** %5, align 8
  %24 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %25 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %24, i32 0, i32 0
  %26 = load %struct.bio_list*, %struct.bio_list** %25, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.bio_list* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %20
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %34 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %33, i32 0, i32 0
  %35 = load %struct.bio_list*, %struct.bio_list** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %35, i64 %37
  store %struct.bio_list* %38, %struct.bio_list** %7, align 8
  %39 = load %struct.bio_list*, %struct.bio_list** %7, align 8
  %40 = call i32 @bio_list_empty(%struct.bio_list* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  %43 = load %struct.stripe*, %struct.stripe** %2, align 8
  %44 = load %struct.bio_list*, %struct.bio_list** %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @bio_list_endio(%struct.stripe* %43, %struct.bio_list* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %42, %32
  br label %28

50:                                               ; preds = %28
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.stripe*, %struct.stripe** %2, align 8
  %53 = call i32 @stripe_io_ref(%struct.stripe* %52)
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.stripe*, %struct.stripe** %2, align 8
  %56 = call i32 @stripe_ref(%struct.stripe* %55)
  %57 = call i32 @BUG_ON(i32 %56)
  ret void
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bio_list*) #1

declare dso_local i32 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i32 @bio_list_endio(%struct.stripe*, %struct.bio_list*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_io_ref(%struct.stripe*) #1

declare dso_local i32 @stripe_ref(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
