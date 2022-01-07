; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ocrdma_pd = type { i64 }
%struct.ocrdma_qp = type { %struct.ocrdma_qp*, %struct.ocrdma_qp*, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.ocrdma_pd*, %struct.ocrdma_dev* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ib_qp_attr = type { i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_pd*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ib_qp_attr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %10 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %12 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %11)
  store %struct.ocrdma_qp* %12, %struct.ocrdma_qp** %5, align 8
  %13 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %13, i32 0, i32 8
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %14, align 8
  store %struct.ocrdma_dev* %15, %struct.ocrdma_dev** %6, align 8
  %16 = load i32, i32* @IB_QPS_ERR, align 4
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %19 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %18, i32 0, i32 7
  %20 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %19, align 8
  store %struct.ocrdma_pd* %20, %struct.ocrdma_pd** %4, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @_ocrdma_modify_qp(%struct.ib_qp* %21, %struct.ib_qp_attr* %7, i32 %22)
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %28 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %29 = call i32 @ocrdma_mbx_destroy_qp(%struct.ocrdma_dev* %27, %struct.ocrdma_qp* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %36, i32 0, i32 5
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %1
  %41 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %42 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %44, i32 0, i32 6
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %50 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %49, i32 0, i32 5
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  br label %54

54:                                               ; preds = %48, %40, %1
  %55 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %56 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %57 = call i32 @ocrdma_del_qpn_map(%struct.ocrdma_dev* %55, %struct.ocrdma_qp* %56)
  %58 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %59 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %58, i32 0, i32 5
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %66, i32 0, i32 6
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %72 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %71, i32 0, i32 5
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  br label %76

76:                                               ; preds = %70, %62, %54
  %77 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %78 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %77, i32 0, i32 6
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %84 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %76
  %88 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %89 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %90 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %89, i32 0, i32 6
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @ocrdma_discard_cqes(%struct.ocrdma_qp* %88, %struct.TYPE_6__* %91)
  %93 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %94 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %95 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %94, i32 0, i32 5
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call i32 @ocrdma_discard_cqes(%struct.ocrdma_qp* %93, %struct.TYPE_6__* %96)
  br label %98

98:                                               ; preds = %87, %76
  %99 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %100 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %103 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %98
  %107 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %108 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %111 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %116 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ocrdma_del_mmap(i64 %109, i32 %114, i32 %118)
  %120 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %121 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %106
  %125 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %4, align 8
  %126 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %129 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %134 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ocrdma_del_mmap(i64 %127, i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %124, %106
  br label %139

139:                                              ; preds = %138, %98
  %140 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %141 = call i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp* %140)
  %142 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %143 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %142, i32 0, i32 1
  %144 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %143, align 8
  %145 = call i32 @kfree(%struct.ocrdma_qp* %144)
  %146 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %147 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %146, i32 0, i32 0
  %148 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %147, align 8
  %149 = call i32 @kfree(%struct.ocrdma_qp* %148)
  %150 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %151 = call i32 @kfree(%struct.ocrdma_qp* %150)
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local i32 @_ocrdma_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocrdma_mbx_destroy_qp(%struct.ocrdma_dev*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocrdma_del_qpn_map(%struct.ocrdma_dev*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_discard_cqes(%struct.ocrdma_qp*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocrdma_del_mmap(i64, i32, i32) #1

declare dso_local i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp*) #1

declare dso_local i32 @kfree(%struct.ocrdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
