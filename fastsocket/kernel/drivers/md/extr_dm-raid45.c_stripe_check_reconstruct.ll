; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_check_reconstruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_check_reconstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@S_RECONSTRUCT_SET = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@S_RECONSTRUCTED = common dso_local global i64 0, align 8
@S_DEGRADED = common dso_local global i64 0, align 8
@S_NOSYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_check_reconstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_check_reconstruct(%struct.stripe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  %7 = load %struct.stripe*, %struct.stripe** %3, align 8
  %8 = getelementptr inbounds %struct.stripe, %struct.stripe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.raid_set* @RS(i32 %9)
  store %struct.raid_set* %10, %struct.raid_set** %4, align 8
  %11 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %12 = call i64 @RSDead(%struct.raid_set* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.stripe*, %struct.stripe** %3, align 8
  %16 = call i32 @ClearStripeReconstruct(%struct.stripe* %15)
  %17 = load %struct.stripe*, %struct.stripe** %3, align 8
  %18 = call i32 @ClearStripeReconstructed(%struct.stripe* %17)
  %19 = load %struct.stripe*, %struct.stripe** %3, align 8
  %20 = call i32 @stripe_allow_io(%struct.stripe* %19)
  store i32 0, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.stripe*, %struct.stripe** %3, align 8
  %23 = call i64 @StripeReconstruct(%struct.stripe* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S_RECONSTRUCT_SET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @atomic_inc(i64 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %21
  %35 = load %struct.stripe*, %struct.stripe** %3, align 8
  %36 = call i32 @stripe_allow_io(%struct.stripe* %35)
  %37 = load %struct.stripe*, %struct.stripe** %3, align 8
  %38 = call i64 @StripeReconstructed(%struct.stripe* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %42 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @S_RECONSTRUCTED, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @atomic_inc(i64 %45)
  store i32 0, i32* %2, align 4
  br label %94

47:                                               ; preds = %34
  %48 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %49 = call i32 @RSDegraded(%struct.raid_set* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %54 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @S_DEGRADED, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @atomic_inc(i64 %57)
  %59 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %60 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.stripe*, %struct.stripe** %3, align 8
  %67 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @stripe_chunk_set_io_flags(%struct.stripe* %66, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %47
  %74 = load %struct.stripe*, %struct.stripe** %3, align 8
  %75 = call i32 @dev_for_parity(%struct.stripe* %74, i32* %5)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %77 = call i64 @RSEnforceParityCreation(%struct.raid_set* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %84 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @S_NOSYNC, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @atomic_inc(i64 %87)
  %89 = load %struct.stripe*, %struct.stripe** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @stripe_chunk_set_io_flags(%struct.stripe* %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %82, %52, %40, %25, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i64 @RSDead(%struct.raid_set*) #1

declare dso_local i32 @ClearStripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @ClearStripeReconstructed(%struct.stripe*) #1

declare dso_local i32 @stripe_allow_io(%struct.stripe*) #1

declare dso_local i64 @StripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i64 @StripeReconstructed(%struct.stripe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RSDegraded(%struct.raid_set*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stripe_chunk_set_io_flags(%struct.stripe*, i32) #1

declare dso_local i32 @dev_for_parity(%struct.stripe*, i32*) #1

declare dso_local i64 @RSEnforceParityCreation(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
