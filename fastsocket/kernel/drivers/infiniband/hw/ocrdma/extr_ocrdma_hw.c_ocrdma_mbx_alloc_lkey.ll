; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_alloc_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_alloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_hw_mr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_alloc_lkey = type { i32, i32 }
%struct.ocrdma_alloc_lkey_rsp = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_ALLOC_LKEY = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_FMR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_REMOTE_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_REMOTE_RD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_LOCAL_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_REMOTE_ATOMIC_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_ALLOC_LKEY_PBL_SIZE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_alloc_lkey(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_hw_mr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_alloc_lkey*, align 8
  %12 = alloca %struct.ocrdma_alloc_lkey_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %6, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @OCRDMA_CMD_ALLOC_LKEY, align 4
  %16 = call %struct.ocrdma_alloc_lkey* @ocrdma_init_emb_mqe(i32 %15, i32 8)
  store %struct.ocrdma_alloc_lkey* %16, %struct.ocrdma_alloc_lkey** %11, align 8
  %17 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %18 = icmp ne %struct.ocrdma_alloc_lkey* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %24 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %27 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %31 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OCRDMA_ALLOC_LKEY_FMR_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %36 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %40 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCRDMA_ALLOC_LKEY_REMOTE_WR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %45 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OCRDMA_ALLOC_LKEY_REMOTE_RD_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %54 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %58 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OCRDMA_ALLOC_LKEY_LOCAL_WR_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %63 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %67 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @OCRDMA_ALLOC_LKEY_REMOTE_ATOMIC_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %72 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %76 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @OCRDMA_ALLOC_LKEY_PBL_SIZE_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %81 = getelementptr inbounds %struct.ocrdma_alloc_lkey, %struct.ocrdma_alloc_lkey* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %85 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %86 = bitcast %struct.ocrdma_alloc_lkey* %85 to %struct.ocrdma_mqe*
  %87 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %84, %struct.ocrdma_mqe* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %21
  br label %99

91:                                               ; preds = %21
  %92 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %93 = bitcast %struct.ocrdma_alloc_lkey* %92 to %struct.ocrdma_alloc_lkey_rsp*
  store %struct.ocrdma_alloc_lkey_rsp* %93, %struct.ocrdma_alloc_lkey_rsp** %12, align 8
  %94 = load %struct.ocrdma_alloc_lkey_rsp*, %struct.ocrdma_alloc_lkey_rsp** %12, align 8
  %95 = getelementptr inbounds %struct.ocrdma_alloc_lkey_rsp, %struct.ocrdma_alloc_lkey_rsp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %7, align 8
  %98 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %90
  %100 = load %struct.ocrdma_alloc_lkey*, %struct.ocrdma_alloc_lkey** %11, align 8
  %101 = call i32 @kfree(%struct.ocrdma_alloc_lkey* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.ocrdma_alloc_lkey* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_alloc_lkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
