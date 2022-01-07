; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r_port* }
%struct.r_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.file = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@SET_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SET_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @rp_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.r_port*, %struct.r_port** %11, align 8
  store %struct.r_port* %12, %struct.r_port** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @TIOCM_RTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load i32, i32* @SET_RTS, align 4
  %19 = load %struct.r_port*, %struct.r_port** %9, align 8
  %20 = getelementptr inbounds %struct.r_port, %struct.r_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %18
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @SET_DTR, align 4
  %33 = load %struct.r_port*, %struct.r_port** %9, align 8
  %34 = getelementptr inbounds %struct.r_port, %struct.r_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TIOCM_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* @SET_RTS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.r_port*, %struct.r_port** %9, align 8
  %49 = getelementptr inbounds %struct.r_port, %struct.r_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %47
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %40
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @TIOCM_DTR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* @SET_DTR, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.r_port*, %struct.r_port** %9, align 8
  %64 = getelementptr inbounds %struct.r_port, %struct.r_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %62
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load %struct.r_port*, %struct.r_port** %9, align 8
  %72 = getelementptr inbounds %struct.r_port, %struct.r_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.r_port*, %struct.r_port** %9, align 8
  %76 = getelementptr inbounds %struct.r_port, %struct.r_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @out32(i32 %74, i32* %78)
  ret i32 0
}

declare dso_local i32 @out32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
