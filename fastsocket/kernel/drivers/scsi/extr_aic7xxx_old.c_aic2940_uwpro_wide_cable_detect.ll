; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic2940_uwpro_wide_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic2940_uwpro_wide_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@BRDDAT7 = common dso_local global i8 0, align 1
@BRDDAT5 = common dso_local global i32 0, align 4
@BRDDAT6 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32*, i32*, i32*)* @aic2940_uwpro_wide_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic2940_uwpro_wide_cable_detect(%struct.aic7xxx_host* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %11 = call i32 @write_brdctl(%struct.aic7xxx_host* %10, i32 0)
  %12 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %13 = call zeroext i8 @read_brdctl(%struct.aic7xxx_host* %12)
  store i8 %13, i8* %9, align 1
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @BRDDAT7, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %24 = load i32, i32* @BRDDAT5, align 4
  %25 = call i32 @write_brdctl(%struct.aic7xxx_host* %23, i32 %24)
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %27 = call zeroext i8 @read_brdctl(%struct.aic7xxx_host* %26)
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @BRDDAT6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i8, i8* %9, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @BRDDAT7, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
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
