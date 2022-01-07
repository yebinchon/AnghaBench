; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4171_card.c_get_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4171_card.c_get_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I365_STATUS = common dso_local global i32 0, align 4
@I365_CSC = common dso_local global i32 0, align 4
@I365_INTCTL = common dso_local global i32 0, align 4
@I365_PC_IOCARD = common dso_local global i32 0, align 4
@I365_CSC_STSCHG = common dso_local global i32 0, align 4
@I365_CS_STSCHG = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@I365_CSC_BVD1 = common dso_local global i32 0, align 4
@I365_CSC_BVD2 = common dso_local global i32 0, align 4
@I365_CS_BVD1 = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@I365_CS_BVD2 = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@I365_CSC_READY = common dso_local global i32 0, align 4
@I365_CS_READY = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@I365_CSC_DETECT = common dso_local global i32 0, align 4
@I365_CS_DETECT = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @I365_STATUS, align 4
  %8 = call i32 @exca_read_byte(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @I365_CSC, align 4
  %11 = call i32 @exca_read_byte(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @I365_INTCTL, align 4
  %14 = call i32 @exca_read_byte(i32 %12, i32 %13)
  %15 = load i32, i32* @I365_PC_IOCARD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @I365_CSC_STSCHG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @I365_CS_STSCHG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @SS_STSCHG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23, %18
  br label %64

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @I365_CSC_BVD1, align 4
  %36 = load i32, i32* @I365_CSC_BVD2, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @I365_CS_BVD1, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @SS_BATDEAD, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @I365_CS_BVD1, align 4
  %52 = load i32, i32* @I365_CS_BVD2, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @I365_CS_BVD1, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @SS_BATWARN, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %45
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @I365_CSC_READY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @I365_CS_READY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @SS_READY, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %69, %64
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @I365_CSC_DETECT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @I365_CS_DETECT, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @I365_CS_DETECT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @SS_DETECT, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %83, %78
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @exca_read_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
