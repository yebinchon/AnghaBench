; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_briq_panel.c_update_vfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_briq_panel.c_update_vfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRIQ_PANEL_VFD_IOPORT = common dso_local global i64 0, align 8
@vfd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_vfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vfd() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @BRIQ_PANEL_VFD_IOPORT, align 8
  %3 = call i32 @outb(i32 2, i64 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 20
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load i32*, i32** @vfd, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @BRIQ_PANEL_VFD_IOPORT, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @outb(i32 %12, i64 %14)
  br label %16

16:                                               ; preds = %7
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load i64, i64* @BRIQ_PANEL_VFD_IOPORT, align 8
  %21 = call i32 @outb(i32 192, i64 %20)
  store i32 20, i32* %1, align 4
  br label %22

22:                                               ; preds = %34, %19
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 40
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** @vfd, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @BRIQ_PANEL_VFD_IOPORT, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @outb(i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %22

37:                                               ; preds = %22
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
