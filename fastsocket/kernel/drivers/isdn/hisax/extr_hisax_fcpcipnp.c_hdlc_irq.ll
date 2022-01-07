; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_adapter = type { i32 (%struct.fritz_adapter*, i32)*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"HDLC %c stat %#x\00", align 1
@HDLC_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_adapter*)* @hdlc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_irq(%struct.fritz_adapter* %0) #0 {
  %2 = alloca %struct.fritz_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fritz_adapter* %0, %struct.fritz_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load %struct.fritz_adapter*, %struct.fritz_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %9, i32 0, i32 0
  %11 = load i32 (%struct.fritz_adapter*, i32)*, i32 (%struct.fritz_adapter*, i32)** %10, align 8
  %12 = load %struct.fritz_adapter*, %struct.fritz_adapter** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 %11(%struct.fritz_adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 65, %15
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DBG(i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8 signext %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HDLC_INT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %8
  %25 = load %struct.fritz_adapter*, %struct.fritz_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @hdlc_irq_one(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %8
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8 signext, i32) #1

declare dso_local i32 @hdlc_irq_one(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
