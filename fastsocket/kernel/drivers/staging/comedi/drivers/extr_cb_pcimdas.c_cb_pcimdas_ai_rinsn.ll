; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcimdas_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcimdas_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @inb(i64 %24)
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %137

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 5
  %49 = call i32 @inb(i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 3
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 253
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = trunc i32 %56 to i16
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 5
  %62 = call i32 @outb(i16 zeroext %57, i64 %61)
  br label %63

63:                                               ; preds = %53, %44
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 6
  %68 = call i32 @outb(i16 zeroext 1, i64 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 7
  %73 = call i32 @outb(i16 zeroext 0, i64 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 %75, 4
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %15, align 2
  %79 = load i16, i16* %15, align 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 0
  %84 = call i32 @outb(i16 zeroext %79, i64 %83)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %132, %63
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %85
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 0
  %96 = call i32 @outw(i32 0, i64 %95)
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %111, %91
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 1000
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 2
  %105 = call i32 @inb(i64 %104)
  %106 = and i32 %105, 128
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  br label %114

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %97

114:                                              ; preds = %109, %97
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 1000
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @ETIMEDOUT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %137

121:                                              ; preds = %114
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 0
  %126 = call i32 @inw(i64 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %85

135:                                              ; preds = %85
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %117, %41
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
