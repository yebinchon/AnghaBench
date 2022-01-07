; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@ISAR_CTRL_H = common dso_local global i32 0, align 4
@ISAR_CTRL_L = common dso_local global i32 0, align 4
@ISAR_WADR = common dso_local global i32 0, align 4
@ISAR_MBOX = common dso_local global i32 0, align 4
@ISAR_HIS = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i32, i32, i32*)* @sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendmsg(%struct.IsdnCardState* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.IsdnCardState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %14 = call i32 @waitforHIA(%struct.IsdnCardState* %13, i32 4000)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

17:                                               ; preds = %5
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 1
  %20 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %19, align 8
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %22 = load i32, i32* @ISAR_CTRL_H, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 %20(%struct.IsdnCardState* %21, i32 0, i32 %22, i32 %23)
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 1
  %27 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %26, align 8
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %29 = load i32, i32* @ISAR_CTRL_L, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 %27(%struct.IsdnCardState* %28, i32 0, i32 %29, i32 %30)
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 1
  %34 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %33, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %36 = load i32, i32* @ISAR_WADR, align 4
  %37 = call i32 %34(%struct.IsdnCardState* %35, i32 0, i32 %36, i32 0)
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %17
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 1
  %46 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %45, align 8
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %48 = load i32, i32* @ISAR_MBOX, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %46(%struct.IsdnCardState* %47, i32 1, i32 %48, i32 %51)
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %69, %43
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 1
  %60 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %59, align 8
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %62 = load i32, i32* @ISAR_MBOX, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %60(%struct.IsdnCardState* %61, i32 2, i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %40, %17
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %75 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %74, i32 0, i32 1
  %76 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %75, align 8
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %78 = load i32, i32* @ISAR_HIS, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 %76(%struct.IsdnCardState* %77, i32 1, i32 %78, i32 %79)
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %82 = call i32 @waitforHIA(%struct.IsdnCardState* %81, i32 10000)
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %73, %16
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @waitforHIA(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
