; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_one_write_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_one_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32 }

@R10BIO_WriteError = common dso_local global i32 0, align 4
@R10BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*)* @one_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_write_done(%struct.r10bio* %0) #0 {
  %2 = alloca %struct.r10bio*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %2, align 8
  %3 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %4 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %3, i32 0, i32 1
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load i32, i32* @R10BIO_WriteError, align 4
  %9 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %10 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %15 = call i32 @reschedule_retry(%struct.r10bio* %14)
  br label %31

16:                                               ; preds = %7
  %17 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %18 = call i32 @close_write(%struct.r10bio* %17)
  %19 = load i32, i32* @R10BIO_MadeGood, align 4
  %20 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %26 = call i32 @reschedule_retry(%struct.r10bio* %25)
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %29 = call i32 @raid_end_bio_io(%struct.r10bio* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %13
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r10bio*) #1

declare dso_local i32 @close_write(%struct.r10bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
