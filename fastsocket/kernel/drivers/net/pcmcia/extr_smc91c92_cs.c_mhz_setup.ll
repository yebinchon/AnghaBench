; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.smc_cfg_mem = type { i8*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CISTPL_VERS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mhz_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhz_setup(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smc_cfg_mem*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.smc_cfg_mem* @kmalloc(i32 64, i32 %14)
  store %struct.smc_cfg_mem* %15, %struct.smc_cfg_mem** %5, align 8
  %16 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %17 = icmp ne %struct.smc_cfg_mem* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %109

19:                                               ; preds = %1
  %20 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %21 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %20, i32 0, i32 2
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %23 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %22, i32 0, i32 1
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %25 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 255, i32* %36, align 8
  %37 = load i32, i32* @CISTPL_VERS_1, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = call i64 @first_tuple(%struct.pcmcia_device* %40, %struct.TYPE_11__* %41, %struct.TYPE_12__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  store i32 -1, i32* %10, align 4
  br label %105

46:                                               ; preds = %19
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = call i64 @next_tuple(%struct.pcmcia_device* %47, %struct.TYPE_11__* %48, %struct.TYPE_12__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = call i64 @first_tuple(%struct.pcmcia_device* %53, %struct.TYPE_11__* %54, %struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 3
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %67, i64 %74
  store i8* %75, i8** %9, align 8
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @cvt_ascii_address(%struct.net_device* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %105

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i32 129, i32* %84, align 4
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = call i64 @pcmcia_get_first_tuple(%struct.pcmcia_device* %85, %struct.TYPE_11__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 -1, i32* %10, align 4
  br label %105

90:                                               ; preds = %82
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = call i64 @pcmcia_get_tuple_data(%struct.pcmcia_device* %91, %struct.TYPE_11__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %10, align 4
  br label %105

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 12
  store i8 0, i8* %98, align 1
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @cvt_ascii_address(%struct.net_device* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %105

104:                                              ; preds = %96
  store i32 -1, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %103, %95, %89, %80, %45
  %106 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %5, align 8
  %107 = call i32 @kfree(%struct.smc_cfg_mem* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.smc_cfg_mem* @kmalloc(i32, i32) #1

declare dso_local i64 @first_tuple(%struct.pcmcia_device*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @next_tuple(%struct.pcmcia_device*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @cvt_ascii_address(%struct.net_device*, i8*) #1

declare dso_local i64 @pcmcia_get_first_tuple(%struct.pcmcia_device*, %struct.TYPE_11__*) #1

declare dso_local i64 @pcmcia_get_tuple_data(%struct.pcmcia_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.smc_cfg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
