; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_check_and_setup_qebsm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_check_and_setup_qebsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QIB_RFLAGS_ENABLE_QEBSM = common dso_local global i32 0, align 4
@AC1_SC_QEBSM_AVAILABLE = common dso_local global i8 0, align 1
@AC1_SC_QEBSM_ENABLED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"V=V:1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%8lx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"noV=V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, i8, i64)* @check_and_setup_qebsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_and_setup_qebsm(%struct.qdio_irq* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.qdio_irq*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %7 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %8 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @QIB_RFLAGS_ENABLE_QEBSM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @AC1_SC_QEBSM_AVAILABLE, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @AC1_SC_QEBSM_ENABLED, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %15
  br label %39

30:                                               ; preds = %22
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %33 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = call i32 (i8*, ...) @DBF_EVENT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %36 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @DBF_EVENT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %50

39:                                               ; preds = %29, %14
  %40 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %41 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @QIB_RFLAGS_ENABLE_QEBSM, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %45 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 8
  %49 = call i32 (i8*, ...) @DBF_EVENT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @DBF_EVENT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
