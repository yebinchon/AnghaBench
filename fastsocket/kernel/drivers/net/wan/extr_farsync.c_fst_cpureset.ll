; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_cpureset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_cpureset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i64, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@DBG_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error in reading interrupt line register\0A\00", align 1
@CNTRL_9054 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Error in writing interrupt line register\0A\00", align 1
@CNTRL_9052 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @fst_cpureset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_cpureset(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %10 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FST_FAMILY_TXU, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %1
  %15 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %16 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %19 = call i64 @pci_read_config_byte(i32 %17, i32 %18, i8* %3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @DBG_ASS, align 4
  %23 = call i32 @dbg(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %26 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CNTRL_9054, align 8
  %29 = add nsw i64 %27, %28
  %30 = add nsw i64 %29, 2
  %31 = call i32 @outw(i32 17423, i64 %30)
  %32 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %33 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CNTRL_9054, align 8
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 2
  %38 = call i32 @outw(i32 1039, i64 %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %47, %24
  %43 = load i32, i32* @jiffies, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %4, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %42

48:                                               ; preds = %42
  %49 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %50 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CNTRL_9054, align 8
  %53 = add nsw i64 %51, %52
  %54 = add nsw i64 %53, 2
  %55 = call i32 @outw(i32 9231, i64 %54)
  %56 = load i32, i32* @jiffies, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %64, %48
  %60 = load i32, i32* @jiffies, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %59

65:                                               ; preds = %59
  %66 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %67 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CNTRL_9054, align 8
  %70 = add nsw i64 %68, %69
  %71 = add nsw i64 %70, 2
  %72 = call i32 @outw(i32 1039, i64 %71)
  %73 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %74 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %77 = load i8, i8* %3, align 1
  %78 = call i64 @pci_write_config_byte(i32 %75, i32 %76, i8 zeroext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %65
  %81 = load i32, i32* @DBG_ASS, align 4
  %82 = call i32 @dbg(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %65
  br label %107

84:                                               ; preds = %1
  %85 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %86 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CNTRL_9052, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @inl(i64 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, 1073741824
  %93 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %94 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CNTRL_9052, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outl(i32 %92, i64 %97)
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, -1073741825
  %101 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %102 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CNTRL_9052, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outl(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %84, %83
  ret void
}

declare dso_local i64 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @pci_write_config_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
