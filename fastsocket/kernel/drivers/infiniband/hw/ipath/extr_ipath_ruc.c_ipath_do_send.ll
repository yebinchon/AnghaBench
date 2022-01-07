; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_do_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ruc.c_ipath_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ipath_ibdev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IPATH_S_BUSY = common dso_local global i32 0, align 4
@IPATH_S_ANY_WAIT = common dso_local global i32 0, align 4
@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_OR_FLUSH_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_do_send(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca %struct.ipath_ibdev*, align 8
  %5 = alloca i32 (%struct.ipath_qp*)*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.ipath_qp*
  store %struct.ipath_qp* %8, %struct.ipath_qp** %3, align 8
  %9 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ipath_ibdev* @to_idev(i32 %12)
  store %struct.ipath_ibdev* %13, %struct.ipath_ibdev** %4, align 8
  %14 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %15 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IB_QPT_RC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPT_UC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %20, %1
  %28 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %29 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %33 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %40 = call i32 @ipath_ruc_loopback(%struct.ipath_qp* %39)
  br label %138

41:                                               ; preds = %27, %20
  %42 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %43 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_QPT_RC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 (%struct.ipath_qp*)* @ipath_make_rc_req, i32 (%struct.ipath_qp*)** %5, align 8
  br label %59

49:                                               ; preds = %41
  %50 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %51 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_QPT_UC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 (%struct.ipath_qp*)* @ipath_make_uc_req, i32 (%struct.ipath_qp*)** %5, align 8
  br label %58

57:                                               ; preds = %49
  store i32 (%struct.ipath_qp*)* @ipath_make_ud_req, i32 (%struct.ipath_qp*)** %5, align 8
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %61 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %60, i32 0, i32 6
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %65 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPATH_S_BUSY, align 4
  %68 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %59
  %73 = load i32*, i32** @ib_ipath_state_ops, align 8
  %74 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %75 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IPATH_PROCESS_OR_FLUSH_SEND, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %72, %59
  %83 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %84 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %83, i32 0, i32 6
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %138

87:                                               ; preds = %72
  %88 = load i32, i32* @IPATH_S_BUSY, align 4
  %89 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %90 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %94 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %93, i32 0, i32 6
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %136, %87
  %98 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %99 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %104 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %105 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %104, i32 0, i32 5
  %106 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %107 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %110 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %113 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @ipath_verbs_send(%struct.ipath_qp* %103, i32* %105, i64 %108, i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %102
  %118 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %119 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %120 = call i64 @ipath_no_bufs_available(%struct.ipath_qp* %118, %struct.ipath_ibdev* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %138

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %126 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %130 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %124, %97
  %132 = load i32 (%struct.ipath_qp*)*, i32 (%struct.ipath_qp*)** %5, align 8
  %133 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %134 = call i32 %132(%struct.ipath_qp* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %97

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %122, %82, %38
  ret void
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @ipath_ruc_loopback(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_make_rc_req(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_make_uc_req(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_make_ud_req(%struct.ipath_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ipath_verbs_send(%struct.ipath_qp*, i32*, i64, i32, i32) #1

declare dso_local i64 @ipath_no_bufs_available(%struct.ipath_qp*, %struct.ipath_ibdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
