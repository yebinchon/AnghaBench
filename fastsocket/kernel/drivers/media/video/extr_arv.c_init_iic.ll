; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_init_iic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_init_iic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"init_iic:\0A\00", align 1
@PLDI2CCR = common dso_local global i32 0, align 4
@PLDI2CMOD = common dso_local global i32 0, align 4
@PLDI2CACK = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@PLDI2CFREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_iic() #0 {
  %1 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @PLDI2CCR, align 4
  %3 = call i32 @ar_outl(i32 0, i32 %2)
  %4 = load i32, i32* @PLDI2CMOD, align 4
  %5 = call i32 @ar_outl(i32 768, i32 %4)
  %6 = load i32, i32* @PLDI2CACK, align 4
  %7 = call i32 @ar_outl(i32 1, i32 %6)
  %8 = load i32, i32* @freq, align 4
  %9 = icmp eq i32 %8, 75
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @PLDI2CFREQ, align 4
  %12 = call i32 @ar_outl(i32 369, i32 %11)
  br label %23

13:                                               ; preds = %0
  %14 = load i32, i32* @freq, align 4
  %15 = icmp eq i32 %14, 50
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @PLDI2CFREQ, align 4
  %18 = call i32 @ar_outl(i32 244, i32 %17)
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @PLDI2CFREQ, align 4
  %21 = call i32 @ar_outl(i32 244, i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* @PLDI2CCR, align 4
  %25 = call i32 @ar_outl(i32 1, i32 %24)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @ar_outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
