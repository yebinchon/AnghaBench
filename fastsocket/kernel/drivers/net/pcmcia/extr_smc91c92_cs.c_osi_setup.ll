; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_osi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_osi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_6__, %struct.net_device* }
%struct.TYPE_6__ = type { i64 }
%struct.net_device = type { i32* }
%struct.smc_cfg_mem = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i32 0, align 4
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@MANFID_PSION = common dso_local global i64 0, align 8
@PRODID_PSION_NET100 = common dso_local global i64 0, align 8
@OSITECH_AUI_PWR = common dso_local global i64 0, align 8
@OSITECH_RESET_ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"AUI/PWR: %4.4x RESET/ISR: %4.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i64, i64)* @osi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osi_setup(%struct.pcmcia_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.smc_cfg_mem*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.smc_cfg_mem* @kmalloc(i32 40, i32 %17)
  store %struct.smc_cfg_mem* %18, %struct.smc_cfg_mem** %9, align 8
  %19 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %9, align 8
  %20 = icmp ne %struct.smc_cfg_mem* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %149

22:                                               ; preds = %3
  %23 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %9, align 8
  %24 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %23, i32 0, i32 1
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %9, align 8
  %26 = getelementptr inbounds %struct.smc_cfg_mem, %struct.smc_cfg_mem* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* @TUPLE_RETURN_COMMON, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 255, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 144, i32* %39, align 4
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = call i32 @pcmcia_get_first_tuple(%struct.pcmcia_device* %40, %struct.TYPE_7__* %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %58, %22
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %47, %struct.TYPE_7__* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %46
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = call i32 @pcmcia_get_next_tuple(%struct.pcmcia_device* %59, %struct.TYPE_7__* %60)
  store i32 %61, i32* %12, align 4
  br label %43

62:                                               ; preds = %57, %43
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -1, i32* %13, align 4
  br label %145

66:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %83, %66
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 6
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @MANFID_OSITECH, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %90, %86
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @MANFID_PSION, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @PRODID_PSION_NET100, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98, %90
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %104 = call i32 @osi_load_firmware(%struct.pcmcia_device* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %145

108:                                              ; preds = %102
  br label %144

109:                                              ; preds = %98, %94
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @MANFID_OSITECH, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %115 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @set_bits(i32 768, i64 %119)
  %121 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %122 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @OSITECH_RESET_ISR, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @set_bits(i32 768, i64 %126)
  %128 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %129 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @inw(i64 %133)
  %135 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %136 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @OSITECH_RESET_ISR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @inw(i64 %140)
  %142 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %141)
  br label %143

143:                                              ; preds = %113, %109
  br label %144

144:                                              ; preds = %143, %108
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %107, %65
  %146 = load %struct.smc_cfg_mem*, %struct.smc_cfg_mem** %9, align 8
  %147 = call i32 @kfree(%struct.smc_cfg_mem* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.smc_cfg_mem* @kmalloc(i32, i32) #1

declare dso_local i32 @pcmcia_get_first_tuple(%struct.pcmcia_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @pcmcia_get_tuple_data(%struct.pcmcia_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @pcmcia_get_next_tuple(%struct.pcmcia_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @osi_load_firmware(%struct.pcmcia_device*) #1

declare dso_local i32 @set_bits(i32, i64) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @kfree(%struct.smc_cfg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
