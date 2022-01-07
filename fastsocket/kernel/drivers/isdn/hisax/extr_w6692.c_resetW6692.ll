; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_resetW6692.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_resetW6692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, i32 (%struct.IsdnCardState*, i32, i32)* }

@W_D_CTL = common dso_local global i32 0, align 4
@W_D_CTL_SRST = common dso_local global i32 0, align 4
@W_IMASK = common dso_local global i32 0, align 4
@W_D_SAM = common dso_local global i32 0, align 4
@W_D_TAM = common dso_local global i32 0, align 4
@W_D_EXIM = common dso_local global i32 0, align 4
@W_D_MODE = common dso_local global i32 0, align 4
@W_D_MODE_RACT = common dso_local global i32 0, align 4
@W6692_USR = common dso_local global i64 0, align 8
@W_PCTL = common dso_local global i32 0, align 4
@W_XDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @resetW6692 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resetW6692(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 1
  %5 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %4, align 8
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %7 = load i32, i32* @W_D_CTL, align 4
  %8 = load i32, i32* @W_D_CTL_SRST, align 4
  %9 = call i32 %5(%struct.IsdnCardState* %6, i32 %7, i32 %8)
  %10 = call i32 @mdelay(i32 10)
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %12, align 8
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = load i32, i32* @W_D_CTL, align 4
  %16 = call i32 %13(%struct.IsdnCardState* %14, i32 %15, i32 0)
  %17 = call i32 @mdelay(i32 10)
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 1
  %20 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %19, align 8
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = load i32, i32* @W_IMASK, align 4
  %23 = call i32 %20(%struct.IsdnCardState* %21, i32 %22, i32 255)
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 1
  %26 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %25, align 8
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %28 = load i32, i32* @W_D_SAM, align 4
  %29 = call i32 %26(%struct.IsdnCardState* %27, i32 %28, i32 255)
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 1
  %32 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %31, align 8
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %34 = load i32, i32* @W_D_TAM, align 4
  %35 = call i32 %32(%struct.IsdnCardState* %33, i32 %34, i32 255)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %37, align 8
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %40 = load i32, i32* @W_D_EXIM, align 4
  %41 = call i32 %38(%struct.IsdnCardState* %39, i32 %40, i32 0)
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 1
  %44 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %43, align 8
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %46 = load i32, i32* @W_D_MODE, align 4
  %47 = load i32, i32* @W_D_MODE_RACT, align 4
  %48 = call i32 %44(%struct.IsdnCardState* %45, i32 %46, i32 %47)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %50, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %53 = load i32, i32* @W_IMASK, align 4
  %54 = call i32 %51(%struct.IsdnCardState* %52, i32 %53, i32 24)
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @W6692_USR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %1
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 1
  %63 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %62, align 8
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %65 = load i32, i32* @W_PCTL, align 4
  %66 = call i32 %63(%struct.IsdnCardState* %64, i32 %65, i32 128)
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %68, align 8
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %71 = load i32, i32* @W_XDATA, align 4
  %72 = call i32 %69(%struct.IsdnCardState* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
