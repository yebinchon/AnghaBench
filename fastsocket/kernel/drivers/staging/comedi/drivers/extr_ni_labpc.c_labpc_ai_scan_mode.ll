; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_scan_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32* }

@MODE_SINGLE_CHAN = common dso_local global i32 0, align 4
@MODE_MULT_CHAN_UP = common dso_local global i32 0, align 4
@MODE_SINGLE_CHAN_INTERVAL = common dso_local global i32 0, align 4
@MODE_MULT_CHAN_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ni_labpc: bug! this should never happen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_cmd*)* @labpc_ai_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_scan_mode(%struct.comedi_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_cmd* %0, %struct.comedi_cmd** %3, align 8
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @MODE_MULT_CHAN_UP, align 4
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %10
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CR_CHAN(i32 %22)
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CR_CHAN(i32 %28)
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @MODE_SINGLE_CHAN_INTERVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %17
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @CR_CHAN(i32 %38)
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CR_CHAN(i32 %44)
  %46 = icmp slt i64 %39, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @MODE_MULT_CHAN_UP, align 4
  store i32 %48, i32* %2, align 4
  br label %67

49:                                               ; preds = %33
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @CR_CHAN(i32 %54)
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @CR_CHAN(i32 %60)
  %62 = icmp sgt i64 %55, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @MODE_MULT_CHAN_DOWN, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %49
  %66 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %63, %47, %31, %15, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
