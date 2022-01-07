; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_intr_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, i32, i32, i32, i32, i32 }

@JME_IENC = common dso_local global i32 0, align 4
@INTR_ENABLE = common dso_local global i32 0, align 4
@INTR_LINKCH = common dso_local global i32 0, align 4
@INTR_SWINTR = common dso_local global i32 0, align 4
@JME_IEVE = common dso_local global i32 0, align 4
@INTR_TMINTR = common dso_local global i32 0, align 4
@INTR_PCCTXTO = common dso_local global i32 0, align 4
@INTR_PCCTX = common dso_local global i32 0, align 4
@INTR_TX0 = common dso_local global i32 0, align 4
@INTR_PCCRX0TO = common dso_local global i32 0, align 4
@INTR_PCCRX0 = common dso_local global i32 0, align 4
@INTR_RX0EMP = common dso_local global i32 0, align 4
@INTR_RX0 = common dso_local global i32 0, align 4
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@JME_IENS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32)* @jme_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_intr_msi(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %6 = load i32, i32* @JME_IENC, align 4
  %7 = load i32, i32* @INTR_ENABLE, align 4
  %8 = call i32 @jwrite32f(%struct.jme_adapter* %5, i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @INTR_LINKCH, align 4
  %11 = load i32, i32* @INTR_SWINTR, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %17 = load i32, i32* @JME_IEVE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @jwrite32(%struct.jme_adapter* %16, i32 %17, i32 %18)
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %20, i32 0, i32 6
  %22 = call i32 @tasklet_schedule(i32* %21)
  br label %139

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @INTR_TMINTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %30 = load i32, i32* @JME_IEVE, align 4
  %31 = load i32, i32* @INTR_TMINTR, align 4
  %32 = call i32 @jwrite32(%struct.jme_adapter* %29, i32 %30, i32 %31)
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 5
  %35 = call i32 @tasklet_schedule(i32* %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @INTR_PCCTXTO, align 4
  %39 = load i32, i32* @INTR_PCCTX, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %45 = load i32, i32* @JME_IEVE, align 4
  %46 = load i32, i32* @INTR_PCCTXTO, align 4
  %47 = load i32, i32* @INTR_PCCTX, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @INTR_TX0, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @jwrite32(%struct.jme_adapter* %44, i32 %45, i32 %50)
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 4
  %54 = call i32 @tasklet_schedule(i32* %53)
  br label %55

55:                                               ; preds = %43, %36
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @INTR_PCCRX0TO, align 4
  %58 = load i32, i32* @INTR_PCCRX0, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @INTR_RX0EMP, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %66 = load i32, i32* @JME_IEVE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @INTR_PCCRX0TO, align 4
  %69 = load i32, i32* @INTR_PCCRX0, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @INTR_RX0EMP, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %67, %72
  %74 = load i32, i32* @INTR_RX0, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @jwrite32(%struct.jme_adapter* %65, i32 %66, i32 %75)
  br label %77

77:                                               ; preds = %64, %55
  %78 = load i32, i32* @JME_FLAG_POLL, align 4
  %79 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %79, i32 0, i32 3
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @INTR_RX0EMP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %89, i32 0, i32 2
  %91 = call i32 @atomic_inc(i32* %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @INTR_PCCRX0TO, align 4
  %95 = load i32, i32* @INTR_PCCRX0, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @INTR_RX0EMP, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %103 = call i32 @JME_RX_SCHEDULE_PREP(%struct.jme_adapter* %102)
  %104 = call i64 @likely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %108 = call i32 @jme_polling_mode(%struct.jme_adapter* %107)
  %109 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %110 = call i32 @JME_RX_SCHEDULE(%struct.jme_adapter* %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %92
  br label %138

113:                                              ; preds = %77
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @INTR_RX0EMP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %119, i32 0, i32 2
  %121 = call i32 @atomic_inc(i32* %120)
  %122 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %122, i32 0, i32 1
  %124 = call i32 @tasklet_hi_schedule(i32* %123)
  br label %137

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @INTR_PCCRX0TO, align 4
  %128 = load i32, i32* @INTR_PCCRX0, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %133, i32 0, i32 0
  %135 = call i32 @tasklet_hi_schedule(i32* %134)
  br label %136

136:                                              ; preds = %132, %125
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %112
  br label %139

139:                                              ; preds = %138, %15
  %140 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %141 = load i32, i32* @JME_IENS, align 4
  %142 = load i32, i32* @INTR_ENABLE, align 4
  %143 = call i32 @jwrite32f(%struct.jme_adapter* %140, i32 %141, i32 %142)
  ret void
}

declare dso_local i32 @jwrite32f(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @JME_RX_SCHEDULE_PREP(%struct.jme_adapter*) #1

declare dso_local i32 @jme_polling_mode(%struct.jme_adapter*) #1

declare dso_local i32 @JME_RX_SCHEDULE(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
