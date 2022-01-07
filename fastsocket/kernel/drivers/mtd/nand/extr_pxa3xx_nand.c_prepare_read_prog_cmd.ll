; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_read_prog_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_prepare_read_prog_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.pxa3xx_nand_flash* }
%struct.pxa3xx_nand_flash = type { i32, %struct.pxa3xx_nand_cmdset* }
%struct.pxa3xx_nand_cmdset = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NDCB0_DBC = common dso_local global i32 0, align 4
@NDCB0_AUTO_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, i32, i32, i32)* @prepare_read_prog_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_read_prog_cmd(%struct.pxa3xx_nand_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa3xx_nand_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pxa3xx_nand_flash*, align 8
  %11 = alloca %struct.pxa3xx_nand_cmdset*, align 8
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %13 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %12, i32 0, i32 7
  %14 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %13, align 8
  store %struct.pxa3xx_nand_flash* %14, %struct.pxa3xx_nand_flash** %10, align 8
  %15 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %10, align 8
  %16 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %15, i32 0, i32 1
  %17 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %16, align 8
  store %struct.pxa3xx_nand_cmdset* %17, %struct.pxa3xx_nand_cmdset** %11, align 8
  %18 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %10, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %39 [
    i32 2048, label %21
    i32 512, label %30
  ]

21:                                               ; preds = %4
  %22 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2088, i32 2112
  %28 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %29 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %42

30:                                               ; preds = %4
  %31 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %32 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 520, i32 528
  %37 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %38 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %113

42:                                               ; preds = %30, %21
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 65280
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @NDCB0_DBC, align 4
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %43, %51
  %53 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %56 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %58 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %57, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %60 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %63 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = call i32 @NDCB0_ADDR_CYC(i32 %65)
  %67 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %68 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %72 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %93

75:                                               ; preds = %50
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 16
  %78 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %79 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %83 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %91 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %75
  br label %98

93:                                               ; preds = %50
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 8
  %96 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %97 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %92
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.pxa3xx_nand_cmdset*, %struct.pxa3xx_nand_cmdset** %11, align 8
  %101 = getelementptr inbounds %struct.pxa3xx_nand_cmdset, %struct.pxa3xx_nand_cmdset* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = call i32 @NDCB0_CMD_TYPE(i32 1)
  %106 = load i32, i32* @NDCB0_AUTO_RS, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %6, align 8
  %109 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %104, %98
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %39
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @NDCB0_ADDR_CYC(i32) #1

declare dso_local i32 @NDCB0_CMD_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
