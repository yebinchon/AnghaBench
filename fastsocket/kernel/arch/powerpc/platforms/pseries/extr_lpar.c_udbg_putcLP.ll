; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_putcLP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_lpar.c_udbg_putcLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtermno = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @udbg_putcLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbg_putcLP(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [16 x i8], align 16
  %4 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @udbg_putcLP(i8 signext 13)
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8, i8* %2, align 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 %10, i8* %11, align 16
  br label %12

12:                                               ; preds = %16, %9
  %13 = load i32, i32* @vtermno, align 4
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %15 = call i64 @plpar_put_term_char(i32 %13, i32 1, i8* %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @H_BUSY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %12, label %20

20:                                               ; preds = %16
  ret void
}

declare dso_local i64 @plpar_put_term_char(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
