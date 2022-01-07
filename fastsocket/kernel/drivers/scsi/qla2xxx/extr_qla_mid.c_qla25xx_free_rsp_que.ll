; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_rsp_que.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_free_rsp_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rsp_que = type { i32, i32, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.rsp_que*)* @qla25xx_free_rsp_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_free_rsp_que(%struct.scsi_qla_host* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %11 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %14 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %19 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %26 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.rsp_que* %30)
  %32 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %33 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %37 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %24, %17, %2
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %46 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %53 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %56 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* %44, i32 %51, i32* %54, i64 %57)
  %59 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %60 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %62 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %40
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 2
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  store i32* null, i32** %71, align 8
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clear_bit(i32 %75, i32 %78)
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %65, %40
  %84 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %85 = call i32 @kfree(%struct.rsp_que* %84)
  store %struct.rsp_que* null, %struct.rsp_que** %4, align 8
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.rsp_que*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
