; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bt848_sat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bt848_sat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32 }

@BT848_SAT_U_LO = common dso_local global i32 0, align 4
@BT848_SAT_V_LO = common dso_local global i32 0, align 4
@BT848_E_CONTROL = common dso_local global i32 0, align 4
@BT848_O_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32)* @bt848_sat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt848_sat(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 50
  %17 = ashr i32 %16, 7
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bttv*, %struct.bttv** %3, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 100, %21
  %23 = mul nsw i32 %18, %22
  %24 = sdiv i32 %23, 50
  %25 = ashr i32 %24, 7
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 180
  %28 = sdiv i64 %27, 254
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 7
  %32 = and i32 %31, 2
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load i32, i32* @BT848_SAT_U_LO, align 4
  %41 = call i32 @btwrite(i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = load i32, i32* @BT848_SAT_V_LO, align 4
  %45 = call i32 @btwrite(i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BT848_E_CONTROL, align 4
  %48 = call i32 @btaor(i32 %46, i32 -4, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BT848_O_CONTROL, align 4
  %51 = call i32 @btaor(i32 %49, i32 -4, i32 %50)
  ret void
}

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
