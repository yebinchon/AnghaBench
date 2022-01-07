; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ipp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ipp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@IPP_CFIG = common dso_local global i32 0, align 4
@IPP_CFIG_DFIFO_PIO_W = common dso_local global i32 0, align 4
@IPP_DFIFO_WR_PTR = common dso_local global i32 0, align 4
@IPP_DFIFO_WR0 = common dso_local global i32 0, align 4
@IPP_DFIFO_WR1 = common dso_local global i32 0, align 4
@IPP_DFIFO_WR2 = common dso_local global i32 0, align 4
@IPP_DFIFO_WR3 = common dso_local global i32 0, align 4
@IPP_DFIFO_WR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32, i32*)* @niu_ipp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_ipp_write(%struct.niu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @IPP_CFIG, align 4
  %9 = call i32 @nr64_ipp(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @IPP_CFIG, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IPP_CFIG_DFIFO_PIO_W, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @nw64_ipp(i32 %10, i32 %13)
  %15 = load i32, i32* @IPP_DFIFO_WR_PTR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nw64_ipp(i32 %15, i32 %16)
  %18 = load i32, i32* @IPP_DFIFO_WR0, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nw64_ipp(i32 %18, i32 %21)
  %23 = load i32, i32* @IPP_DFIFO_WR1, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nw64_ipp(i32 %23, i32 %26)
  %28 = load i32, i32* @IPP_DFIFO_WR2, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nw64_ipp(i32 %28, i32 %31)
  %33 = load i32, i32* @IPP_DFIFO_WR3, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nw64_ipp(i32 %33, i32 %36)
  %38 = load i32, i32* @IPP_DFIFO_WR4, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nw64_ipp(i32 %38, i32 %41)
  %43 = load i32, i32* @IPP_CFIG, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IPP_CFIG_DFIFO_PIO_W, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @nw64_ipp(i32 %43, i32 %47)
  ret void
}

declare dso_local i32 @nr64_ipp(i32) #1

declare dso_local i32 @nw64_ipp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
