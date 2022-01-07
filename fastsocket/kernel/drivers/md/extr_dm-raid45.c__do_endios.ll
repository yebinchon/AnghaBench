; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c__do_endios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c__do_endios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64 }
%struct.stripe = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE_MERGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RAID set dead: failing ios to dead devices\00", align 1
@LIST_LRU = common dso_local global i64 0, align 8
@LIST_FLUSH = common dso_local global i64 0, align 8
@S_REQUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, %struct.stripe*, %struct.list_head*)* @_do_endios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_do_endios(%struct.raid_set* %0, %struct.stripe* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.stripe*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.stripe* %1, %struct.stripe** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.stripe*, %struct.stripe** %5, align 8
  %8 = call i32 @stripe_chunks_unlock(%struct.stripe* %7)
  %9 = load %struct.stripe*, %struct.stripe** %5, align 8
  %10 = call i64 @TestClearStripeError(%struct.stripe* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.stripe*, %struct.stripe** %5, align 8
  %14 = call i32 @rs_check_degrade(%struct.stripe* %13)
  %15 = load %struct.stripe*, %struct.stripe** %5, align 8
  %16 = call i32 @ClearStripeReconstruct(%struct.stripe* %15)
  %17 = load %struct.stripe*, %struct.stripe** %5, align 8
  %18 = call i32 @ClearStripeReconstructed(%struct.stripe* %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.stripe*, %struct.stripe** %5, align 8
  %21 = call i64 @StripeReconstruct(%struct.stripe* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.stripe*, %struct.stripe** %5, align 8
  %25 = call i32 @stripe_reconstruct(%struct.stripe* %24)
  %26 = load %struct.stripe*, %struct.stripe** %5, align 8
  %27 = call i32 @ClearStripeReconstruct(%struct.stripe* %26)
  %28 = load %struct.stripe*, %struct.stripe** %5, align 8
  %29 = call i32 @SetStripeReconstructed(%struct.stripe* %28)
  %30 = load %struct.stripe*, %struct.stripe** %5, align 8
  %31 = getelementptr inbounds %struct.stripe, %struct.stripe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  br label %33

33:                                               ; preds = %23, %19
  %34 = load i32, i32* @READ, align 4
  %35 = load %struct.stripe*, %struct.stripe** %5, align 8
  %36 = call i32 @stripe_endio(i32 %34, %struct.stripe* %35)
  %37 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %38 = call i32 @RSProhibitWrites(%struct.raid_set* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load %struct.stripe*, %struct.stripe** %5, align 8
  %42 = call i64 @StripeMerged(%struct.stripe* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.stripe*, %struct.stripe** %5, align 8
  %46 = call i32 @ClearStripeMerged(%struct.stripe* %45)
  %47 = load i32, i32* @WRITE_MERGED, align 4
  %48 = load %struct.stripe*, %struct.stripe** %5, align 8
  %49 = call i32 @stripe_endio(i32 %47, %struct.stripe* %48)
  br label %50

50:                                               ; preds = %44, %40, %33
  %51 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %52 = call i64 @RSDead(%struct.raid_set* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %56 = call i32 @TestSetRSDeadEndioMessage(%struct.raid_set* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @DMERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct.stripe*, %struct.stripe** %5, align 8
  %62 = call i32 @stripe_fail_io(%struct.stripe* %61)
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.stripe*, %struct.stripe** %5, align 8
  %65 = call i64 @stripe_ref(%struct.stripe* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load %struct.stripe*, %struct.stripe** %5, align 8
  %69 = getelementptr inbounds %struct.stripe, %struct.stripe* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LIST_LRU, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @list_empty(i64 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.stripe*, %struct.stripe** %5, align 8
  %79 = getelementptr inbounds %struct.stripe, %struct.stripe* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LIST_FLUSH, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.list_head*, %struct.list_head** %6, align 8
  %84 = call i32 @list_add_tail(i64 %82, %struct.list_head* %83)
  %85 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %86 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @S_REQUEUE, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @atomic_inc(i64 %89)
  br label %94

91:                                               ; preds = %63
  %92 = load %struct.stripe*, %struct.stripe** %5, align 8
  %93 = call i32 @stripe_lru_add(%struct.stripe* %92)
  br label %94

94:                                               ; preds = %91, %67
  ret void
}

declare dso_local i32 @stripe_chunks_unlock(%struct.stripe*) #1

declare dso_local i64 @TestClearStripeError(%struct.stripe*) #1

declare dso_local i32 @rs_check_degrade(%struct.stripe*) #1

declare dso_local i32 @ClearStripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @ClearStripeReconstructed(%struct.stripe*) #1

declare dso_local i64 @StripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @stripe_reconstruct(%struct.stripe*) #1

declare dso_local i32 @SetStripeReconstructed(%struct.stripe*) #1

declare dso_local i32 @stripe_endio(i32, %struct.stripe*) #1

declare dso_local i32 @RSProhibitWrites(%struct.raid_set*) #1

declare dso_local i64 @StripeMerged(%struct.stripe*) #1

declare dso_local i32 @ClearStripeMerged(%struct.stripe*) #1

declare dso_local i64 @RSDead(%struct.raid_set*) #1

declare dso_local i32 @TestSetRSDeadEndioMessage(%struct.raid_set*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @stripe_fail_io(%struct.stripe*) #1

declare dso_local i64 @stripe_ref(%struct.stripe*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i64) #1

declare dso_local i32 @list_add_tail(i64, %struct.list_head*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @stripe_lru_add(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
