; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_abort_all_cmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_abort_all_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.req_que** }
%struct.req_que = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_abort_all_cmds(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.req_que*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %9, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %77, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %18
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 2
  %27 = load %struct.req_que**, %struct.req_que*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.req_que*, %struct.req_que** %27, i64 %29
  %31 = load %struct.req_que*, %struct.req_que** %30, align 8
  store %struct.req_que* %31, %struct.req_que** %10, align 8
  %32 = load %struct.req_que*, %struct.req_que** %10, align 8
  %33 = icmp ne %struct.req_que* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %77

35:                                               ; preds = %24
  %36 = load %struct.req_que*, %struct.req_que** %10, align 8
  %37 = getelementptr inbounds %struct.req_que, %struct.req_que* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = icmp ne %struct.TYPE_6__** %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %77

41:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.req_que*, %struct.req_que** %10, align 8
  %45 = getelementptr inbounds %struct.req_que, %struct.req_que* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.req_que*, %struct.req_que** %10, align 8
  %50 = getelementptr inbounds %struct.req_que, %struct.req_que* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %48
  %59 = load %struct.req_que*, %struct.req_que** %10, align 8
  %60 = getelementptr inbounds %struct.req_que, %struct.req_que* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32)** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 %67(%struct.TYPE_7__* %68, %struct.TYPE_6__* %69, i32 %70)
  br label %72

72:                                               ; preds = %58, %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %42

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %76, %40, %34
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %18

80:                                               ; preds = %18
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 1
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
