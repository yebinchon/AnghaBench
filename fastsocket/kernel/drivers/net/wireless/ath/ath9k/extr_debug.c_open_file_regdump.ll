; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.c_open_file_regdump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.c_open_file_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.file = type { i32* }

@REGDUMP_LINE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"0x%06x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @open_file_regdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_regdump(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @AR_SREV_9300_20_OR_LATER(i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 93140, i32 46336
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = udiv i64 %24, 4
  %26 = add i64 %25, 1
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @REGDUMP_LINE_SIZE, align 8
  %29 = mul i64 %27, %28
  %30 = add i64 %29, 1
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32* @vmalloc(i64 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %2
  %39 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %40 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %68, %38
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = sub i64 %51, %53
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 2
  %57 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 2
  %62 = call i32 @REG_READ(i32 %59, i32 %61)
  %63 = call i64 @scnprintf(i32* %50, i64 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %41

71:                                               ; preds = %41
  %72 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %73 = call i32 @ath9k_ps_restore(%struct.ath_softc* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %35
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(i32) #1

declare dso_local i32* @vmalloc(i64) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i64 @scnprintf(i32*, i64, i8*, i32, i32) #1

declare dso_local i32 @REG_READ(i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
