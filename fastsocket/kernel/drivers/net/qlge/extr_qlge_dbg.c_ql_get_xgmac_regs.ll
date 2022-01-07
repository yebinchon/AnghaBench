; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_xgmac_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_xgmac_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@PAUSE_SRC_LO = common dso_local global i32 0, align 4
@XGMAC_REGISTER_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*, i32)* @ql_get_xgmac_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_xgmac_regs(%struct.ql_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @PAUSE_SRC_LO, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %124, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @XGMAC_REGISTER_END, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %129

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 276
  br i1 %16, label %104, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 280
  br i1 %19, label %104, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 316
  br i1 %22, label %104, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 320
  br i1 %25, label %104, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 336
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 508
  br i1 %31, label %104, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 632
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 672
  br i1 %37, label %104, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 704
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 719
  br i1 %43, label %104, label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 732
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 752
  br i1 %49, label %104, label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 968
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 1024
  br i1 %55, label %104, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 1024
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 1040
  br i1 %61, label %104, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 1040
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 1056
  br i1 %67, label %104, label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 1056
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 1072
  br i1 %73, label %104, label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 1072
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 1088
  br i1 %79, label %104, label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 1088
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 1104
  br i1 %85, label %104, label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 1104
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 1280
  br i1 %91, label %104, label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 1356
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 1384
  br i1 %97, label %104, label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 1480
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 1536
  br i1 %103, label %104, label %123

104:                                              ; preds = %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %20, %17, %14
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @ql_read_other_func_xgmac_reg(%struct.ql_adapter* %108, i32 %109, i32* %110)
  store i32 %111, i32* %7, align 4
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @ql_read_xgmac_reg(%struct.ql_adapter* %113, i32 %114, i32* %115)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  store i32 -559038737, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %117
  br label %129

123:                                              ; preds = %101, %98
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 4
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %5, align 8
  br label %10

129:                                              ; preds = %122, %10
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @ql_read_other_func_xgmac_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_read_xgmac_reg(%struct.ql_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
