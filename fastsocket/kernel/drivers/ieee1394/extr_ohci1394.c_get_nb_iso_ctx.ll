; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_get_nb_iso_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_get_nb_iso_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Iso contexts reg: %08x implemented: %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ohci*, i32)* @get_nb_iso_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nb_iso_ctx(%struct.ti_ohci* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @reg_write(%struct.ti_ohci* %8, i32 %9, i32 -1)
  %11 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @reg_read(%struct.ti_ohci* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DBGMSG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @DBGMSG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
