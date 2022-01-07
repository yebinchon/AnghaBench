; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_inbound_q_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_inbound_q_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SLSB_P_INPUT_PRIMED = common dso_local global i8 0, align 1
@SLSB_P_INPUT_ERROR = common dso_local global i8 0, align 1
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@QDIO_INPUT_THRESHOLD = common dso_local global i64 0, align 8
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"in done:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*)* @qdio_inbound_q_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_inbound_q_done(%struct.qdio_q* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %6 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %5, i32 0, i32 3
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %12 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %11)
  %13 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %14 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %15 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_buf_state(%struct.qdio_q* %13, i32 %16, i8* %4, i32 0)
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @SLSB_P_INPUT_PRIMED, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %10
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SLSB_P_INPUT_ERROR, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %10
  store i32 0, i32* %2, align 4
  br label %61

30:                                               ; preds = %23
  %31 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_thinint_irq(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %61

37:                                               ; preds = %30
  %38 = load i64, i64* @MACHINE_IS_VM, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %61

41:                                               ; preds = %37
  %42 = call i64 (...) @get_usecs()
  %43 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %44 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QDIO_INPUT_THRESHOLD, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp sgt i64 %42, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* @DBF_INFO, align 4
  %53 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %54 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %57 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DBF_DEV_EVENT(i32 %52, i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 1, i32* %2, align 4
  br label %61

60:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %51, %40, %36, %29, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i64 @is_thinint_irq(i32) #1

declare dso_local i64 @get_usecs(...) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
