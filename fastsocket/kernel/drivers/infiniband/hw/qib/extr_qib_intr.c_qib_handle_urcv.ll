; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_handle_urcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_handle_urcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32 (i32, i32, i32)*, %struct.qib_ctxtdata** }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i32 }

@QIB_CTXT_WAITING_RCV = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@QIB_CTXT_WAITING_URG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_handle_urcv(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 2
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %89, %2
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 4
  %18 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %17, align 8
  %19 = icmp ne %struct.qib_ctxtdata** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ false, %15 ], [ %25, %20 ]
  br i1 %27, label %28, label %92

28:                                               ; preds = %26
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %89

36:                                               ; preds = %28
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 4
  %39 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %39, i64 %41
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %42, align 8
  store %struct.qib_ctxtdata* %43, %struct.qib_ctxtdata** %5, align 8
  %44 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %45 = icmp ne %struct.qib_ctxtdata* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %48 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %36
  br label %89

52:                                               ; preds = %46
  %53 = load i32, i32* @QIB_CTXT_WAITING_RCV, align 4
  %54 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %55 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %54, i32 0, i32 2
  %56 = call i64 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %59, i32 0, i32 0
  %61 = call i32 @wake_up_interruptible(i32* %60)
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 3
  %64 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %63, align 8
  %65 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %66 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %69 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %70 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 %64(i32 %67, i32 %68, i32 %71)
  br label %88

73:                                               ; preds = %52
  %74 = load i32, i32* @QIB_CTXT_WAITING_URG, align 4
  %75 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %76 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %75, i32 0, i32 2
  %77 = call i64 @test_and_clear_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %81 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %85 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %84, i32 0, i32 0
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %87

87:                                               ; preds = %79, %73
  br label %88

88:                                               ; preds = %87, %58
  br label %89

89:                                               ; preds = %88, %51, %35
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %15

92:                                               ; preds = %26
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 2
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
