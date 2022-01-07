; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_tx_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i64, i64, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"TX: BUG: attempt to transmit NULL buffer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TX: no more data to send\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"TX: last sample sent by hardware\00", align 1
@sample_period = common dso_local global i32 0, align 4
@ENE_CIRRLC_OUT_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"TX: sample %8d (%s)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@ENE_CIRRLC_OUT_PULSE = common dso_local global i32 0, align 4
@ENE_CIRRLC_OUT1 = common dso_local global i32 0, align 4
@ENE_CIRRLC_OUT0 = common dso_local global i32 0, align 4
@txsim = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_tx_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_tx_sample(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %6 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %7 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %10 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @ene_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %17 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %75, label %20

20:                                               ; preds = %15
  %21 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %22 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %25 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %30 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %36 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %35, i32 0, i32 4
  store i32 1, i32* %36, align 8
  br label %123

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %40 = call i32 @ene_tx_disable(%struct.ene_device* %39)
  %41 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %42 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %41, i32 0, i32 8
  %43 = call i32 @complete(i32* %42)
  br label %135

44:                                               ; preds = %20
  %45 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %46 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %49 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i32, i32* %47, i64 %50
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %55 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %61 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @sample_period, align 4
  %64 = call i32 @DIV_ROUND_CLOSEST(i32 %62, i32 %63)
  %65 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %66 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %68 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %44
  %72 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %73 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %44
  br label %75

75:                                               ; preds = %74, %15
  %76 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %77 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @ENE_CIRRLC_OUT_MASK, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @min(i32 %78, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %84 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @sample_period, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %94 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %89, i8* %93)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %75
  %98 = load i32, i32* @ENE_CIRRLC_OUT_PULSE, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %75
  %102 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %103 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %104 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @ENE_CIRRLC_OUT1, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @ENE_CIRRLC_OUT0, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @ene_write_reg(%struct.ene_device* %102, i32 %112, i32 %113)
  %115 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %116 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %122 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %111, %33
  %124 = load i64, i64* @txsim, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %128 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %127, i32 0, i32 6
  %129 = load i64, i64* @jiffies, align 8
  %130 = load i32, i32* @HZ, align 4
  %131 = sdiv i32 %130, 500
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @mod_timer(i32* %128, i64 %133)
  br label %135

135:                                              ; preds = %13, %37, %126, %123
  ret void
}

declare dso_local i32 @ene_warn(i8*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @ene_tx_disable(%struct.ene_device*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ene_write_reg(%struct.ene_device*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
