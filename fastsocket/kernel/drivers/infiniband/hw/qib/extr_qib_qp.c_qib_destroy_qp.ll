; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qib_qp = type { i64, i32, %struct.qib_qp*, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qib_ibdev = type { i32, i32, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@QIB_S_TIMER = common dso_local global i32 0, align 4
@QIB_S_ANY_WAIT = common dso_local global i32 0, align 4
@qib_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.qib_ibdev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %5 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %6 = call %struct.qib_qp* @to_iqp(%struct.ib_qp* %5)
  store %struct.qib_qp* %6, %struct.qib_qp** %3, align 8
  %7 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %8 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.qib_ibdev* @to_idev(i32 %9)
  store %struct.qib_ibdev* %10, %struct.qib_ibdev** %4, align 8
  %11 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %11, i32 0, i32 7
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %15 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_QPS_RESET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %1
  %20 = load i64, i64* @IB_QPS_RESET, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %24 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %23, i32 0, i32 3
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %27 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %26, i32 0, i32 15
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %32 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %31, i32 0, i32 15
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %36 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %35, i32 0, i32 3
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @QIB_S_TIMER, align 4
  %39 = load i32, i32* @QIB_S_ANY_WAIT, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %43 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %47 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %46, i32 0, i32 7
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %50 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %49, i32 0, i32 14
  %51 = call i32 @cancel_work_sync(i32* %50)
  %52 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %53 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %52, i32 0, i32 13
  %54 = call i32 @del_timer_sync(i32* %53)
  %55 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %56 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %59 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %58, i32 0, i32 11
  %60 = call i32 @atomic_read(i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @wait_event(i32 %57, i32 %63)
  %65 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %66 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %65, i32 0, i32 10
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %34
  %70 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %71 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %70, i32 0, i32 10
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @qib_put_txreq(i32* %72)
  %74 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %75 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %74, i32 0, i32 10
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %34
  %77 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %78 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %79 = call i32 @remove_qp(%struct.qib_ibdev* %77, %struct.qib_qp* %78)
  %80 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %81 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %84 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %83, i32 0, i32 8
  %85 = call i32 @atomic_read(i32* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @wait_event(i32 %82, i32 %88)
  %90 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %91 = call i32 @clear_mr_refs(%struct.qib_qp* %90, i32 1)
  br label %96

92:                                               ; preds = %1
  %93 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 7
  %95 = call i32 @spin_unlock_irq(i32* %94)
  br label %96

96:                                               ; preds = %92, %76
  %97 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %98 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %97, i32 0, i32 2
  %99 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @free_qpn(i32* %98, i32 %102)
  %104 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %105 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %108 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %112 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %115 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %114, i32 0, i32 5
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %96
  %119 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %120 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %119, i32 0, i32 5
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* @qib_release_mmap_info, align 4
  %124 = call i32 @kref_put(i32* %122, i32 %123)
  br label %131

125:                                              ; preds = %96
  %126 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %127 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vfree(i32 %129)
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %133 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @vfree(i32 %134)
  %136 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %137 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %136, i32 0, i32 2
  %138 = load %struct.qib_qp*, %struct.qib_qp** %137, align 8
  %139 = call i32 @kfree(%struct.qib_qp* %138)
  %140 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %141 = call i32 @kfree(%struct.qib_qp* %140)
  ret i32 0
}

declare dso_local %struct.qib_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qib_put_txreq(i32*) #1

declare dso_local i32 @remove_qp(%struct.qib_ibdev*, %struct.qib_qp*) #1

declare dso_local i32 @clear_mr_refs(%struct.qib_qp*, i32) #1

declare dso_local i32 @free_qpn(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.qib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
