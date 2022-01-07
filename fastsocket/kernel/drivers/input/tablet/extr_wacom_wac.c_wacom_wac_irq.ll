; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_wac_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_wac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_wac_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %7 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %43 [
    i32 138, label %11
    i32 137, label %15
    i32 129, label %19
    i32 149, label %19
    i32 128, label %19
    i32 136, label %23
    i32 150, label %27
    i32 148, label %31
    i32 145, label %31
    i32 147, label %31
    i32 146, label %31
    i32 142, label %31
    i32 144, label %31
    i32 143, label %31
    i32 139, label %31
    i32 141, label %31
    i32 140, label %31
    i32 151, label %31
    i32 130, label %31
    i32 133, label %31
    i32 132, label %31
    i32 131, label %31
    i32 135, label %35
    i32 134, label %35
    i32 152, label %39
  ]

11:                                               ; preds = %2
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @wacom_penpartner_irq(%struct.wacom_wac* %12, i8* %13)
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @wacom_pl_irq(%struct.wacom_wac* %16, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @wacom_graphire_irq(%struct.wacom_wac* %20, i8* %21)
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @wacom_ptu_irq(%struct.wacom_wac* %24, i8* %25)
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @wacom_dtu_irq(%struct.wacom_wac* %28, i8* %29)
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @wacom_intuos_irq(%struct.wacom_wac* %32, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %2, %2
  %36 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @wacom_tpc_irq(%struct.wacom_wac* %36, i8* %37)
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @wacom_bpt_irq(%struct.wacom_wac* %40, i8* %41)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @wacom_penpartner_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_pl_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_graphire_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_ptu_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_dtu_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_intuos_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_tpc_irq(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_bpt_irq(%struct.wacom_wac*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
