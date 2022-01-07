; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_set_basic_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_set_basic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biosregs = type { i32, i32 }

@do_restore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vga_set_basic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_set_basic_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = alloca %struct.biosregs, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @initregs(%struct.biosregs* %2)
  %7 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 3840, i32* %7, align 4
  %8 = call i32 @intcall(i32 16, %struct.biosregs* %2, %struct.biosregs* %3)
  %9 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @set_fs(i32 0)
  %12 = call i32 @rdfs8(i32 1156)
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 20483
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 20487
  br i1 %19, label %20, label %28

20:                                               ; preds = %16, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %1, align 4
  br label %40

28:                                               ; preds = %23, %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 7
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 3, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %31, %28
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = call i32 @intcall(i32 16, %struct.biosregs* %2, %struct.biosregs* null)
  store i32 1, i32* @do_restore, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @rdfs8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
