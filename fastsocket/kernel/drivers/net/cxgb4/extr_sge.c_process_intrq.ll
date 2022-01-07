; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_process_intrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_process_intrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__**, i64, %struct.sge_rspq }
%struct.TYPE_3__ = type { i32 }
%struct.sge_rspq = type { i32, i32, i32, i64 }
%struct.rsp_ctrl = type { i32, i32 }

@RSP_TYPE_INTR = common dso_local global i64 0, align 8
@SGE_PF_GTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @process_intrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_intrq(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsp_ctrl*, align 8
  %5 = alloca %struct.sge_rspq*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store %struct.sge_rspq* %9, %struct.sge_rspq** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %65, %1
  %15 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %16 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %20 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 8
  %24 = getelementptr i8, i8* %18, i64 %23
  %25 = bitcast i8* %24 to %struct.rsp_ctrl*
  store %struct.rsp_ctrl* %25, %struct.rsp_ctrl** %4, align 8
  %26 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %27 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %28 = call i32 @is_new_response(%struct.rsp_ctrl* %26, %struct.sge_rspq* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  br label %68

31:                                               ; preds = %14
  %32 = call i32 (...) @rmb()
  %33 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @RSPD_TYPE(i32 %35)
  %37 = load i64, i64* @RSP_TYPE_INTR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %31
  %40 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @napi_schedule(i32* %60)
  br label %62

62:                                               ; preds = %39, %31
  %63 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %64 = call i32 @rspq_next(%struct.sge_rspq* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %14

68:                                               ; preds = %30
  %69 = load %struct.adapter*, %struct.adapter** %2, align 8
  %70 = load i32, i32* @SGE_PF_GTS, align 4
  %71 = call i32 @MYPF_REG(i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @CIDXINC(i32 %72)
  %74 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %75 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @INGRESSQID(i32 %76)
  %78 = or i32 %73, %77
  %79 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %80 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SEINTARM(i32 %81)
  %83 = or i32 %78, %82
  %84 = call i32 @t4_write_reg(%struct.adapter* %69, i32 %71, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_new_response(%struct.rsp_ctrl*, %struct.sge_rspq*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @RSPD_TYPE(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @rspq_next(%struct.sge_rspq*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @CIDXINC(i32) #1

declare dso_local i32 @INGRESSQID(i32) #1

declare dso_local i32 @SEINTARM(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
