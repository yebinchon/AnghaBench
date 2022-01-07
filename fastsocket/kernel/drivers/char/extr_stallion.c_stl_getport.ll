; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_getport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32, %struct.stlpanel** }
%struct.stlpanel = type { i32, %struct.stlport** }
%struct.stlport = type { i32 }

@STL_MAXBRDS = common dso_local global i32 0, align 4
@stl_brds = common dso_local global %struct.stlbrd** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stlport* (i32, i32, i32)* @stl_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stlport* @stl_getport(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stlbrd*, align 8
  %9 = alloca %struct.stlpanel*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @STL_MAXBRDS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store %struct.stlport* null, %struct.stlport** %4, align 8
  br label %65

17:                                               ; preds = %12
  %18 = load %struct.stlbrd**, %struct.stlbrd*** @stl_brds, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.stlbrd*, %struct.stlbrd** %18, i64 %20
  %22 = load %struct.stlbrd*, %struct.stlbrd** %21, align 8
  store %struct.stlbrd* %22, %struct.stlbrd** %8, align 8
  %23 = load %struct.stlbrd*, %struct.stlbrd** %8, align 8
  %24 = icmp eq %struct.stlbrd* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.stlport* null, %struct.stlport** %4, align 8
  br label %65

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.stlbrd*, %struct.stlbrd** %8, align 8
  %32 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %26
  store %struct.stlport* null, %struct.stlport** %4, align 8
  br label %65

36:                                               ; preds = %29
  %37 = load %struct.stlbrd*, %struct.stlbrd** %8, align 8
  %38 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %37, i32 0, i32 1
  %39 = load %struct.stlpanel**, %struct.stlpanel*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.stlpanel*, %struct.stlpanel** %39, i64 %41
  %43 = load %struct.stlpanel*, %struct.stlpanel** %42, align 8
  store %struct.stlpanel* %43, %struct.stlpanel** %9, align 8
  %44 = load %struct.stlpanel*, %struct.stlpanel** %9, align 8
  %45 = icmp eq %struct.stlpanel* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store %struct.stlport* null, %struct.stlport** %4, align 8
  br label %65

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.stlpanel*, %struct.stlpanel** %9, align 8
  %53 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp uge i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %47
  store %struct.stlport* null, %struct.stlport** %4, align 8
  br label %65

57:                                               ; preds = %50
  %58 = load %struct.stlpanel*, %struct.stlpanel** %9, align 8
  %59 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %58, i32 0, i32 1
  %60 = load %struct.stlport**, %struct.stlport*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stlport*, %struct.stlport** %60, i64 %62
  %64 = load %struct.stlport*, %struct.stlport** %63, align 8
  store %struct.stlport* %64, %struct.stlport** %4, align 8
  br label %65

65:                                               ; preds = %57, %56, %46, %35, %25, %16
  %66 = load %struct.stlport*, %struct.stlport** %4, align 8
  ret %struct.stlport* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
