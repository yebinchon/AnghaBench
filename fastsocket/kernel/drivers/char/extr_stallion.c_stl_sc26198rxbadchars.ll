; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198rxbadchars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198rxbadchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32 }

@MR1 = common dso_local global i32 0, align 4
@MR1_ERRBLOCK = common dso_local global i8 0, align 1
@SR = common dso_local global i32 0, align 4
@SR_RXRDY = common dso_local global i8 0, align 1
@SCCR = common dso_local global i32 0, align 4
@CR_CLEARRXERR = common dso_local global i8 0, align 1
@RXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*)* @stl_sc26198rxbadchars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198rxbadchars(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  %6 = load %struct.stlport*, %struct.stlport** %2, align 8
  %7 = load i32, i32* @MR1, align 4
  %8 = call i8* @stl_sc26198getreg(%struct.stlport* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load %struct.stlport*, %struct.stlport** %2, align 8
  %11 = load i32, i32* @MR1, align 4
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @MR1_ERRBLOCK, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = trunc i32 %17 to i8
  %19 = call i32 @stl_sc26198setreg(%struct.stlport* %10, i32 %11, i8 zeroext %18)
  br label %20

20:                                               ; preds = %30, %1
  %21 = load %struct.stlport*, %struct.stlport** %2, align 8
  %22 = load i32, i32* @SR, align 4
  %23 = call i8* @stl_sc26198getreg(%struct.stlport* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SR_RXRDY, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load %struct.stlport*, %struct.stlport** %2, align 8
  %32 = load i32, i32* @SCCR, align 4
  %33 = load i8, i8* @CR_CLEARRXERR, align 1
  %34 = call i32 @stl_sc26198setreg(%struct.stlport* %31, i32 %32, i8 zeroext %33)
  %35 = load %struct.stlport*, %struct.stlport** %2, align 8
  %36 = load i32, i32* @RXFIFO, align 4
  %37 = call i8* @stl_sc26198getreg(%struct.stlport* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i8
  store i8 %38, i8* %5, align 1
  %39 = load %struct.stlport*, %struct.stlport** %2, align 8
  %40 = load i8, i8* %3, align 1
  %41 = load i8, i8* %5, align 1
  %42 = call i32 @stl_sc26198rxbadch(%struct.stlport* %39, i8 zeroext %40, i8 signext %41)
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.stlport*, %struct.stlport** %2, align 8
  %45 = load i32, i32* @MR1, align 4
  %46 = load i8, i8* %4, align 1
  %47 = call i32 @stl_sc26198setreg(%struct.stlport* %44, i32 %45, i8 zeroext %46)
  ret void
}

declare dso_local i8* @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_sc26198rxbadch(%struct.stlport*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
