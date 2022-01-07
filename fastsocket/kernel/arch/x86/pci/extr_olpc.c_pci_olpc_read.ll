; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_olpc.c_pci_olpc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_olpc.c_pci_olpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32*)* }

@pci_direct_conf1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@zero_loc = common dso_local global i32 0, align 4
@is_lx = common dso_local global i32 0, align 4
@lxnb_hdr = common dso_local global i32 0, align 4
@gxnb_hdr = common dso_local global i32 0, align 4
@lxfb_hdr = common dso_local global i32 0, align 4
@gxfb_hdr = common dso_local global i32 0, align 4
@aes_hdr = common dso_local global i32 0, align 4
@ff_loc = common dso_local global i32 0, align 4
@isa_hdr = common dso_local global i32 0, align 4
@ac97_hdr = common dso_local global i32 0, align 4
@ohci_hdr = common dso_local global i32 0, align 4
@ehci_hdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_olpc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_olpc_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @is_simulated(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = load i32 (i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pci_direct_conf1, i32 0, i32 0), align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 %20(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %26)
  store i32 %27, i32* %7, align 4
  br label %101

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 112
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32* @zero_loc, i32** %14, align 8
  br label %84

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %82 [
    i32 8, label %34
    i32 9, label %45
    i32 10, label %56
    i32 120, label %66
    i32 123, label %70
    i32 124, label %74
    i32 125, label %78
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @is_lx, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @lxnb_hdr, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @gxnb_hdr, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32, i32* %11, align 4
  %44 = call i32* @hdr_addr(i32 %42, i32 %43)
  store i32* %44, i32** %14, align 8
  br label %83

45:                                               ; preds = %32
  %46 = load i32, i32* @is_lx, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @lxfb_hdr, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @gxfb_hdr, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %11, align 4
  %55 = call i32* @hdr_addr(i32 %53, i32 %54)
  store i32* %55, i32** %14, align 8
  br label %83

56:                                               ; preds = %32
  %57 = load i32, i32* @is_lx, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @aes_hdr, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32* @hdr_addr(i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32* [ %62, %59 ], [ @ff_loc, %63 ]
  store i32* %65, i32** %14, align 8
  br label %83

66:                                               ; preds = %32
  %67 = load i32, i32* @isa_hdr, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32* @hdr_addr(i32 %67, i32 %68)
  store i32* %69, i32** %14, align 8
  br label %83

70:                                               ; preds = %32
  %71 = load i32, i32* @ac97_hdr, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32* @hdr_addr(i32 %71, i32 %72)
  store i32* %73, i32** %14, align 8
  br label %83

74:                                               ; preds = %32
  %75 = load i32, i32* @ohci_hdr, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32* @hdr_addr(i32 %75, i32 %76)
  store i32* %77, i32** %14, align 8
  br label %83

78:                                               ; preds = %32
  %79 = load i32, i32* @ehci_hdr, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32* @hdr_addr(i32 %79, i32 %80)
  store i32* %81, i32** %14, align 8
  br label %83

82:                                               ; preds = %32
  store i32* @ff_loc, i32** %14, align 8
  br label %83

83:                                               ; preds = %82, %78, %74, %70, %66, %64, %52, %41
  br label %84

84:                                               ; preds = %83, %31
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %98 [
    i32 1, label %86
    i32 2, label %90
    i32 4, label %94
  ]

86:                                               ; preds = %84
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  br label %100

90:                                               ; preds = %84
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %100

94:                                               ; preds = %84
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  br label %100

98:                                               ; preds = %84
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %98, %94, %90, %86
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @is_simulated(i32, i32) #1

declare dso_local i32* @hdr_addr(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
