; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32 (%struct.stlbrd*)*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"stl_intr(brdp=%p,irq=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stl_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stlbrd*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.stlbrd*
  store %struct.stlbrd* %7, %struct.stlbrd** %5, align 8
  %8 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %9 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %10 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.stlbrd* %8, i32 %11)
  %13 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %14 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %13, i32 0, i32 0
  %15 = load i32 (%struct.stlbrd*)*, i32 (%struct.stlbrd*)** %14, align 8
  %16 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %17 = call i32 %15(%struct.stlbrd* %16)
  %18 = call i32 @IRQ_RETVAL(i32 %17)
  ret i32 %18
}

declare dso_local i32 @pr_debug(i8*, %struct.stlbrd*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
