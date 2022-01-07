; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_r1_bio_write_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_r1_bio_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32 }

@R1BIO_WriteError = common dso_local global i32 0, align 4
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @r1_bio_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r1_bio_write_done(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %3 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %4 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %3, i32 0, i32 1
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load i32, i32* @R1BIO_WriteError, align 4
  %10 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %11 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %16 = call i32 @reschedule_retry(%struct.r1bio* %15)
  br label %32

17:                                               ; preds = %8
  %18 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %19 = call i32 @close_write(%struct.r1bio* %18)
  %20 = load i32, i32* @R1BIO_MadeGood, align 4
  %21 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %27 = call i32 @reschedule_retry(%struct.r1bio* %26)
  br label %31

28:                                               ; preds = %17
  %29 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %30 = call i32 @raid_end_bio_io(%struct.r1bio* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %7, %31, %14
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r1bio*) #1

declare dso_local i32 @close_write(%struct.r1bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
