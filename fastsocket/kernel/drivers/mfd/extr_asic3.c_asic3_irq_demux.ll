; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 (i32, %struct.irq_desc*)*, %struct.asic3*, %struct.TYPE_2__* }
%struct.asic3 = type { i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@MAX_ASIC_ISR_LOOPS = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@P_INT_STAT = common dso_local global i32 0, align 4
@ASIC3_NUM_GPIO_BANKS = common dso_local global i32 0, align 4
@ASIC3_GPIO_A_BASE = common dso_local global i32 0, align 4
@ASIC3_GPIO_BASE_INCR = common dso_local global i32 0, align 4
@ASIC3_GPIO_INT_STATUS = common dso_local global i64 0, align 8
@ASIC3_GPIOS_PER_BANK = common dso_local global i32 0, align 4
@ASIC3_NUM_GPIOS = common dso_local global i32 0, align 4
@ASIC3_NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"interrupt processing overrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @asic3_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_irq_demux(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.asic3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 %19(i32 %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 1
  %24 = load %struct.asic3*, %struct.asic3** %23, align 8
  store %struct.asic3* %24, %struct.asic3** %8, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %177, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_ASIC_ISR_LOOPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %180

29:                                               ; preds = %25
  %30 = load %struct.asic3*, %struct.asic3** %8, align 8
  %31 = getelementptr inbounds %struct.asic3, %struct.asic3* %30, i32 0, i32 3
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.asic3*, %struct.asic3** %8, align 8
  %35 = load i32, i32* @INTR, align 4
  %36 = load i32, i32* @P_INT_STAT, align 4
  %37 = call i64 @ASIC3_OFFSET(i32 %35, i32 %36)
  %38 = call i8* @asic3_read_register(%struct.asic3* %34, i64 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.asic3*, %struct.asic3** %8, align 8
  %41 = getelementptr inbounds %struct.asic3, %struct.asic3* %40, i32 0, i32 3
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 1023
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %180

48:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %137, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ASIC3_NUM_GPIO_BANKS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %136

59:                                               ; preds = %53
  %60 = load i32, i32* @ASIC3_GPIO_A_BASE, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ASIC3_GPIO_BASE_INCR, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.asic3*, %struct.asic3** %8, align 8
  %67 = getelementptr inbounds %struct.asic3, %struct.asic3* %66, i32 0, i32 3
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.asic3*, %struct.asic3** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @ASIC3_GPIO_INT_STATUS, align 8
  %73 = add i64 %71, %72
  %74 = call i8* @asic3_read_register(%struct.asic3* %70, i64 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %12, align 8
  %76 = load %struct.asic3*, %struct.asic3** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @ASIC3_GPIO_INT_STATUS, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @asic3_write_register(%struct.asic3* %76, i64 %79, i32 0)
  %81 = load %struct.asic3*, %struct.asic3** %8, align 8
  %82 = getelementptr inbounds %struct.asic3, %struct.asic3* %81, i32 0, i32 3
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %132, %59
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ASIC3_GPIOS_PER_BANK, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 1, %90
  store i32 %91, i32* %13, align 4
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %92, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %132

98:                                               ; preds = %89
  %99 = load %struct.asic3*, %struct.asic3** %8, align 8
  %100 = getelementptr inbounds %struct.asic3, %struct.asic3* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ASIC3_GPIOS_PER_BANK, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call %struct.irq_desc* @irq_to_desc(i32 %108)
  store %struct.irq_desc* %109, %struct.irq_desc** %4, align 8
  %110 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %111 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %110, i32 0, i32 0
  %112 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %115 = call i32 %112(i32 %113, %struct.irq_desc* %114)
  %116 = load %struct.asic3*, %struct.asic3** %8, align 8
  %117 = getelementptr inbounds %struct.asic3, %struct.asic3* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %98
  %127 = load %struct.asic3*, %struct.asic3** %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @asic3_irq_flip_edge(%struct.asic3* %127, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %98
  br label %132

132:                                              ; preds = %131, %97
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %85

135:                                              ; preds = %85
  br label %136

136:                                              ; preds = %135, %53
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %49

140:                                              ; preds = %49
  %141 = load i32, i32* @ASIC3_NUM_GPIOS, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %173, %140
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @ASIC3_NR_IRQS, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ASIC3_NUM_GPIOS, align 4
  %150 = sub nsw i32 %148, %149
  %151 = add nsw i32 %150, 4
  %152 = shl i32 1, %151
  %153 = and i32 %147, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %146
  %156 = load %struct.asic3*, %struct.asic3** %8, align 8
  %157 = getelementptr inbounds %struct.asic3, %struct.asic3* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %158, %159
  %161 = call %struct.irq_desc* @irq_to_desc(i32 %160)
  store %struct.irq_desc* %161, %struct.irq_desc** %4, align 8
  %162 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %163 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %162, i32 0, i32 0
  %164 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %163, align 8
  %165 = load %struct.asic3*, %struct.asic3** %8, align 8
  %166 = getelementptr inbounds %struct.asic3, %struct.asic3* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %171 = call i32 %164(i32 %169, %struct.irq_desc* %170)
  br label %172

172:                                              ; preds = %155, %146
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %142

176:                                              ; preds = %142
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %25

180:                                              ; preds = %47, %25
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @MAX_ASIC_ISR_LOOPS, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.asic3*, %struct.asic3** %8, align 8
  %186 = getelementptr inbounds %struct.asic3, %struct.asic3* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dev_err(i32 %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %184, %180
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @asic3_read_register(%struct.asic3*, i64) #1

declare dso_local i64 @ASIC3_OFFSET(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @asic3_irq_flip_edge(%struct.asic3*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
