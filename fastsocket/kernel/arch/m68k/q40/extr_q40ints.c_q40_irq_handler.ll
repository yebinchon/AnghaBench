; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/q40/extr_q40ints.c_q40_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@IIRQ_REG = common dso_local global i32 0, align 4
@Q40_IRQ_SAMPLE = common dso_local global i32 0, align 4
@Q40_IRQ_FRAME_MASK = common dso_local global i32 0, align 4
@Q40_IRQ_FRAME = common dso_local global i32 0, align 4
@FRAME_CLEAR_REG = common dso_local global i32 0, align 4
@Q40_IRQ_SER_MASK = common dso_local global i32 0, align 4
@Q40_IRQ_EXT_MASK = common dso_local global i32 0, align 4
@EIRQ_REG = common dso_local global i32 0, align 4
@eirqs = common dso_local global %struct.TYPE_2__* null, align 8
@mext_disabled = common dso_local global i64 0, align 8
@q40_state = common dso_local global i32* null, align 8
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@disabled = common dso_local global i32 0, align 4
@ccleirq = common dso_local global i64 0, align 8
@aliased_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ISA interrupt from unknown source? EIRQ_REG = %x\0A\00", align 1
@Q40_IRQ_KEYB_MASK = common dso_local global i32 0, align 4
@Q40_IRQ_KEYBOARD = common dso_local global i32 0, align 4
@Q40_IRQ6_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pt_regs*)* @q40_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q40_irq_handler(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load i32, i32* @IIRQ_REG, align 4
  %9 = call i32 @master_inb(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %15 [
    i32 4, label %11
    i32 6, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @Q40_IRQ_SAMPLE, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = call i32 @__m68k_handle_int(i32 %12, %struct.pt_regs* %13)
  br label %145

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @Q40_IRQ_FRAME_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @Q40_IRQ_FRAME, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = call i32 @__m68k_handle_int(i32 %21, %struct.pt_regs* %22)
  %24 = load i32, i32* @FRAME_CLEAR_REG, align 4
  %25 = call i32 @master_outb(i32 -1, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @Q40_IRQ_SER_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @Q40_IRQ_EXT_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %132

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EIRQ_REG, align 4
  %38 = call i32 @master_inb(i32 %37)
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %114, %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eirqs, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %117

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eirqs, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %48, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %113

57:                                               ; preds = %47
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eirqs, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ugt i32 %64, 4
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = icmp ule i32 %67, 15
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* @mext_disabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %133

73:                                               ; preds = %69, %66, %57
  %74 = load i32*, i32** @q40_state, align 8
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IRQ_INPROGRESS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, -1793
  %87 = add nsw i32 %86, 512
  %88 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 1, i32* @disabled, align 4
  br label %133

90:                                               ; preds = %73
  %91 = load i32, i32* @IRQ_INPROGRESS, align 4
  %92 = load i32*, i32** @q40_state, align 8
  %93 = load i32, i32* %3, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %100 = call i32 @__m68k_handle_int(i32 %98, %struct.pt_regs* %99)
  %101 = load i32, i32* @IRQ_INPROGRESS, align 4
  %102 = xor i32 %101, -1
  %103 = load i32*, i32** @q40_state, align 8
  %104 = load i32, i32* %3, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @disabled, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %90
  store i32 0, i32* @disabled, align 4
  br label %112

112:                                              ; preds = %111, %90
  br label %145

113:                                              ; preds = %47
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %39

117:                                              ; preds = %39
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i64, i64* @ccleirq, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* @aliased_irq, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i64, i64* @ccleirq, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* @ccleirq, align 8
  br label %131

131:                                              ; preds = %126, %123, %120, %117
  br label %132

132:                                              ; preds = %131, %31
  br label %133

133:                                              ; preds = %132, %82, %72
  %134 = load i32, i32* @IIRQ_REG, align 4
  %135 = call i32 @master_inb(i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @Q40_IRQ_KEYB_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @Q40_IRQ_KEYBOARD, align 4
  %142 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %143 = call i32 @__m68k_handle_int(i32 %141, %struct.pt_regs* %142)
  br label %144

144:                                              ; preds = %140, %133
  br label %145

145:                                              ; preds = %144, %112, %11
  ret void
}

declare dso_local i32 @master_inb(i32) #1

declare dso_local i32 @__m68k_handle_int(i32, %struct.pt_regs*) #1

declare dso_local i32 @master_outb(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
