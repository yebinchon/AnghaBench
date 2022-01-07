; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32**, %struct.net_device* }
%struct.net_device = type { i32* }
%struct.smc_cfg_mem = type { i32*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i64, i64 }
%struct.TYPE_11__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISTPL_FUNCE = common dso_local global i32 0, align 4
@CISTPL_FUNCE_LAN_NODE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @smc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_setup(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_cfg_mem*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.smc_cfg_mem* @kmalloc(i32 56, i32 %16)
  store %struct.smc_cfg_mem* %17, %struct.smc_cfg_mem** %5, align 8
  %18 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %19 = icmp ne %struct.smc_cfg_mem* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %123

23:                                               ; preds = %1
  %24 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %25 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %24, i32 0, i32 2
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %6, align 8
  %26 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %27 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %26, i32 0, i32 1
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %7, align 8
  %28 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %29 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  %40 = load i32, i32* @CISTPL_FUNCE, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = call i32 @first_tuple(%struct.pcmcia_device* %43, %struct.TYPE_10__* %44, %struct.TYPE_12__* %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %58, %23
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CISTPL_FUNCE_LAN_NODE_ID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = call i32 @next_tuple(%struct.pcmcia_device* %59, %struct.TYPE_10__* %60, %struct.TYPE_12__* %61)
  store i32 %62, i32* %11, align 4
  br label %47

63:                                               ; preds = %57, %47
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %8, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %98

76:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 6
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %77

97:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %119

98:                                               ; preds = %66
  br label %99

99:                                               ; preds = %98, %63
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %101 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 2
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %108 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 2
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %10, align 8
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @cvt_ascii_address(%struct.net_device* %112, i32* %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %119

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %99
  store i32 -1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %116, %97
  %120 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %121 = call i32 @kfree(%struct.smc_cfg_mem* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.smc_cfg_mem* @kmalloc(i32, i32) #1

declare dso_local i32 @first_tuple(%struct.pcmcia_device*, %struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @next_tuple(%struct.pcmcia_device*, %struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i64 @cvt_ascii_address(%struct.net_device*, i32*) #1

declare dso_local i32 @kfree(%struct.smc_cfg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
