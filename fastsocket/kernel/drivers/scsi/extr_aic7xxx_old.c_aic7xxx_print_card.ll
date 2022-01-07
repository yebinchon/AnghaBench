; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_print_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.register_ranges = type { i32, [32 x i32] }
%struct.aic7xxx_host = type { i32, i64, i32, i32, i32 }

@aic7xxx_print_card.cards_ds = internal global <{ %struct.register_ranges, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, { i32, <{ [24 x i32], [8 x i32] }> } }> <{ %struct.register_ranges zeroinitializer, { i32, <{ [20 x i32], [12 x i32] }> } { i32 10, <{ [20 x i32], [12 x i32] }> <{ [20 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 25, i32 31, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 155, i32 159], [12 x i32] zeroinitializer }> }, { i32, <{ [18 x i32], [14 x i32] }> } { i32 9, <{ [18 x i32], [14 x i32] }> <{ [18 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 159], [14 x i32] zeroinitializer }> }, { i32, <{ [18 x i32], [14 x i32] }> } { i32 9, <{ [18 x i32], [14 x i32] }> <{ [18 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 159], [14 x i32] zeroinitializer }> }, { i32, <{ [20 x i32], [12 x i32] }> } { i32 10, <{ [20 x i32], [12 x i32] }> <{ [20 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 25, i32 28, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 159], [12 x i32] zeroinitializer }> }, { i32, <{ [20 x i32], [12 x i32] }> } { i32 10, <{ [20 x i32], [12 x i32] }> <{ [20 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 26, i32 28, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 159], [12 x i32] zeroinitializer }> }, %struct.register_ranges { i32 16, [32 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 132, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 154, i32 159, i32 159, i32 224, i32 241, i32 244, i32 244, i32 246, i32 246, i32 248, i32 248, i32 250, i32 252, i32 254, i32 255] }, { i32, <{ [24 x i32], [8 x i32] }> } { i32 12, <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 25, i32 27, i32 31, i32 96, i32 96, i32 98, i32 102, i32 128, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 154, i32 159, i32 159, i32 224, i32 241], [8 x i32] zeroinitializer }> }, %struct.register_ranges { i32 16, [32 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 132, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 154, i32 159, i32 159, i32 224, i32 241, i32 244, i32 244, i32 246, i32 246, i32 248, i32 248, i32 250, i32 252, i32 254, i32 255] }, { i32, <{ [24 x i32], [8 x i32] }> } { i32 12, <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 132, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 154, i32 156, i32 159, i32 224, i32 241, i32 244, i32 252], [8 x i32] zeroinitializer }> }, { i32, <{ [24 x i32], [8 x i32] }> } { i32 12, <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 0, i32 5, i32 8, i32 17, i32 24, i32 31, i32 96, i32 96, i32 98, i32 102, i32 132, i32 142, i32 144, i32 149, i32 151, i32 151, i32 154, i32 154, i32 156, i32 159, i32 224, i32 241, i32 244, i32 252], [8 x i32] zeroinitializer }> } }>, align 16
@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s at \00", align 1
@board_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"VLB Slot %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"EISA Slot %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PCI %d/%d/%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Card Dump:\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%02x:%02x \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@SDSCB_QOFF = common dso_local global i32 0, align 4
@SNSCB_QOFF = common dso_local global i32 0, align 4
@HNSCB_QOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_print_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_print_card(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %7 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %8 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** @board_names, align 8
  %13 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %14 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  switch i32 %24, label %36 [
    i32 128, label %25
    i32 130, label %30
    i32 129, label %35
  ]

25:                                               ; preds = %1
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %49

30:                                               ; preds = %1
  %31 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %32 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %49

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %38 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %41 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PCI_SLOT(i32 %42)
  %44 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %45 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PCI_FUNC(i32 %46)
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %36, %30, %25
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %98, %49
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [11 x %struct.register_ranges], [11 x %struct.register_ranges]* bitcast (<{ %struct.register_ranges, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, { i32, <{ [24 x i32], [8 x i32] }> } }>* @aic7xxx_print_card.cards_ds to [11 x %struct.register_ranges]*), i64 0, i64 %54
  %56 = getelementptr inbounds %struct.register_ranges, %struct.register_ranges* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [11 x %struct.register_ranges], [11 x %struct.register_ranges]* bitcast (<{ %struct.register_ranges, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, { i32, <{ [24 x i32], [8 x i32] }> } }>* @aic7xxx_print_card.cards_ds to [11 x %struct.register_ranges]*), i64 0, i64 %61
  %63 = getelementptr inbounds %struct.register_ranges, %struct.register_ranges* %62, i32 0, i32 1
  %64 = load i32, i32* %3, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %63, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %94, %59
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [11 x %struct.register_ranges], [11 x %struct.register_ranges]* bitcast (<{ %struct.register_ranges, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [18 x i32], [14 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, { i32, <{ [20 x i32], [12 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, %struct.register_ranges, { i32, <{ [24 x i32], [8 x i32] }> }, { i32, <{ [24 x i32], [8 x i32] }> } }>* @aic7xxx_print_card.cards_ds to [11 x %struct.register_ranges]*), i64 0, i64 %72
  %74 = getelementptr inbounds %struct.register_ranges, %struct.register_ranges* %73, i32 0, i32 1
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %74, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %70, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %69
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @aic_inb(%struct.aic7xxx_host* %84, i32 %85)
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %69

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %51

101:                                              ; preds = %51
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  %107 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %108 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %115 = load i32, i32* @SDSCB_QOFF, align 4
  %116 = call i32 @aic_outb(%struct.aic7xxx_host* %114, i32 0, i32 %115)
  %117 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %118 = load i32, i32* @SNSCB_QOFF, align 4
  %119 = call i32 @aic_outb(%struct.aic7xxx_host* %117, i32 0, i32 %118)
  %120 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %121 = load i32, i32* @HNSCB_QOFF, align 4
  %122 = call i32 @aic_outb(%struct.aic7xxx_host* %120, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %113, %106
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
