; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ipath_qp = type { i64, i32, %struct.ipath_qp*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.ipath_qp* }
%struct.ipath_ibdev = type { i32, i32, i32, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@IPATH_S_ANY_WAIT = common dso_local global i32 0, align 4
@IPATH_SDMA_TXREQ_F_FREEBUF = common dso_local global i32 0, align 4
@ipath_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca %struct.ipath_ibdev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %5 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %6 = call %struct.ipath_qp* @to_iqp(%struct.ib_qp* %5)
  store %struct.ipath_qp* %6, %struct.ipath_qp** %3, align 8
  %7 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %8 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ipath_ibdev* @to_idev(i32 %9)
  store %struct.ipath_ibdev* %10, %struct.ipath_ibdev** %4, align 8
  %11 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %11, i32 0, i32 9
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %15 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_QPS_RESET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %1
  %20 = load i64, i64* @IB_QPS_RESET, align 8
  %21 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 3
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 15
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %31, i32 0, i32 15
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %36 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %35, i32 0, i32 14
  %37 = call i32 @list_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %41 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %40, i32 0, i32 14
  %42 = call i32 @list_del_init(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %45 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %44, i32 0, i32 3
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %50 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %54 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %53, i32 0, i32 9
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %57 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %56, i32 0, i32 12
  %58 = call i32 @tasklet_kill(i32* %57)
  %59 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %60 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %63 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %62, i32 0, i32 10
  %64 = call i32 @atomic_read(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @wait_event(i32 %61, i32 %67)
  br label %73

69:                                               ; preds = %1
  %70 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %71 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %70, i32 0, i32 9
  %72 = call i32 @spin_unlock_irq(i32* %71)
  br label %73

73:                                               ; preds = %69, %43
  %74 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %75 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %74, i32 0, i32 2
  %76 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %77 = call i32 @ipath_free_qp(i32* %75, %struct.ipath_qp* %76)
  %78 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %79 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %78, i32 0, i32 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = icmp ne %struct.TYPE_7__* %80, null
  br i1 %81, label %82, label %120

82:                                               ; preds = %73
  %83 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %84 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %83, i32 0, i32 6
  %85 = call i32 @atomic_dec(i32* %84)
  %86 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %87 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %86, i32 0, i32 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IPATH_SDMA_TXREQ_F_FREEBUF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %82
  %96 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %97 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %96, i32 0, i32 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load %struct.ipath_qp*, %struct.ipath_qp** %100, align 8
  %102 = call i32 @kfree(%struct.ipath_qp* %101)
  br label %103

103:                                              ; preds = %95, %82
  %104 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %105 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %104, i32 0, i32 3
  %106 = call i32 @spin_lock_irq(i32* %105)
  %107 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %108 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %107, i32 0, i32 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %113 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %112, i32 0, i32 4
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %116 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %115, i32 0, i32 3
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %119 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %118, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %119, align 8
  br label %120

120:                                              ; preds = %103, %73
  %121 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %122 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %125 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %124, i32 0, i32 6
  %126 = call i32 @atomic_read(i32* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @wait_event(i32 %123, i32 %129)
  %131 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %132 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %131, i32 0, i32 2
  %133 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %134 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @free_qpn(i32* %132, i32 %136)
  %138 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %139 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %138, i32 0, i32 0
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %142 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %146 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  %148 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %149 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %148, i32 0, i32 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = icmp ne %struct.TYPE_9__* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %120
  %153 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %154 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %153, i32 0, i32 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* @ipath_release_mmap_info, align 4
  %158 = call i32 @kref_put(i32* %156, i32 %157)
  br label %165

159:                                              ; preds = %120
  %160 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %161 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @vfree(i32 %163)
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %167 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %166, i32 0, i32 2
  %168 = load %struct.ipath_qp*, %struct.ipath_qp** %167, align 8
  %169 = call i32 @kfree(%struct.ipath_qp* %168)
  %170 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %171 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @vfree(i32 %172)
  %174 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %175 = call i32 @kfree(%struct.ipath_qp* %174)
  ret i32 0
}

declare dso_local %struct.ipath_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ipath_free_qp(i32*, %struct.ipath_qp*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ipath_qp*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @free_qpn(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
