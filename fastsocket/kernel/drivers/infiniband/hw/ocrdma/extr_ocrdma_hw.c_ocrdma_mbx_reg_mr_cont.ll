; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr_cont.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_hw_mr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_reg_nsmr_cont = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_REGISTER_NSMR_CONT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_CONT_LAST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*, i32, i32, i32)* @ocrdma_mbx_reg_mr_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_reg_mr_cont(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca %struct.ocrdma_hw_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocrdma_reg_nsmr_cont*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %7, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @OCRDMA_CMD_REGISTER_NSMR_CONT, align 4
  %18 = call %struct.ocrdma_reg_nsmr_cont* @ocrdma_init_emb_mqe(i32 %17, i32 24)
  store %struct.ocrdma_reg_nsmr_cont* %18, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %19 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %20 = icmp ne %struct.ocrdma_reg_nsmr_cont* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %100

24:                                               ; preds = %5
  %25 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %26 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %29 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %38 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @OCRDMA_REG_NSMR_CONT_LAST_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %43 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %84, %24
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %50 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %60 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 4
  %66 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %8, align 8
  %67 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @upper_32_bits(i32 %75)
  %77 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %78 = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, %struct.ocrdma_reg_nsmr_cont* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %44

87:                                               ; preds = %44
  %88 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %89 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %90 = bitcast %struct.ocrdma_reg_nsmr_cont* %89 to %struct.ocrdma_mqe*
  %91 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %88, %struct.ocrdma_mqe* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.ocrdma_reg_nsmr_cont*, %struct.ocrdma_reg_nsmr_cont** %14, align 8
  %98 = call i32 @kfree(%struct.ocrdma_reg_nsmr_cont* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %21
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.ocrdma_reg_nsmr_cont* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_reg_nsmr_cont*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
