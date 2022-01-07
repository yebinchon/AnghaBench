; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_init_sdma_7322_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_init_sdma_7322_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i64, i32, %struct.TYPE_4__, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@krp_senddmabase = common dso_local global i32 0, align 4
@krp_senddmareloadcnt = common dso_local global i32 0, align 4
@sdma_idle_cnt = common dso_local global i64 0, align 8
@krp_senddmadesccnt = common dso_local global i32 0, align 4
@krp_senddmaheadaddr = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@krp_senddmabufmask0 = common dso_local global i32 0, align 4
@krp_senddmabufmask1 = common dso_local global i32 0, align 4
@krp_senddmabufmask2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @init_sdma_7322_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sdma_7322_regs(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %3, align 8
  %14 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = load i32, i32* @krp_senddmabase, align 4
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %15, i32 %16, i64 %19)
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %22 = call i32 @qib_sdma_7322_setlengen(%struct.qib_pportdata* %21)
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %24 = call i32 @qib_sdma_update_7322_tail(%struct.qib_pportdata* %23, i32 0)
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %26 = load i32, i32* @krp_senddmareloadcnt, align 4
  %27 = load i64, i64* @sdma_idle_cnt, align 8
  %28 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %25, i32 %26, i64 %27)
  %29 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %30 = load i32, i32* @krp_senddmadesccnt, align 4
  %31 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %29, i32 %30, i64 0)
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %33 = load i32, i32* @krp_senddmaheadaddr, align 4
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %32, i32 %33, i64 %36)
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %1
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %47, %50
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; preds = %1
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %42
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %75, label %70

70:                                               ; preds = %58
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %72 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %58
  %76 = load i32, i32* %7, align 4
  br label %83

77:                                               ; preds = %70
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %77, %75
  %84 = phi i32 [ %76, %75 ], [ %82, %77 ]
  %85 = sub nsw i32 %65, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %86, %87
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %91 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %121, %83
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @BITS_PER_LONG, align 4
  %104 = udiv i32 %102, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @BITS_PER_LONG, align 4
  %107 = sub i32 %106, 1
  %108 = and i32 %105, %107
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp uge i32 %109, 3
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %115
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %101
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %126 = load i32, i32* @krp_senddmabufmask0, align 4
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %128 = load i64, i64* %127, align 16
  %129 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %125, i32 %126, i64 %128)
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %131 = load i32, i32* @krp_senddmabufmask1, align 4
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %130, i32 %131, i64 %133)
  %135 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %136 = load i32, i32* @krp_senddmabufmask2, align 4
  %137 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %138 = load i64, i64* %137, align 16
  %139 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %135, i32 %136, i64 %138)
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i64) #2

declare dso_local i32 @qib_sdma_7322_setlengen(%struct.qib_pportdata*) #2

declare dso_local i32 @qib_sdma_update_7322_tail(%struct.qib_pportdata*, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
