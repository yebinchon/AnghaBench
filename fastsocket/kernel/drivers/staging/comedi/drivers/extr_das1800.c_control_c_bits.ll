; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_control_c_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_control_c_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32, i32* }

@UQEN = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@SD = common dso_local global i32 0, align 4
@AREF_COMMON = common dso_local global i32 0, align 4
@CMEN = common dso_local global i32 0, align 4
@UNIPOLAR = common dso_local global i32 0, align 4
@UB = common dso_local global i32 0, align 4
@IPCLK = common dso_local global i32 0, align 4
@XPCLK = common dso_local global i32 0, align 4
@BMDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @control_c_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_c_bits(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.comedi_cmd, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.comedi_cmd* %3 to { i64, i32* }*
  %7 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %6, i32 0, i32 1
  store i32* %1, i32** %8, align 8
  %9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CR_AREF(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @UQEN, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AREF_DIFF, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @SD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AREF_COMMON, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @CMEN, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_RANGE(i32 %34)
  %36 = load i32, i32* @UNIPOLAR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @UB, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %71 [
    i32 129, label %46
    i32 128, label %59
    i32 130, label %65
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %57 [
    i32 128, label %49
    i32 130, label %53
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @IPCLK, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @XPCLK, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %53, %49
  br label %72

59:                                               ; preds = %43
  %60 = load i32, i32* @BMDE, align 4
  %61 = load i32, i32* @IPCLK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %43
  %66 = load i32, i32* @BMDE, align 4
  %67 = load i32, i32* @XPCLK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %65, %59, %58
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
