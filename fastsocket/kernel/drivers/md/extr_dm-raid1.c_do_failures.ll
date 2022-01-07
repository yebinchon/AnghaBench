; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_failures.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_failures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i64, i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio_list*)* @do_failures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_failures(%struct.mirror_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  %6 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %7 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %55

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %54, %15
  %17 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %18 = call %struct.bio* @bio_list_pop(%struct.bio_list* %17)
  store %struct.bio* %18, %struct.bio** %5, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %22 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %27 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %29 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = call i32 @dm_rh_mark_nosync(i32 %30, %struct.bio* %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %35 = call i32 @get_valid_mirror(%struct.mirror_set* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @bio_endio(%struct.bio* %38, i32 %40)
  br label %54

42:                                               ; preds = %33
  %43 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %44 = call i64 @errors_handled(%struct.mirror_set* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = call i32 @hold_bio(%struct.mirror_set* %47, %struct.bio* %48)
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @bio_endio(%struct.bio* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %37
  br label %16

55:                                               ; preds = %14, %16
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @dm_rh_mark_nosync(i32, %struct.bio*) #1

declare dso_local i32 @get_valid_mirror(%struct.mirror_set*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @errors_handled(%struct.mirror_set*) #1

declare dso_local i32 @hold_bio(%struct.mirror_set*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
