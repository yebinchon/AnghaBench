; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_post_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i64, %struct.ib_recv_wr*, i32, i32 }
%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%union.c2wr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.c2_data_addr = type { i32 }

@IB_QPS_RTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCWR_RECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_post_receive(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.c2_dev*, align 8
  %8 = alloca %struct.c2_qp*, align 8
  %9 = alloca %union.c2wr, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.c2_dev* @to_c2dev(i32 %16)
  store %struct.c2_dev* %17, %struct.c2_dev** %7, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %19 = call %struct.c2_qp* @to_c2qp(%struct.ib_qp* %18)
  store %struct.c2_qp* %19, %struct.c2_qp** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %21 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_QPS_RTS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %116

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %97, %28
  %30 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %31 = icmp ne %struct.ib_recv_wr* %30, null
  br i1 %31, label %32, label %115

32:                                               ; preds = %29
  %33 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %37 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %115

43:                                               ; preds = %32
  %44 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %45 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.c2wr* %9 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @CCWR_RECV, align 4
  %53 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %52)
  %54 = call i32 @c2_wr_set_flags(%union.c2wr* %9, i32 0)
  %55 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %56 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 256
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = bitcast %union.c2wr* %9 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to %struct.c2_data_addr*
  %64 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %65 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @move_sgl(%struct.c2_data_addr* %63, i32 %66, i32 %70, i32* %12, i32* %13)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @c2_wr_set_sge_count(%union.c2wr* %9, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %43
  br label %115

77:                                               ; preds = %43
  %78 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %79 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %78, i32 0, i32 2
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %83 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %82, i32 0, i32 3
  %84 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %85 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %86 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @qp_wr_post(%struct.TYPE_10__* %83, %union.c2wr* %9, %struct.c2_qp* %84, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %77
  %93 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %94 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %93, i32 0, i32 2
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %115

97:                                               ; preds = %77
  %98 = load %struct.c2_dev*, %struct.c2_dev** %7, align 8
  %99 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %100 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %104 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @c2_activity(%struct.c2_dev* %98, i32 %102, i32 %106)
  %108 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %109 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %108, i32 0, i32 2
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %112, i32 0, i32 1
  %114 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %113, align 8
  store %struct.ib_recv_wr* %114, %struct.ib_recv_wr** %5, align 8
  br label %29

115:                                              ; preds = %92, %76, %40, %29
  br label %116

116:                                              ; preds = %115, %25
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %121 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %120, %struct.ib_recv_wr** %121, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %11, align 4
  ret i32 %123
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_qp* @to_c2qp(%struct.ib_qp*) #1

declare dso_local i32 @c2_wr_set_id(%union.c2wr*, i32) #1

declare dso_local i32 @c2_wr_set_flags(%union.c2wr*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @move_sgl(%struct.c2_data_addr*, i32, i32, i32*, i32*) #1

declare dso_local i32 @c2_wr_set_sge_count(%union.c2wr*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qp_wr_post(%struct.TYPE_10__*, %union.c2wr*, %struct.c2_qp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @c2_activity(%struct.c2_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
