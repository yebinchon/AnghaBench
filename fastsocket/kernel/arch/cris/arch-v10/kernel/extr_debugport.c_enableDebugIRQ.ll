; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_enableDebugIRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_debugport.c_enableDebugIRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32 }

@kgdb_port = common dso_local global %struct.TYPE_2__* null, align 8
@R_IRQ_MASK1_SET = common dso_local global i32* null, align 8
@R_VECT_MASK_SET = common dso_local global i8** null, align 8
@serial = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@R_SERIAL0_REC_CTRL = common dso_local global i8** null, align 8
@rec_enable = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enableDebugIRQ() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_port, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_port, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32*, i32** @R_IRQ_MASK1_SET, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i8**, i8*** @R_VECT_MASK_SET, align 8
  %10 = load i32, i32* @serial, align 4
  %11 = load i32, i32* @set, align 4
  %12 = call i8* @IO_STATE(i8** %9, i32 %10, i32 %11)
  %13 = load i8**, i8*** @R_VECT_MASK_SET, align 8
  store i8* %12, i8** %13, align 8
  %14 = load i8**, i8*** @R_SERIAL0_REC_CTRL, align 8
  %15 = load i32, i32* @rec_enable, align 4
  %16 = load i32, i32* @enable, align 4
  %17 = call i8* @IO_STATE(i8** %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_port, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  store i8* %17, i8** %20, align 8
  br label %21

21:                                               ; preds = %4, %3
  ret void
}

declare dso_local i8* @IO_STATE(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
