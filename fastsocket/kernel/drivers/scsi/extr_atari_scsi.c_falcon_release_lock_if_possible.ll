; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_falcon_release_lock_if_possible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_falcon_release_lock_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NCR5380_hostdata = type { i32, i32, i32 }

@falcon_got_lock = common dso_local global i64 0, align 8
@falcon_dont_release = common dso_local global i64 0, align 8
@falcon_fairness_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NCR5380_hostdata*)* @falcon_release_lock_if_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_release_lock_if_possible(%struct.NCR5380_hostdata* %0) #0 {
  %2 = alloca %struct.NCR5380_hostdata*, align 8
  %3 = alloca i64, align 8
  store %struct.NCR5380_hostdata* %0, %struct.NCR5380_hostdata** %2, align 8
  %4 = call i64 (...) @IS_A_TT()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i64, i64* @falcon_got_lock, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %14 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %19 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %2, align 8
  %24 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @falcon_dont_release, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  br label %39

33:                                               ; preds = %27
  store i64 0, i64* @falcon_got_lock, align 8
  %34 = call i32 (...) @stdma_release()
  %35 = call i32 @wake_up(i32* @falcon_fairness_wait)
  br label %36

36:                                               ; preds = %33, %22, %17, %12, %7
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  br label %39

39:                                               ; preds = %36, %30, %6
  ret void
}

declare dso_local i64 @IS_A_TT(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @stdma_release(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
