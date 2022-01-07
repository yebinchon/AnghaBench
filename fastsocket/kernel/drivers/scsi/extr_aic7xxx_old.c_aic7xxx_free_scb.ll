; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_free_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_free_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.aic7xxx_scb = type { %struct.TYPE_3__*, i64, i64, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@SCB_FREE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, %struct.aic7xxx_scb*)* @aic7xxx_free_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_free_scb(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %4, align 8
  %5 = load i32, i32* @SCB_FREE, align 4
  %6 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %7 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 8
  %8 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %11 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %13 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %15 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %17 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %21 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @SCB_LIST_NULL, align 4
  %25 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %26 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %30 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %34 = call i32 @scbq_insert_head(i32* %32, %struct.aic7xxx_scb* %33)
  ret void
}

declare dso_local i32 @scbq_insert_head(i32*, %struct.aic7xxx_scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
