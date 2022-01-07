; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198portinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198portinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32 }
%struct.stlpanel = type { i32, i64 }
%struct.stlport = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"stl_sc26198portinit(brdp=%p,panelp=%p,portp=%p)\0A\00", align 1
@IOPCR = common dso_local global i32 0, align 4
@IOPCR_SETSIGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlbrd*, %struct.stlpanel*, %struct.stlport*)* @stl_sc26198portinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198portinit(%struct.stlbrd* %0, %struct.stlpanel* %1, %struct.stlport* %2) #0 {
  %4 = alloca %struct.stlbrd*, align 8
  %5 = alloca %struct.stlpanel*, align 8
  %6 = alloca %struct.stlport*, align 8
  store %struct.stlbrd* %0, %struct.stlbrd** %4, align 8
  store %struct.stlpanel* %1, %struct.stlpanel** %5, align 8
  store %struct.stlport* %2, %struct.stlport** %6, align 8
  %7 = load %struct.stlbrd*, %struct.stlbrd** %4, align 8
  %8 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %9 = load %struct.stlport*, %struct.stlport** %6, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.stlbrd* %7, %struct.stlpanel* %8, %struct.stlport* %9)
  %11 = load %struct.stlbrd*, %struct.stlbrd** %4, align 8
  %12 = icmp eq %struct.stlbrd* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %15 = icmp eq %struct.stlpanel* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.stlport*, %struct.stlport** %6, align 8
  %18 = icmp eq %struct.stlport* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  br label %63

20:                                               ; preds = %16
  %21 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %22 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.stlport*, %struct.stlport** %6, align 8
  %25 = getelementptr inbounds %struct.stlport, %struct.stlport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 8
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %23, %30
  %32 = load %struct.stlport*, %struct.stlport** %6, align 8
  %33 = getelementptr inbounds %struct.stlport, %struct.stlport* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.stlport*, %struct.stlport** %6, align 8
  %35 = getelementptr inbounds %struct.stlport, %struct.stlport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 4
  %39 = load %struct.stlport*, %struct.stlport** %6, align 8
  %40 = getelementptr inbounds %struct.stlport, %struct.stlport* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.stlpanel*, %struct.stlpanel** %5, align 8
  %42 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.stlport*, %struct.stlport** %6, align 8
  %45 = getelementptr inbounds %struct.stlport, %struct.stlport* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.stlport*, %struct.stlport** %6, align 8
  %47 = getelementptr inbounds %struct.stlport, %struct.stlport* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.stlport*, %struct.stlport** %6, align 8
  %49 = getelementptr inbounds %struct.stlport, %struct.stlport* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.stlport*, %struct.stlport** %6, align 8
  %52 = getelementptr inbounds %struct.stlport, %struct.stlport* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BRDENABLE(i32 %50, i32 %53)
  %55 = load %struct.stlport*, %struct.stlport** %6, align 8
  %56 = load i32, i32* @IOPCR, align 4
  %57 = load i32, i32* @IOPCR_SETSIGS, align 4
  %58 = call i32 @stl_sc26198setreg(%struct.stlport* %55, i32 %56, i32 %57)
  %59 = load %struct.stlport*, %struct.stlport** %6, align 8
  %60 = getelementptr inbounds %struct.stlport, %struct.stlport* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BRDDISABLE(i32 %61)
  br label %63

63:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlbrd*, %struct.stlpanel*, %struct.stlport*) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i32) #1

declare dso_local i32 @BRDDISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
