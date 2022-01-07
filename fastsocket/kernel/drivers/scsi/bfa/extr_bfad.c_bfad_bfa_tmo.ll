; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_bfa_tmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_bfa_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@BFA_TIMER_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_bfa_tmo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.bfad_s*
  store %struct.bfad_s* %7, %struct.bfad_s** %3, align 8
  %8 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @bfa_timer_beat(i32* %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 2
  %18 = call i32 @bfa_comp_deq(%struct.TYPE_4__* %17, %struct.list_head* %5)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = call i32 @list_empty(%struct.list_head* %5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %1
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 2
  %28 = call i32 @bfa_comp_process(%struct.TYPE_4__* %27, %struct.list_head* %5)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 2
  %35 = call i32 @bfa_comp_free(%struct.TYPE_4__* %34, %struct.list_head* %5)
  %36 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %25, %1
  %41 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i32, i32* @BFA_TIMER_FREQ, align 4
  %45 = call i64 @msecs_to_jiffies(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @mod_timer(i32* %42, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_timer_beat(i32*) #1

declare dso_local i32 @bfa_comp_deq(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_comp_process(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @bfa_comp_free(%struct.TYPE_4__*, %struct.list_head*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
