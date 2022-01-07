; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198panelinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198panelinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i64, i64 }
%struct.stlpanel = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"stl_sc26198panelinit(brdp=%p,panelp=%p)\0A\00", align 1
@SC26198_PORTS = common dso_local global i32 0, align 4
@BRD_ECHPCI = common dso_local global i64 0, align 8
@SCCR = common dso_local global i32 0, align 4
@XP_ADDR = common dso_local global i64 0, align 8
@CR_RESETALL = common dso_local global i32 0, align 4
@XP_DATA = common dso_local global i64 0, align 8
@TSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"STALLION: sc26198 not responding, brd=%d panel=%d chip=%d\0A\00", align 1
@GCCR = common dso_local global i32 0, align 4
@GCCR_IVRTYPCHANACK = common dso_local global i32 0, align 4
@WDTRCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlbrd*, %struct.stlpanel*)* @stl_sc26198panelinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_sc26198panelinit(%struct.stlbrd* %0, %struct.stlpanel* %1) #0 {
  %3 = alloca %struct.stlbrd*, align 8
  %4 = alloca %struct.stlpanel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stlbrd* %0, %struct.stlbrd** %3, align 8
  store %struct.stlpanel* %1, %struct.stlpanel** %4, align 8
  %9 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %10 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.stlbrd* %9, %struct.stlpanel* %10)
  %12 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %13 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %16 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BRDENABLE(i32 %14, i32 %17)
  store i32 0, i32* %5, align 4
  %19 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %20 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  %23 = load i32, i32* @SC26198_PORTS, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %26 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BRD_ECHPCI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %32 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stlbrd*, %struct.stlbrd** %3, align 8
  %35 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @outb(i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %30, %2
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %111, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %114

43:                                               ; preds = %39
  %44 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %45 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @SCCR, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @XP_ADDR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %50, i64 %54)
  %56 = load i32, i32* @CR_RESETALL, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @XP_DATA, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i32 %56, i64 %60)
  %62 = load i32, i32* @TSTR, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @XP_ADDR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %62, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @XP_DATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i64 @inb(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %43
  %75 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %76 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %79 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80, i32 %81)
  br label %111

83:                                               ; preds = %43
  %84 = load i32, i32* %6, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @GCCR, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @XP_ADDR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %88, i64 %92)
  %94 = load i32, i32* @GCCR_IVRTYPCHANACK, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @XP_DATA, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outb(i32 %94, i64 %98)
  %100 = load i32, i32* @WDTRCR, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @XP_ADDR, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %100, i64 %104)
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @XP_DATA, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outb(i32 255, i64 %109)
  br label %111

111:                                              ; preds = %83, %74
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %39

114:                                              ; preds = %39
  %115 = load %struct.stlpanel*, %struct.stlpanel** %4, align 8
  %116 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BRDDISABLE(i32 %117)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @pr_debug(i8*, %struct.stlbrd*, %struct.stlpanel*) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @inb(i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
