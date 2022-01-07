; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_get_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"get resources\0A\00", align 1
@ISAPNP_CFG_ACTIVATE = common dso_local global i64 0, align 8
@ISAPNP_MAX_PORT = common dso_local global i32 0, align 4
@ISAPNP_CFG_PORT = common dso_local global i64 0, align 8
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@ISAPNP_MAX_MEM = common dso_local global i32 0, align 4
@ISAPNP_CFG_MEM = common dso_local global i64 0, align 8
@ISAPNP_MAX_IRQ = common dso_local global i32 0, align 4
@ISAPNP_CFG_IRQ = common dso_local global i64 0, align 8
@ISAPNP_MAX_DMA = common dso_local global i32 0, align 4
@ISAPNP_CFG_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @isapnp_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_get_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 3
  %7 = call i32 @pnp_dbg(i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %9 = call i32 @pnp_init_resources(%struct.pnp_dev* %8)
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @isapnp_cfg_begin(i32 %14, i32 %17)
  %19 = load i64, i64* @ISAPNP_CFG_ACTIVATE, align 8
  %20 = call i8* @isapnp_read_byte(i64 %19)
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %133

28:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ISAPNP_MAX_PORT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i64, i64* @ISAPNP_CFG_PORT, align 8
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @isapnp_read_word(i64 %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @IORESOURCE_DISABLED, align 4
  br label %48

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = call i32 @pnp_add_io_resource(%struct.pnp_dev* %40, i32 %41, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %29

54:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ISAPNP_MAX_MEM, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i64, i64* @ISAPNP_CFG_MEM, align 8
  %61 = load i32, i32* %3, align 4
  %62 = shl i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @isapnp_read_word(i64 %64)
  %66 = shl i32 %65, 8
  store i32 %66, i32* %4, align 4
  %67 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @IORESOURCE_DISABLED, align 4
  br label %75

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %67, i32 %68, i32 %69, i32 %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %55

81:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %104, %81
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @ISAPNP_MAX_IRQ, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load i64, i64* @ISAPNP_CFG_IRQ, align 8
  %88 = load i32, i32* %3, align 4
  %89 = shl i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @isapnp_read_word(i64 %91)
  %93 = ashr i32 %92, 8
  store i32 %93, i32* %4, align 4
  %94 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @IORESOURCE_DISABLED, align 4
  br label %101

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %94, i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %82

107:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %129, %107
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @ISAPNP_MAX_DMA, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load i64, i64* @ISAPNP_CFG_DMA, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i8* @isapnp_read_byte(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  store i32 %118, i32* %4, align 4
  %119 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @IORESOURCE_DISABLED, align 4
  br label %126

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %119, i32 %120, i32 %127)
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %108

132:                                              ; preds = %108
  br label %133

133:                                              ; preds = %132, %27
  %134 = call i32 (...) @isapnp_cfg_end()
  ret i32 0
}

declare dso_local i32 @pnp_dbg(i32*, i8*) #1

declare dso_local i32 @pnp_init_resources(%struct.pnp_dev*) #1

declare dso_local i32 @isapnp_cfg_begin(i32, i32) #1

declare dso_local i8* @isapnp_read_byte(i64) #1

declare dso_local i32 @isapnp_read_word(i64) #1

declare dso_local i32 @pnp_add_io_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @isapnp_cfg_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
