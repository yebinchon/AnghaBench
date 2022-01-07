; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_gazel_interrupt_ipac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_gazel.c_gazel_interrupt_ipac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }

@IPAC_ISTA = common dso_local global i64 0, align 8
@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i64 0, align 8
@MAXCOUNT = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gazel_interrupt_ipac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gazel_interrupt_ipac(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = load i64, i64* @IPAC_ISTA, align 8
  %18 = sub nsw i64 %17, 128
  %19 = call i32 @ReadISAC(%struct.IsdnCardState* %16, i64 %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %95, %2
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 15
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = load i32, i32* @HSCX_ISTA, align 4
  %27 = call i32 @ReadHSCX(%struct.IsdnCardState* %25, i32 1, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @hscx_int_main(%struct.IsdnCardState* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %62 = load i64, i64* @ISAC_ISTA, align 8
  %63 = call i32 @ReadISAC(%struct.IsdnCardState* %61, i64 %62)
  %64 = and i32 254, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @isac_interrupt(%struct.IsdnCardState* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  store i32 1, i32* %7, align 4
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @isac_interrupt(%struct.IsdnCardState* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %82 = load i64, i64* @IPAC_ISTA, align 8
  %83 = sub nsw i64 %82, 128
  %84 = call i32 @ReadISAC(%struct.IsdnCardState* %81, i64 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 63
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MAXCOUNT, align 4
  %94 = icmp slt i32 %92, %93
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ false, %87 ], [ %94, %91 ]
  br i1 %96, label %20, label %97

97:                                               ; preds = %95
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %99 = load i64, i64* @IPAC_MASK, align 8
  %100 = sub nsw i64 %99, 128
  %101 = call i32 @WriteISAC(%struct.IsdnCardState* %98, i64 %100, i32 255)
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %103 = load i64, i64* @IPAC_MASK, align 8
  %104 = sub nsw i64 %103, 128
  %105 = call i32 @WriteISAC(%struct.IsdnCardState* %102, i64 %104, i32 192)
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %107 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %106, i32 0, i32 0
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i32 %108)
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ReadISAC(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @ReadHSCX(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @WriteISAC(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
