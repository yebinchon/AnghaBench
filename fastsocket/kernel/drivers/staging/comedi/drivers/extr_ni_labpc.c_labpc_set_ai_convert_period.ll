; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_set_ai_convert_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_set_ai_convert_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i64, i64, i32, i32 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@MODE_SINGLE_CHAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_cmd*, i32)* @labpc_set_ai_convert_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_set_ai_convert_period(%struct.comedi_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_cmd* %0, %struct.comedi_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRIG_TIMER, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %13 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %12)
  %14 = load i64, i64* @MODE_SINGLE_CHAN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRIG_TIMER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %22
  br label %44

40:                                               ; preds = %16, %11
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %10, %40, %39
  ret void
}

declare dso_local i64 @labpc_ai_scan_mode(%struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
