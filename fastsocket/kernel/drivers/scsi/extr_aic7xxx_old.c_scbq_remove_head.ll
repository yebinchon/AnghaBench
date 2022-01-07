; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_remove_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_remove_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_scb = type { %struct.aic7xxx_scb* }
%struct.TYPE_3__ = type { i32*, %struct.aic7xxx_scb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aic7xxx_scb* (%struct.TYPE_3__*)* @scbq_remove_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aic7xxx_scb* @scbq_remove_head(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  store %struct.aic7xxx_scb* %6, %struct.aic7xxx_scb** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %8, align 8
  %10 = icmp ne %struct.aic7xxx_scb* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %13, align 8
  %15 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %14, i32 0, i32 0
  %16 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store volatile %struct.aic7xxx_scb* %16, %struct.aic7xxx_scb** %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %21, align 8
  %23 = icmp eq %struct.aic7xxx_scb* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store volatile i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  ret %struct.aic7xxx_scb* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
