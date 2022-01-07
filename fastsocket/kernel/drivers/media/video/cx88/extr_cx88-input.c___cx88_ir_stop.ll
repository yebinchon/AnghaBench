; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c___cx88_ir_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c___cx88_ir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.cx88_IR* }
%struct.cx88_IR = type { i32, i64, i64 }

@MO_DDSCFG_IO = common dso_local global i32 0, align 4
@PCI_INT_IR_SMPINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__cx88_ir_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cx88_ir_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.cx88_IR*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cx88_core*
  store %struct.cx88_core* %6, %struct.cx88_core** %3, align 8
  %7 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %8 = icmp ne %struct.cx88_core* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 1
  %12 = load %struct.cx88_IR*, %struct.cx88_IR** %11, align 8
  %13 = icmp ne %struct.cx88_IR* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %41

15:                                               ; preds = %9
  %16 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %17 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %16, i32 0, i32 1
  %18 = load %struct.cx88_IR*, %struct.cx88_IR** %17, align 8
  store %struct.cx88_IR* %18, %struct.cx88_IR** %4, align 8
  %19 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %20 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @MO_DDSCFG_IO, align 4
  %25 = call i32 @cx_write(i32 %24, i32 0)
  %26 = load i32, i32* @PCI_INT_IR_SMPINT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %29 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %23, %15
  %33 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %34 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %39 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %38, i32 0, i32 0
  %40 = call i32 @hrtimer_cancel(i32* %39)
  br label %41

41:                                               ; preds = %14, %37, %32
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
