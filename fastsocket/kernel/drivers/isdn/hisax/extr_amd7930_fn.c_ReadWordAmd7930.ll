; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_ReadWordAmd7930.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_ReadWordAmd7930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32)* @ReadWordAmd7930 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadWordAmd7930(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @rByteAMD(%struct.IsdnCardState* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @rByteAMD(%struct.IsdnCardState* %12, i32 %13)
  %15 = mul nsw i32 256, %14
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wByteAMD(%struct.IsdnCardState* %19, i32 0, i32 %20)
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = call i32 @rByteAMD(%struct.IsdnCardState* %22, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %25 = call i32 @rByteAMD(%struct.IsdnCardState* %24, i32 1)
  %26 = mul nsw i32 256, %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %18, %8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @rByteAMD(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @wByteAMD(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
