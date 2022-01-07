; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_init_via.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_init_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via = common dso_local global i32* null, align 8
@DIRB = common dso_local global i64 0, align 8
@TACK = common dso_local global i32 0, align 4
@TIP = common dso_local global i32 0, align 4
@TREQ = common dso_local global i32 0, align 4
@B = common dso_local global i64 0, align 8
@ACR = common dso_local global i64 0, align 8
@SR_CTRL = common dso_local global i32 0, align 4
@SR_EXT = common dso_local global i32 0, align 4
@SR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@SR_INT = common dso_local global i32 0, align 4
@IFR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"CUDA response to sync\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CUDA response to sync (2)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CUDA response to sync (3)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CUDA response to sync (4)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cuda_init_via to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_init_via() #0 {
  %1 = load i32*, i32** @via, align 8
  %2 = load i64, i64* @DIRB, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32*, i32** @via, align 8
  %5 = load i64, i64* @DIRB, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = call i32 @in_8(i32* %6)
  %8 = load i32, i32* @TACK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TIP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TREQ, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @out_8(i32* %3, i32 %14)
  %16 = load i32*, i32** @via, align 8
  %17 = load i64, i64* @B, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32*, i32** @via, align 8
  %20 = load i64, i64* @B, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @in_8(i32* %21)
  %23 = load i32, i32* @TACK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @TIP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @out_8(i32* %18, i32 %26)
  %28 = load i32*, i32** @via, align 8
  %29 = load i64, i64* @ACR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32*, i32** @via, align 8
  %32 = load i64, i64* @ACR, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @in_8(i32* %33)
  %35 = load i32, i32* @SR_CTRL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @SR_EXT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @out_8(i32* %30, i32 %39)
  %41 = load i32*, i32** @via, align 8
  %42 = load i64, i64* @SR, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @in_8(i32* %43)
  %45 = load i32*, i32** @via, align 8
  %46 = load i64, i64* @IER, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* @SR_INT, align 4
  %49 = call i32 @out_8(i32* %47, i32 %48)
  %50 = call i32 @mdelay(i32 4)
  %51 = load i32*, i32** @via, align 8
  %52 = load i64, i64* @SR, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @in_8(i32* %53)
  %55 = load i32*, i32** @via, align 8
  %56 = load i64, i64* @IFR, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* @SR_INT, align 4
  %59 = call i32 @out_8(i32* %57, i32 %58)
  %60 = load i32*, i32** @via, align 8
  %61 = load i64, i64* @B, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32*, i32** @via, align 8
  %64 = load i64, i64* @B, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @in_8(i32* %65)
  %67 = load i32, i32* @TACK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @out_8(i32* %62, i32 %69)
  %71 = load i32*, i32** @via, align 8
  %72 = load i64, i64* @B, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @in_8(i32* %73)
  %75 = load i32, i32* @TREQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @WAIT_FOR(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %80 = load i32*, i32** @via, align 8
  %81 = load i64, i64* @IFR, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @in_8(i32* %82)
  %84 = load i32, i32* @SR_INT, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @WAIT_FOR(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32*, i32** @via, align 8
  %88 = load i64, i64* @SR, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = call i32 @in_8(i32* %89)
  %91 = load i32*, i32** @via, align 8
  %92 = load i64, i64* @IFR, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* @SR_INT, align 4
  %95 = call i32 @out_8(i32* %93, i32 %94)
  %96 = load i32*, i32** @via, align 8
  %97 = load i64, i64* @B, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32*, i32** @via, align 8
  %100 = load i64, i64* @B, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @in_8(i32* %101)
  %103 = load i32, i32* @TACK, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @out_8(i32* %98, i32 %104)
  %106 = load i32*, i32** @via, align 8
  %107 = load i64, i64* @B, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @in_8(i32* %108)
  %110 = load i32, i32* @TREQ, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @WAIT_FOR(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32*, i32** @via, align 8
  %114 = load i64, i64* @IFR, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = call i32 @in_8(i32* %115)
  %117 = load i32, i32* @SR_INT, align 4
  %118 = and i32 %116, %117
  %119 = call i32 @WAIT_FOR(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32*, i32** @via, align 8
  %121 = load i64, i64* @SR, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = call i32 @in_8(i32* %122)
  %124 = load i32*, i32** @via, align 8
  %125 = load i64, i64* @IFR, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* @SR_INT, align 4
  %128 = call i32 @out_8(i32* %126, i32 %127)
  %129 = load i32*, i32** @via, align 8
  %130 = load i64, i64* @B, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32*, i32** @via, align 8
  %133 = load i64, i64* @B, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = call i32 @in_8(i32* %134)
  %136 = load i32, i32* @TIP, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @out_8(i32* %131, i32 %137)
  ret i32 0
}

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WAIT_FOR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
