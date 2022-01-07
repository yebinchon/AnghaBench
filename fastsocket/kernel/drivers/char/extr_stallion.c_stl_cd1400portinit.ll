; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400portinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400portinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i64 }
%struct.stlpanel = type { i64, i64 }
%struct.stlport = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"stl_cd1400portinit(brdp=%p,panelp=%p,portp=%p)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@BRD_ECHPCI = common dso_local global i64 0, align 8
@EREG_BANKSIZE = common dso_local global i64 0, align 8
@CAR = common dso_local global i32 0, align 4
@LIVR = common dso_local global i32 0, align 4
@GFRCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlbrd*, %struct.stlpanel*, %struct.stlport*)* @stl_cd1400portinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400portinit(%struct.stlbrd* %0, %struct.stlpanel* %1, %struct.stlport* %2) #0 {
  %4 = alloca %struct.stlbrd*, align 8
  %5 = alloca %struct.stlpanel*, align 8
  %6 = alloca %struct.stlport*, align 8
  %7 = alloca i64, align 8
  store %struct.stlbrd* %0, %struct.stlbrd** %4, align 8
  store %struct.stlpanel* %1, %struct.stlpanel** %5, align 8
  store %struct.stlport* %2, %struct.stlport** %6, align 8
  %8 = load %struct.stlbrd*, %struct.stlbrd** %4, align 8
  %9 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %10 = load %struct.stlport*, %struct.stlport** %6, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.stlbrd* %8, %struct.stlpanel* %9, %struct.stlport* %10)
  %12 = load %struct.stlbrd*, %struct.stlbrd** %4, align 8
  %13 = icmp eq %struct.stlbrd* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %16 = icmp eq %struct.stlpanel* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.stlport*, %struct.stlport** %6, align 8
  %19 = icmp eq %struct.stlport* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %3
  br label %95

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %22)
  %24 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %25 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.stlbrd*, %struct.stlbrd** %4, align 8
  %28 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRD_ECHPCI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  %33 = load %struct.stlport*, %struct.stlport** %6, align 8
  %34 = getelementptr inbounds %struct.stlport, %struct.stlport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %21
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @EREG_BANKSIZE, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i64 [ 0, %37 ], [ %39, %38 ]
  %42 = add nsw i64 %26, %41
  %43 = load %struct.stlport*, %struct.stlport** %6, align 8
  %44 = getelementptr inbounds %struct.stlport, %struct.stlport* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load %struct.stlport*, %struct.stlport** %6, align 8
  %46 = getelementptr inbounds %struct.stlport, %struct.stlport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 4
  %49 = shl i32 %48, 5
  %50 = load %struct.stlport*, %struct.stlport** %6, align 8
  %51 = getelementptr inbounds %struct.stlport, %struct.stlport* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %53 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.stlport*, %struct.stlport** %6, align 8
  %56 = getelementptr inbounds %struct.stlport, %struct.stlport* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %54, %59
  %61 = load %struct.stlport*, %struct.stlport** %6, align 8
  %62 = getelementptr inbounds %struct.stlport, %struct.stlport* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.stlport*, %struct.stlport** %6, align 8
  %64 = getelementptr inbounds %struct.stlport, %struct.stlport* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.stlport*, %struct.stlport** %6, align 8
  %67 = getelementptr inbounds %struct.stlport, %struct.stlport* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @BRDENABLE(i32 %65, i64 %68)
  %70 = load %struct.stlport*, %struct.stlport** %6, align 8
  %71 = load i32, i32* @CAR, align 4
  %72 = load %struct.stlport*, %struct.stlport** %6, align 8
  %73 = getelementptr inbounds %struct.stlport, %struct.stlport* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 3
  %76 = call i32 @stl_cd1400setreg(%struct.stlport* %70, i32 %71, i32 %75)
  %77 = load %struct.stlport*, %struct.stlport** %6, align 8
  %78 = load i32, i32* @LIVR, align 4
  %79 = load %struct.stlport*, %struct.stlport** %6, align 8
  %80 = getelementptr inbounds %struct.stlport, %struct.stlport* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 3
  %83 = call i32 @stl_cd1400setreg(%struct.stlport* %77, i32 %78, i32 %82)
  %84 = load %struct.stlport*, %struct.stlport** %6, align 8
  %85 = load i32, i32* @GFRCR, align 4
  %86 = call i32 @stl_cd1400getreg(%struct.stlport* %84, i32 %85)
  %87 = load %struct.stlport*, %struct.stlport** %6, align 8
  %88 = getelementptr inbounds %struct.stlport, %struct.stlport* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.stlport*, %struct.stlport** %6, align 8
  %90 = getelementptr inbounds %struct.stlport, %struct.stlport* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BRDDISABLE(i32 %91)
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %93)
  br label %95

95:                                               ; preds = %40, %20
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlbrd*, %struct.stlpanel*, %struct.stlport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i64) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
