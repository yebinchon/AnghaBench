; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_tcam_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_tcam_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@TCAM_KEY_0 = common dso_local global i32 0, align 4
@TCAM_KEY_1 = common dso_local global i32 0, align 4
@TCAM_KEY_2 = common dso_local global i32 0, align 4
@TCAM_KEY_3 = common dso_local global i32 0, align 4
@TCAM_KEY_MASK_0 = common dso_local global i32 0, align 4
@TCAM_KEY_MASK_1 = common dso_local global i32 0, align 4
@TCAM_KEY_MASK_2 = common dso_local global i32 0, align 4
@TCAM_KEY_MASK_3 = common dso_local global i32 0, align 4
@TCAM_CTL = common dso_local global i32 0, align 4
@TCAM_CTL_RWC_TCAM_WRITE = common dso_local global i32 0, align 4
@TCAM_CTL_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i32*, i32*)* @tcam_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcam_write(%struct.niu* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @TCAM_KEY_0, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nw64(i32 %9, i32 %12)
  %14 = load i32, i32* @TCAM_KEY_1, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nw64(i32 %14, i32 %17)
  %19 = load i32, i32* @TCAM_KEY_2, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nw64(i32 %19, i32 %22)
  %24 = load i32, i32* @TCAM_KEY_3, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nw64(i32 %24, i32 %27)
  %29 = load i32, i32* @TCAM_KEY_MASK_0, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nw64(i32 %29, i32 %32)
  %34 = load i32, i32* @TCAM_KEY_MASK_1, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nw64(i32 %34, i32 %37)
  %39 = load i32, i32* @TCAM_KEY_MASK_2, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nw64(i32 %39, i32 %42)
  %44 = load i32, i32* @TCAM_KEY_MASK_3, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nw64(i32 %44, i32 %47)
  %49 = load i32, i32* @TCAM_CTL, align 4
  %50 = load i32, i32* @TCAM_CTL_RWC_TCAM_WRITE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @nw64(i32 %49, i32 %52)
  %54 = load %struct.niu*, %struct.niu** %5, align 8
  %55 = load i32, i32* @TCAM_CTL_STAT, align 4
  %56 = call i32 @tcam_wait_bit(%struct.niu* %54, i32 %55)
  ret i32 %56
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @tcam_wait_bit(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
