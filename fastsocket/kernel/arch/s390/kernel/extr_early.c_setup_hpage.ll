; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_early.c_setup_hpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_early.c_setup_hpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MACHINE_FLAG_HPAGE = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_hpage() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @stfl()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = zext i32 %3 to i64
  %5 = and i64 %4, 8388608
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = and i64 %9, 536870912
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %0
  br label %18

13:                                               ; preds = %7
  %14 = load i32, i32* @MACHINE_FLAG_HPAGE, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %17 = call i32 @__ctl_set_bit(i32 0, i32 23)
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @stfl(...) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
