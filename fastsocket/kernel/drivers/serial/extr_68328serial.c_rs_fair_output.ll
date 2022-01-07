; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_fair_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_fair_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m68k_serial = type { i8*, i32, i64 }

@m68k_soft = common dso_local global %struct.m68k_serial* null, align 8
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs_fair_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_fair_output() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.m68k_serial*, align 8
  %4 = alloca i8, align 1
  %5 = load %struct.m68k_serial*, %struct.m68k_serial** @m68k_soft, align 8
  %6 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %5, i64 0
  store %struct.m68k_serial* %6, %struct.m68k_serial** %3, align 8
  %7 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %8 = icmp eq %struct.m68k_serial* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %64

10:                                               ; preds = %0
  %11 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %12 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %64

16:                                               ; preds = %10
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %20 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %25, %16
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %27 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %30 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %4, align 1
  %34 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %35 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = and i64 %37, %40
  %42 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %43 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %45 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load i8, i8* %4, align 1
  %51 = call i32 @rs_put_char(i8 signext %50)
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @local_irq_save(i64 %52)
  %54 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %55 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @min(i32 %56, i32 %58)
  store i32 %59, i32* %1, align 4
  br label %22

60:                                               ; preds = %22
  %61 = call i32 @udelay(i32 5)
  %62 = load i64, i64* %2, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  br label %64

64:                                               ; preds = %60, %15, %9
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @rs_put_char(i8 signext) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
