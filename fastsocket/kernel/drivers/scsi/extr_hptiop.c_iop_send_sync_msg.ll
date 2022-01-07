; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hptiop.c_iop_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, i64, i64)* @iop_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_send_sync_msg(%struct.hptiop_hba* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %9 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %11 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32 (%struct.hptiop_hba*, i64)*, i32 (%struct.hptiop_hba*, i64)** %13, align 8
  %15 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 %14(%struct.hptiop_hba* %15, i64 %16)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %49, %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %24 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @spin_lock_irq(i32 %27)
  %29 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %30 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hptiop_hba*)*, i32 (%struct.hptiop_hba*)** %32, align 8
  %34 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %35 = call i32 %33(%struct.hptiop_hba* %34)
  %36 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %37 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_unlock_irq(i32 %40)
  %42 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %43 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %22
  br label %52

47:                                               ; preds = %22
  %48 = call i32 @msleep(i32 1)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %18

52:                                               ; preds = %46, %18
  %53 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %54 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 -1
  ret i32 %58
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
