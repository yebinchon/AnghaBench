; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_hold_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_hold_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i32, i32, i32 }
%struct.bio = type { i32 }

@DM_ENDIO_REQUEUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio*)* @hold_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hold_bio(%struct.mirror_set* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %6 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %9 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %8, i32 0, i32 3
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %17 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @dm_noflush_suspending(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = load i32, i32* @DM_ENDIO_REQUEUE, align 4
  %24 = call i32 @bio_endio(%struct.bio* %22, i32 %23)
  br label %30

25:                                               ; preds = %12
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @bio_endio(%struct.bio* %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %33 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %32, i32 0, i32 1
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @bio_list_add(i32* %33, %struct.bio* %34)
  %36 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %37 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  br label %39

39:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @dm_noflush_suspending(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
