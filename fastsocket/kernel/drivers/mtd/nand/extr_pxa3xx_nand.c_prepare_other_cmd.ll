; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_other_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_other_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pxa3xx_nand_cmdset* }
%struct.pxa3xx_nand_cmdset = type { i32, i32, i32, i32, i32 }

@NDCB0_DBC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, i32)* @prepare_other_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_other_cmd(%struct.pxa3xx_nand_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa3xx_nand_cmdset*, align 8
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %8 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %10, align 8
  store %struct.pxa3xx_nand_cmdset* %11, %struct.pxa3xx_nand_cmdset** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @NDCB0_DBC, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %12, %20
  %22 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %25 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %27 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %6, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = call i32 @NDCB0_CMD_TYPE(i32 3)
  %35 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %36 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %40 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %39, i32 0, i32 1
  store i32 8, i32* %40, align 4
  br label %84

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %6, align 8
  %44 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = call i32 @NDCB0_CMD_TYPE(i32 4)
  %49 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %50 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %53, i32 0, i32 1
  store i32 8, i32* %54, align 4
  br label %83

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %6, align 8
  %58 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %6, align 8
  %64 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %6, align 8
  %70 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %61, %55
  %74 = call i32 @NDCB0_CMD_TYPE(i32 5)
  %75 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %76 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %33
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @NDCB0_CMD_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
