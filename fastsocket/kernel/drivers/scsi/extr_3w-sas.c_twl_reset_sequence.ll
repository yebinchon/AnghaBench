; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_reset_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_reset_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i64* }
%struct.TYPE_12__ = type { i16, i16, i16, i32, i32, i32, i32, i32, i32, i32 }

@TW_MAX_RESET_TRIES = common dso_local global i32 0, align 4
@TWL_CONTROLLER_READY = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Controller never went non-ready during reset sequence\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Controller not ready during reset sequence\00", align 1
@TW_INIT_MESSAGE_CREDITS = common dso_local global i32 0, align 4
@TW_EXTENDED_INIT_CONNECT = common dso_local global i32 0, align 4
@TW_CURRENT_DRIVER_SRL = common dso_local global i32 0, align 4
@TW_9750_ARCH_ID = common dso_local global i32 0, align 4
@TW_CURRENT_DRIVER_BRANCH = common dso_local global i32 0, align 4
@TW_CURRENT_DRIVER_BUILD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Initconnection failed while checking SRL\00", align 1
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TWL_STATUS_OVERRUN_SUBMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Bad controller status after loading sense buffers\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"AEN drain failed during reset sequence\00", align 1
@TW_DRIVER_VERSION = common dso_local global i32 0, align 4
@TW_BASE_FW_SRL = common dso_local global i32 0, align 4
@TW_BASE_FW_BRANCH = common dso_local global i32 0, align 4
@TW_BASE_FW_BUILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @twl_reset_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_reset_sequence(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %14, align 4
  br label %16

16:                                               ; preds = %134, %121, %67, %48, %32, %2
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @TW_MAX_RESET_TRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %187

20:                                               ; preds = %16
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = call i32 @TWL_SOFT_RESET(%struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32 @TWL_SCRPD3_REG_ADDR(%struct.TYPE_13__* %27)
  %29 = load i32, i32* @TWL_CONTROLLER_READY, align 4
  %30 = call i64 @twl_poll_register(%struct.TYPE_13__* %26, i32 %28, i32 %29, i32 0, i32 30)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TW_DRIVER, align 4
  %37 = call i32 @TW_PRINTK(i32 %35, i32 %36, i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %16

40:                                               ; preds = %23
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call i32 @TWL_SCRPD3_REG_ADDR(%struct.TYPE_13__* %42)
  %44 = load i32, i32* @TWL_CONTROLLER_READY, align 4
  %45 = load i32, i32* @TWL_CONTROLLER_READY, align 4
  %46 = call i64 @twl_poll_register(%struct.TYPE_13__* %41, i32 %43, i32 %44, i32 %45, i32 60)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TW_DRIVER, align 4
  %53 = call i32 @TW_PRINTK(i32 %51, i32 %52, i32 17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %16

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = load i32, i32* @TW_INIT_MESSAGE_CREDITS, align 4
  %60 = load i32, i32* @TW_EXTENDED_INIT_CONNECT, align 4
  %61 = load i32, i32* @TW_CURRENT_DRIVER_SRL, align 4
  %62 = load i32, i32* @TW_9750_ARCH_ID, align 4
  %63 = load i32, i32* @TW_CURRENT_DRIVER_BRANCH, align 4
  %64 = load i32, i32* @TW_CURRENT_DRIVER_BUILD, align 4
  %65 = call i64 @twl_initconnection(%struct.TYPE_13__* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i16* %8, i16* %9, i16* %10, i16* %11, i32* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TW_DRIVER, align 4
  %72 = call i32 @TW_PRINTK(i32 %70, i32 %71, i32 18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %16

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %114, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TW_Q_LENGTH, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %76
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 %88, 32
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = call i32 @TWL_HOBQPH_REG_ADDR(%struct.TYPE_13__* %90)
  %92 = call i32 @writel(i32 %89, i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = call i32 @TWL_HOBQPL_REG_ADDR(%struct.TYPE_13__* %101)
  %103 = call i32 @writel(i32 %100, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = call i32 @TWL_STATUS_REG_ADDR(%struct.TYPE_13__* %104)
  %106 = call i32 @readl(i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @TWL_STATUS_OVERRUN_SUBMIT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %80
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %80
  br label %76

115:                                              ; preds = %76
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = call i32 @TWL_STATUS_REG_ADDR(%struct.TYPE_13__* %116)
  %118 = call i32 @readl(i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TW_DRIVER, align 4
  %126 = call i32 @TW_PRINTK(i32 %124, i32 %125, i32 19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %16

129:                                              ; preds = %115
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @twl_aen_drain_queue(%struct.TYPE_13__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TW_DRIVER, align 4
  %139 = call i32 @TW_PRINTK(i32 %137, i32 %138, i32 20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %16

142:                                              ; preds = %129
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TW_DRIVER_VERSION, align 4
  %148 = load i32, i32* @TW_DRIVER_VERSION, align 4
  %149 = call i32 @strlen(i32 %148)
  %150 = call i32 @strncpy(i32 %146, i32 %147, i32 %149)
  %151 = load i32, i32* @TW_CURRENT_DRIVER_SRL, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 8
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @TW_CURRENT_DRIVER_BRANCH, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 7
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @TW_CURRENT_DRIVER_BUILD, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @TW_BASE_FW_SRL, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 5
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* @TW_BASE_FW_BRANCH, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 4
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* @TW_BASE_FW_BUILD, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 8
  %175 = load i16, i16* %8, align 2
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i16 %175, i16* %178, align 8
  %179 = load i16, i16* %10, align 2
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  store i16 %179, i16* %182, align 2
  %183 = load i16, i16* %11, align 2
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  store i16 %183, i16* %186, align 4
  store i32 0, i32* %5, align 4
  br label %188

187:                                              ; preds = %16
  br label %188

188:                                              ; preds = %187, %142
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @TWL_SOFT_RESET(%struct.TYPE_13__*) #1

declare dso_local i64 @twl_poll_register(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @TWL_SCRPD3_REG_ADDR(%struct.TYPE_13__*) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i64 @twl_initconnection(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i16*, i16*, i16*, i16*, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @TWL_HOBQPH_REG_ADDR(%struct.TYPE_13__*) #1

declare dso_local i32 @TWL_HOBQPL_REG_ADDR(%struct.TYPE_13__*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @TWL_STATUS_REG_ADDR(%struct.TYPE_13__*) #1

declare dso_local i64 @twl_aen_drain_queue(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
