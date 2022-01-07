; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_irq_check_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_irq_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.irb = type { %struct.irb*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%4x sense:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.irb*)* @qdio_irq_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_irq_check_sense(%struct.qdio_irq* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca %struct.irb*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %5 = load %struct.irb*, %struct.irb** %4, align 8
  %6 = getelementptr inbounds %struct.irb, %struct.irb* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %14 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.irb*, %struct.irb** %4, align 8
  %19 = call i32 @DBF_ERROR_HEX(%struct.irb* %18, i32 64)
  %20 = load %struct.irb*, %struct.irb** %4, align 8
  %21 = getelementptr inbounds %struct.irb, %struct.irb* %20, i32 0, i32 0
  %22 = load %struct.irb*, %struct.irb** %21, align 8
  %23 = call i32 @DBF_ERROR_HEX(%struct.irb* %22, i32 64)
  br label %24

24:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i32 @DBF_ERROR_HEX(%struct.irb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
