; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.aic7xxx_scb*, %struct.aic7xxx_scb* }
%struct.aic7xxx_scb = type { %struct.aic7xxx_scb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.aic7xxx_scb*)* @scbq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scbq_remove(%struct.TYPE_4__* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  %5 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %7, align 8
  %9 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %10 = icmp eq %struct.aic7xxx_scb* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @scbq_remove_head(%struct.TYPE_4__* %12)
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %16, align 8
  store %struct.aic7xxx_scb* %17, %struct.aic7xxx_scb** %5, align 8
  br label %18

18:                                               ; preds = %29, %14
  %19 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %20 = icmp ne %struct.aic7xxx_scb* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %23 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %22, i32 0, i32 0
  %24 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %23, align 8
  %25 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %26 = icmp ne %struct.aic7xxx_scb* %24, %25
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %31 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %30, i32 0, i32 0
  %32 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %31, align 8
  store %struct.aic7xxx_scb* %32, %struct.aic7xxx_scb** %5, align 8
  br label %18

33:                                               ; preds = %27
  %34 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %35 = icmp ne %struct.aic7xxx_scb* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %38 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %37, i32 0, i32 0
  %39 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %38, align 8
  %40 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %41 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %40, i32 0, i32 0
  store %struct.aic7xxx_scb* %39, %struct.aic7xxx_scb** %41, align 8
  %42 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %43 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %42, i32 0, i32 0
  %44 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %43, align 8
  %45 = icmp eq %struct.aic7xxx_scb* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store volatile %struct.aic7xxx_scb* %47, %struct.aic7xxx_scb** %49, align 8
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @scbq_remove_head(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
