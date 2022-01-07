; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_sge_init_ecntxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_sge_init_ecntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@SGE_CNTXT_OFLD = common dso_local global i32 0, align 4
@FW_WR_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@F_EC_VALID = common dso_local global i32 0, align 4
@F_EGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_ecntxt(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @SGE_CNTXT_OFLD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @FW_WR_NUM, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 0, %26 ], [ %28, %27 ]
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %17, align 4
  %32 = and i32 %31, 4095
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %102

37:                                               ; preds = %29
  %38 = load %struct.adapter*, %struct.adapter** %12, align 8
  %39 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %40 = call i32 @t3_read_reg(%struct.adapter* %38, i32 %39)
  %41 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %102

47:                                               ; preds = %37
  %48 = load i32, i32* %17, align 4
  %49 = ashr i32 %48, 12
  store i32 %49, i32* %17, align 4
  %50 = load %struct.adapter*, %struct.adapter** %12, align 8
  %51 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @V_EC_INDEX(i32 %52)
  %54 = load i32, i32* %22, align 4
  %55 = call i32 @V_EC_CREDITS(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @V_EC_GTS(i32 %57)
  %59 = or i32 %56, %58
  %60 = call i32 @t3_write_reg(%struct.adapter* %50, i32 %51, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %12, align 8
  %62 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @V_EC_SIZE(i32 %63)
  %65 = load i32, i32* %17, align 4
  %66 = and i32 %65, 65535
  %67 = call i32 @V_EC_BASE_LO(i32 %66)
  %68 = or i32 %64, %67
  %69 = call i32 @t3_write_reg(%struct.adapter* %61, i32 %62, i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %17, align 4
  %72 = load %struct.adapter*, %struct.adapter** %12, align 8
  %73 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @t3_write_reg(%struct.adapter* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = ashr i32 %76, 32
  store i32 %77, i32* %17, align 4
  %78 = load %struct.adapter*, %struct.adapter** %12, align 8
  %79 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, 15
  %82 = call i32 @V_EC_BASE_HI(i32 %81)
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @V_EC_RESPQ(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @V_EC_TYPE(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @V_EC_GEN(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @V_EC_UP_TOKEN(i32 %92)
  %94 = or i32 %91, %93
  %95 = load i32, i32* @F_EC_VALID, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @t3_write_reg(%struct.adapter* %78, i32 %79, i32 %96)
  %98 = load %struct.adapter*, %struct.adapter** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @F_EGRESS, align 4
  %101 = call i32 @t3_sge_write_context(%struct.adapter* %98, i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %47, %44, %34
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EC_INDEX(i32) #1

declare dso_local i32 @V_EC_CREDITS(i32) #1

declare dso_local i32 @V_EC_GTS(i32) #1

declare dso_local i32 @V_EC_SIZE(i32) #1

declare dso_local i32 @V_EC_BASE_LO(i32) #1

declare dso_local i32 @V_EC_BASE_HI(i32) #1

declare dso_local i32 @V_EC_RESPQ(i32) #1

declare dso_local i32 @V_EC_TYPE(i32) #1

declare dso_local i32 @V_EC_GEN(i32) #1

declare dso_local i32 @V_EC_UP_TOKEN(i32) #1

declare dso_local i32 @t3_sge_write_context(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
