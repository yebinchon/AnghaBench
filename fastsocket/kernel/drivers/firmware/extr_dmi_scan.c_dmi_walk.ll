; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dmi_scan.c_dmi_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dmi_scan.c_dmi_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type opaque
%struct.dmi_header.0 = type opaque

@dmi_available = common dso_local global i32 0, align 4
@dmi_base = common dso_local global i32 0, align 4
@dmi_len = common dso_local global i32 0, align 4
@dmi_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmi_walk(void (%struct.dmi_header*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (%struct.dmi_header*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store void (%struct.dmi_header*, i8*)* %0, void (%struct.dmi_header*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @dmi_available, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @dmi_base, align 4
  %12 = load i32, i32* @dmi_len, align 4
  %13 = call i32* @ioremap(i32 %11, i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %27

17:                                               ; preds = %10
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @dmi_len, align 4
  %20 = load i32, i32* @dmi_num, align 4
  %21 = load void (%struct.dmi_header*, i8*)*, void (%struct.dmi_header*, i8*)** %4, align 8
  %22 = bitcast void (%struct.dmi_header*, i8*)* %21 to void (%struct.dmi_header.0*, i8*)*
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @dmi_table(i32* %18, i32 %19, i32 %20, void (%struct.dmi_header.0*, i8*)* %22, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @iounmap(i32* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @dmi_table(i32*, i32, i32, void (%struct.dmi_header.0*, i8*)*, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
