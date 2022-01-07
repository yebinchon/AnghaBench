; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3b_intr_napi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3b_intr_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32, %struct.sge_rspq }
%struct.sge_rspq = type { i32 }

@A_PL_CLI = common dso_local global i32 0, align 4
@A_SG_DATA_INTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@F_ERRINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3b_intr_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3b_intr_napi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_qset*, align 8
  %9 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.adapter*
  store %struct.adapter* %11, %struct.adapter** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %7, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sge_qset*, %struct.sge_qset** %14, align 8
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %15, i64 0
  store %struct.sge_qset* %16, %struct.sge_qset** %8, align 8
  %17 = load %struct.sge_qset*, %struct.sge_qset** %8, align 8
  %18 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %17, i32 0, i32 1
  store %struct.sge_rspq* %18, %struct.sge_rspq** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %7, align 8
  %20 = load i32, i32* @A_PL_CLI, align 4
  %21 = call i32 @t3_write_reg(%struct.adapter* %19, i32 %20, i32 0)
  %22 = load %struct.adapter*, %struct.adapter** %7, align 8
  %23 = load i32, i32* @A_SG_DATA_INTR, align 4
  %24 = call i32 @t3_read_reg(%struct.adapter* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %2
  %34 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %35 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @F_ERRINTR, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = call i32 @t3_slow_intr_handler(%struct.adapter* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 1
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.sge_qset*, %struct.sge_qset** %8, align 8
  %52 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %51, i32 0, i32 0
  %53 = call i32 @napi_schedule(i32* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.sge_qset*, %struct.sge_qset** %61, align 8
  %63 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %62, i64 1
  %64 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %63, i32 0, i32 0
  %65 = call i32 @napi_schedule(i32* %64)
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %68 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %31
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t3_slow_intr_handler(%struct.adapter*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
