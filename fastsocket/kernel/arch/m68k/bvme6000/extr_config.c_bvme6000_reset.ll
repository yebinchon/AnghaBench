; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/bvme6000/extr_config.c_bvme6000_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/bvme6000/extr_config.c_bvme6000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@BVME_PIT_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0D\0A\0ACalled bvme6000_reset\0D\0A\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bvme6000_reset() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i32, i32* @BVME_PIT_BASE, align 4
  %3 = sext i32 %2 to i64
  %4 = inttoptr i64 %3 to %struct.TYPE_2__*
  store volatile %struct.TYPE_2__* %4, %struct.TYPE_2__** %1, align 8
  %5 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %6 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, 16
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %0, %10
  br label %10
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
