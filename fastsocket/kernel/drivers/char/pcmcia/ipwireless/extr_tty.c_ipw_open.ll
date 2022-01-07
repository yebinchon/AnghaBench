; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.ipw_tty* }
%struct.ipw_tty = type { i64, i64, i32, i32, %struct.tty_struct*, i64, i64 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TTYTYPE_MODEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @ipw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ipw_tty* @get_tty(i32 %11)
  store %struct.ipw_tty* %12, %struct.ipw_tty** %7, align 8
  %13 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %14 = icmp ne %struct.ipw_tty* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %20 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %23 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %28 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %27, i32 0, i32 2
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %18
  %33 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %34 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %39 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %42 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %47 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %46, i32 0, i32 4
  store %struct.tty_struct* %45, %struct.tty_struct** %47, align 8
  %48 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 2
  store %struct.ipw_tty* %48, %struct.ipw_tty** %50, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %54 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TTYTYPE_MODEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %60 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ipwireless_ppp_open(i32 %61)
  br label %63

63:                                               ; preds = %58, %40
  %64 = load %struct.ipw_tty*, %struct.ipw_tty** %7, align 8
  %65 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %26, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ipw_tty* @get_tty(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ipwireless_ppp_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
