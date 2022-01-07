; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { %struct.sge_ofld_txq*, %struct.sge_ofld_txq*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.sge_ofld_txq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sge_ctrl_txq = type { i32, %struct.TYPE_3__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_sge_stop(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.sge_ofld_txq*, align 8
  %6 = alloca %struct.sge_ctrl_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.sge* %8, %struct.sge** %4, align 8
  %9 = call i64 (...) @in_interrupt()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.sge*, %struct.sge** %4, align 8
  %14 = getelementptr inbounds %struct.sge, %struct.sge* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.sge*, %struct.sge** %4, align 8
  %20 = getelementptr inbounds %struct.sge, %struct.sge* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.sge*, %struct.sge** %4, align 8
  %24 = getelementptr inbounds %struct.sge, %struct.sge* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.sge*, %struct.sge** %4, align 8
  %30 = getelementptr inbounds %struct.sge, %struct.sge* %29, i32 0, i32 2
  %31 = call i32 @del_timer_sync(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.sge*, %struct.sge** %4, align 8
  %36 = getelementptr inbounds %struct.sge, %struct.sge* %35, i32 0, i32 1
  %37 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %36, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.sge_ofld_txq* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.sge*, %struct.sge** %4, align 8
  %42 = getelementptr inbounds %struct.sge, %struct.sge* %41, i32 0, i32 1
  %43 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %43, i64 %45
  store %struct.sge_ofld_txq* %46, %struct.sge_ofld_txq** %5, align 8
  %47 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %5, align 8
  %48 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %5, align 8
  %54 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %53, i32 0, i32 0
  %55 = call i32 @tasklet_kill(i32* %54)
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.sge*, %struct.sge** %4, align 8
  %64 = getelementptr inbounds %struct.sge, %struct.sge* %63, i32 0, i32 0
  %65 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.sge_ofld_txq* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %61
  %69 = load %struct.sge*, %struct.sge** %4, align 8
  %70 = getelementptr inbounds %struct.sge, %struct.sge* %69, i32 0, i32 0
  %71 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %71, i64 %73
  %75 = bitcast %struct.sge_ofld_txq* %74 to %struct.sge_ctrl_txq*
  store %struct.sge_ctrl_txq* %75, %struct.sge_ctrl_txq** %6, align 8
  %76 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %6, align 8
  %77 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %6, align 8
  %83 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %82, i32 0, i32 0
  %84 = call i32 @tasklet_kill(i32* %83)
  br label %85

85:                                               ; preds = %81, %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %61

89:                                               ; preds = %11, %61
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sge_ofld_txq*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
