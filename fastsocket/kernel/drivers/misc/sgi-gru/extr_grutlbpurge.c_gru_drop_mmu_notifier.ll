; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_drop_mmu_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_drop_mmu_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gru_mm_struct = type { i32, i32, i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gms %p, refcnt %d, released %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@gms_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_drop_mmu_notifier(%struct.gru_mm_struct* %0) #0 {
  %2 = alloca %struct.gru_mm_struct*, align 8
  store %struct.gru_mm_struct* %0, %struct.gru_mm_struct** %2, align 8
  %3 = load i32, i32* @grudev, align 4
  %4 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %5 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %5, i32 0, i32 2
  %7 = call i32 @atomic_read(i32* %6)
  %8 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gru_dbg(i32 %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.gru_mm_struct* %4, i32 %7, i32 %10)
  %12 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %12, i32 0, i32 2
  %14 = call i64 @atomic_dec_return(i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %23 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmu_notifier_unregister(i32* %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %2, align 8
  %30 = call i32 @kfree(%struct.gru_mm_struct* %29)
  %31 = load i32, i32* @gms_free, align 4
  %32 = call i32 @STAT(i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @gru_dbg(i32, i8*, %struct.gru_mm_struct*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @mmu_notifier_unregister(i32*, i32) #1

declare dso_local i32 @kfree(%struct.gru_mm_struct*) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
