; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_schedule_ubi_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_schedule_ubi_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i32, i64, i32 }
%struct.ubi_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_work*)* @schedule_ubi_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_ubi_work(%struct.ubi_device* %0, %struct.ubi_work* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_work*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_work* %1, %struct.ubi_work** %4, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %6 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ubi_work*, %struct.ubi_work** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %8, i32 0, i32 0
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 4
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubi_assert(i32 %17)
  %19 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wake_up_process(i32 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
