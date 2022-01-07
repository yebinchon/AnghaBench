; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_set_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/isapnp/extr_core.c_isapnp_set_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"set resources\0A\00", align 1
@ISAPNP_MAX_PORT = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  set io  %d to %#llx\0A\00", align 1
@ISAPNP_CFG_PORT = common dso_local global i64 0, align 8
@ISAPNP_MAX_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"  set irq %d to %d\0A\00", align 1
@ISAPNP_CFG_IRQ = common dso_local global i64 0, align 8
@ISAPNP_MAX_DMA = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"  set dma %d to %lld\0A\00", align 1
@ISAPNP_CFG_DMA = common dso_local global i64 0, align 8
@ISAPNP_MAX_MEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"  set mem %d to %#llx\0A\00", align 1
@ISAPNP_CFG_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @isapnp_set_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_set_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 2
  %8 = call i32 (i32*, i8*, ...) @pnp_dbg(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @isapnp_cfg_begin(i32 %13, i32 %16)
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %51, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ISAPNP_MAX_PORT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %26 = load i32, i32* @IORESOURCE_IO, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %25, i32 %26, i32 %27)
  store %struct.resource* %28, %struct.resource** %3, align 8
  %29 = load %struct.resource*, %struct.resource** %3, align 8
  %30 = call i64 @pnp_resource_enabled(%struct.resource* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.resource*, %struct.resource** %3, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 (i32*, i8*, ...) @pnp_dbg(i32* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %39)
  %41 = load i64, i64* @ISAPNP_CFG_PORT, align 8
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.resource*, %struct.resource** %3, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @isapnp_write_word(i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %32, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %20

54:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %88, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ISAPNP_MAX_IRQ, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %61 = load i32, i32* @IORESOURCE_IRQ, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %60, i32 %61, i32 %62)
  store %struct.resource* %63, %struct.resource** %3, align 8
  %64 = load %struct.resource*, %struct.resource** %3, align 8
  %65 = call i64 @pnp_resource_enabled(%struct.resource* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load %struct.resource*, %struct.resource** %3, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 9, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %76 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32*, i8*, ...) @pnp_dbg(i32* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i64, i64* @ISAPNP_CFG_IRQ, align 8
  %81 = load i32, i32* %4, align 4
  %82 = shl i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @isapnp_write_byte(i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %55

91:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ISAPNP_MAX_DMA, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  %97 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %98 = load i32, i32* @IORESOURCE_DMA, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %97, i32 %98, i32 %99)
  store %struct.resource* %100, %struct.resource** %3, align 8
  %101 = load %struct.resource*, %struct.resource** %3, align 8
  %102 = call i64 @pnp_resource_enabled(%struct.resource* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %96
  %105 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %106 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.resource*, %struct.resource** %3, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 (i32*, i8*, ...) @pnp_dbg(i32* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107, i64 %111)
  %113 = load i64, i64* @ISAPNP_CFG_DMA, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load %struct.resource*, %struct.resource** %3, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @isapnp_write_byte(i64 %116, i32 %119)
  br label %121

121:                                              ; preds = %104, %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %92

125:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %159, %125
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @ISAPNP_MAX_MEM, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %126
  %131 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %132 = load i32, i32* @IORESOURCE_MEM, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %131, i32 %132, i32 %133)
  store %struct.resource* %134, %struct.resource** %3, align 8
  %135 = load %struct.resource*, %struct.resource** %3, align 8
  %136 = call i64 @pnp_resource_enabled(%struct.resource* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %140 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.resource*, %struct.resource** %3, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 (i32*, i8*, ...) @pnp_dbg(i32* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %141, i64 %145)
  %147 = load i64, i64* @ISAPNP_CFG_MEM, align 8
  %148 = load i32, i32* %4, align 4
  %149 = shl i32 %148, 3
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %147, %150
  %152 = load %struct.resource*, %struct.resource** %3, align 8
  %153 = getelementptr inbounds %struct.resource, %struct.resource* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 65535
  %157 = call i32 @isapnp_write_word(i64 %151, i32 %156)
  br label %158

158:                                              ; preds = %138, %130
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %126

162:                                              ; preds = %126
  %163 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %164 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @isapnp_activate(i32 %165)
  %167 = call i32 (...) @isapnp_cfg_end()
  ret i32 0
}

declare dso_local i32 @pnp_dbg(i32*, i8*, ...) #1

declare dso_local i32 @isapnp_cfg_begin(i32, i32) #1

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i64 @pnp_resource_enabled(%struct.resource*) #1

declare dso_local i32 @isapnp_write_word(i64, i32) #1

declare dso_local i32 @isapnp_write_byte(i64, i32) #1

declare dso_local i32 @isapnp_activate(i32) #1

declare dso_local i32 @isapnp_cfg_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
