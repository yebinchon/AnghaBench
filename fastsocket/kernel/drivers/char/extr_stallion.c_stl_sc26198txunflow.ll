; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198txunflow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198txunflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32 }
%struct.tty_struct = type { i32 }

@MR0 = common dso_local global i32 0, align 4
@MR0_SWFRXTX = common dso_local global i8 0, align 1
@SCCR = common dso_local global i32 0, align 4
@CR_HOSTXON = common dso_local global i8 0, align 1
@ASYI_TXFLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, %struct.tty_struct*)* @stl_sc26198txunflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198txunflow(%struct.stlport* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.stlport*, %struct.stlport** %3, align 8
  %7 = load i32, i32* @MR0, align 4
  %8 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %6, i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load %struct.stlport*, %struct.stlport** %3, align 8
  %10 = load i32, i32* @MR0, align 4
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @MR0_SWFRXTX, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = trunc i32 %16 to i8
  %18 = call i32 @stl_sc26198setreg(%struct.stlport* %9, i32 %10, i8 zeroext %17)
  %19 = load %struct.stlport*, %struct.stlport** %3, align 8
  %20 = load i32, i32* @SCCR, align 4
  %21 = load i8, i8* @CR_HOSTXON, align 1
  %22 = call i32 @stl_sc26198setreg(%struct.stlport* %19, i32 %20, i8 zeroext %21)
  %23 = load %struct.stlport*, %struct.stlport** %3, align 8
  %24 = call i32 @stl_sc26198wait(%struct.stlport* %23)
  %25 = load %struct.stlport*, %struct.stlport** %3, align 8
  %26 = load i32, i32* @MR0, align 4
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @stl_sc26198setreg(%struct.stlport* %25, i32 %26, i8 zeroext %27)
  %29 = load i32, i32* @ASYI_TXFLOWED, align 4
  %30 = load %struct.stlport*, %struct.stlport** %3, align 8
  %31 = getelementptr inbounds %struct.stlport, %struct.stlport* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  ret void
}

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_sc26198wait(%struct.stlport*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
