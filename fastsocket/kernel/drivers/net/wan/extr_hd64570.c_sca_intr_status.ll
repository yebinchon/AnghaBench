; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hd64570.c_sca_intr_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hd64570.c_sca_intr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISR0 = common dso_local global i32 0, align 4
@ISR1 = common dso_local global i32 0, align 4
@DSR_EOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sca_intr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca_intr_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @ISR0, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @sca_in(i32 %6, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ISR1, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @sca_in(i32 %9, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @SCA_INTR_DMAC_RX(i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 12
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @SCA_INTR_DMAC_TX(i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 48
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @SCA_INTR_DMAC_RX(i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @SCA_INTR_DMAC_TX(i32 1)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 15
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @SCA_INTR_MSCI(i32 0)
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 240
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @SCA_INTR_MSCI(i32 1)
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @SCA_INTR_DMAC_TX(i32 0)
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = call i32 @DSR_TX(i32 0)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @sca_in(i32 %65, i32* %66)
  %68 = load i32, i32* @DSR_EOM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = call i32 @SCA_INTR_DMAC_TX(i32 0)
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %64
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @SCA_INTR_DMAC_TX(i32 1)
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = call i32 @DSR_TX(i32 1)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @sca_in(i32 %82, i32* %83)
  %85 = load i32, i32* @DSR_EOM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = call i32 @SCA_INTR_DMAC_TX(i32 1)
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %81
  br label %93

93:                                               ; preds = %92, %76
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @sca_in(i32, i32*) #1

declare dso_local i32 @SCA_INTR_DMAC_RX(i32) #1

declare dso_local i32 @SCA_INTR_DMAC_TX(i32) #1

declare dso_local i32 @SCA_INTR_MSCI(i32) #1

declare dso_local i32 @DSR_TX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
