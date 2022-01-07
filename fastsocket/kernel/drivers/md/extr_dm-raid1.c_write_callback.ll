; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_write_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mirror_set = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mirror_set* }

@DM_RAID1_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_callback(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.mirror_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bio*
  store %struct.bio* %12, %struct.bio** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = call %struct.TYPE_4__* @bio_get_m(%struct.bio* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.mirror_set*, %struct.mirror_set** %15, align 8
  store %struct.mirror_set* %16, %struct.mirror_set** %8, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = call i32 @bio_set_m(%struct.bio* %17, i32* null)
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bio_endio(%struct.bio* %26, i32 %27)
  br label %78

29:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %33 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @test_bit(i32 %37, i64* %3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %42 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @DM_RAID1_WRITE_ERROR, align 4
  %48 = call i32 @fail_mirror(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %55 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %54, i32 0, i32 1
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %59 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %66 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %65, i32 0, i32 2
  %67 = load %struct.bio*, %struct.bio** %7, align 8
  %68 = call i32 @bio_list_add(%struct.TYPE_3__* %66, %struct.bio* %67)
  %69 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %70 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %69, i32 0, i32 1
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %77 = call i32 @wakeup_mirrord(%struct.mirror_set* %76)
  br label %78

78:                                               ; preds = %25, %75, %64
  ret void
}

declare dso_local %struct.TYPE_4__* @bio_get_m(%struct.bio*) #1

declare dso_local i32 @bio_set_m(%struct.bio*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @fail_mirror(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(%struct.TYPE_3__*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
