; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_ultra2_term_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_ultra2_term_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@BRDDAT7 = common dso_local global i8 0, align 1
@BRDDAT6 = common dso_local global i8 0, align 1
@BRDDAT5 = common dso_local global i8 0, align 1
@BRDDAT4 = common dso_local global i8 0, align 1
@BRDDAT3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32*, i32*, i32*, i32*, i32*)* @aic7xxx_ultra2_term_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_ultra2_term_detect(%struct.aic7xxx_host* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.aic7xxx_host*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %7, align 8
  %15 = call zeroext i8 @read_brdctl(%struct.aic7xxx_host* %14)
  store i8 %15, i8* %13, align 1
  %16 = load i8, i8* %13, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @BRDDAT7, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = load i32*, i32** %12, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i8, i8* %13, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @BRDDAT6, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i8, i8* %13, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @BRDDAT5, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8, i8* %13, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @BRDDAT4, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i8, i8* %13, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @BRDDAT3, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  ret void
}

declare dso_local zeroext i8 @read_brdctl(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
