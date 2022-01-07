; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic787x_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic787x_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@BRDDAT6 = common dso_local global i8 0, align 1
@BRDDAT7 = common dso_local global i8 0, align 1
@BRDDAT5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32*, i32*, i32*, i32*)* @aic787x_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic787x_cable_detect(%struct.aic7xxx_host* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.aic7xxx_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %13 = call i32 @write_brdctl(%struct.aic7xxx_host* %12, i32 0)
  %14 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %15 = call zeroext i8 @read_brdctl(%struct.aic7xxx_host* %14)
  store i8 %15, i8* %11, align 1
  %16 = load i8, i8* %11, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @BRDDAT6, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @BRDDAT7, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %35 = load i32, i32* @BRDDAT5, align 4
  %36 = call i32 @write_brdctl(%struct.aic7xxx_host* %34, i32 %35)
  %37 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %38 = call zeroext i8 @read_brdctl(%struct.aic7xxx_host* %37)
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @BRDDAT6, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @BRDDAT7, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  ret void
}

declare dso_local i32 @write_brdctl(%struct.aic7xxx_host*, i32) #1

declare dso_local zeroext i8 @read_brdctl(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
