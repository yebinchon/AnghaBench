; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_free_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_free_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.c2_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2_free_qp(%struct.c2_dev* %0, %struct.c2_qp* %1) #0 {
  %3 = alloca %struct.c2_dev*, align 8
  %4 = alloca %struct.c2_qp*, align 8
  %5 = alloca %struct.c2_cq*, align 8
  %6 = alloca %struct.c2_cq*, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %3, align 8
  store %struct.c2_qp* %1, %struct.c2_qp** %4, align 8
  %7 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %8 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.c2_cq* @to_c2cq(i32 %10)
  store %struct.c2_cq* %11, %struct.c2_cq** %5, align 8
  %12 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %13 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.c2_cq* @to_c2cq(i32 %15)
  store %struct.c2_cq* %16, %struct.c2_cq** %6, align 8
  %17 = load %struct.c2_cq*, %struct.c2_cq** %5, align 8
  %18 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %19 = call i32 @c2_lock_cqs(%struct.c2_cq* %17, %struct.c2_cq* %18)
  %20 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %21 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %22 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @c2_free_qpn(%struct.c2_dev* %20, i32 %23)
  %25 = load %struct.c2_cq*, %struct.c2_cq** %5, align 8
  %26 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %27 = call i32 @c2_unlock_cqs(%struct.c2_cq* %25, %struct.c2_cq* %26)
  %28 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %29 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %30 = call i32 @destroy_qp(%struct.c2_dev* %28, %struct.c2_qp* %29)
  %31 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %32 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %33 = load %struct.c2_cq*, %struct.c2_cq** %5, align 8
  %34 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @c2_cq_clean(%struct.c2_dev* %31, %struct.c2_qp* %32, i32 %35)
  %37 = load %struct.c2_cq*, %struct.c2_cq** %5, align 8
  %38 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %39 = icmp ne %struct.c2_cq* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.c2_dev*, %struct.c2_dev** %3, align 8
  %42 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %43 = load %struct.c2_cq*, %struct.c2_cq** %6, align 8
  %44 = getelementptr inbounds %struct.c2_cq, %struct.c2_cq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @c2_cq_clean(%struct.c2_dev* %41, %struct.c2_qp* %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %2
  %48 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %49 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @iounmap(i32 %51)
  %53 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %54 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @iounmap(i32 %56)
  %58 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %59 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @c2_free_mqsp(i32 %61)
  %63 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %64 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @c2_free_mqsp(i32 %66)
  %68 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %69 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %68, i32 0, i32 0
  %70 = call i32 @atomic_dec(i32* %69)
  %71 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %72 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.c2_qp*, %struct.c2_qp** %4, align 8
  %75 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %74, i32 0, i32 0
  %76 = call i32 @atomic_read(i32* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @wait_event(i32 %73, i32 %79)
  ret void
}

declare dso_local %struct.c2_cq* @to_c2cq(i32) #1

declare dso_local i32 @c2_lock_cqs(%struct.c2_cq*, %struct.c2_cq*) #1

declare dso_local i32 @c2_free_qpn(%struct.c2_dev*, i32) #1

declare dso_local i32 @c2_unlock_cqs(%struct.c2_cq*, %struct.c2_cq*) #1

declare dso_local i32 @destroy_qp(%struct.c2_dev*, %struct.c2_qp*) #1

declare dso_local i32 @c2_cq_clean(%struct.c2_dev*, %struct.c2_qp*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @c2_free_mqsp(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
