; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_queue_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_queue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, %struct.bio_list, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio*, i32)* @queue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_bio(%struct.mirror_set* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_list*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @WRITE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %15 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %14, i32 0, i32 2
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %18 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %17, i32 0, i32 1
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.bio_list* [ %15, %13 ], [ %18, %16 ]
  store %struct.bio_list* %20, %struct.bio_list** %9, align 8
  %21 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %22 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %26 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call i32 @bio_list_add(%struct.bio_list* %31, %struct.bio* %32)
  %34 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %35 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %42 = call i32 @wakeup_mirrord(%struct.mirror_set* %41)
  br label %43

43:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
