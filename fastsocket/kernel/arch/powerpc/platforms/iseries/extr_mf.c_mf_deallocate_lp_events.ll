; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_deallocate_lp_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_deallocate_lp_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_event = type { i32 (i8*, i32)*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mf_deallocate_lp_events(i32 %0, i32 %1, i32 %2, i32 (i8*, i32)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pending_event*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (i8*, i32)* %3, i32 (i8*, i32)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = call %struct.pending_event* (...) @new_pending_event()
  store %struct.pending_event* %13, %struct.pending_event** %11, align 8
  %14 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %15 = icmp eq %struct.pending_event* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  br label %59

19:                                               ; preds = %5
  %20 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %21 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %27 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i64 %25, i64* %29, align 8
  %30 = call i32 @subtype_data(i8 signext 77, float 7.000000e+01, i8 signext 77, i8 signext 68)
  %31 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %32 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %38 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %36, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %44 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %50 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %55 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %56 = getelementptr inbounds %struct.pending_event, %struct.pending_event* %55, i32 0, i32 0
  store i32 (i8*, i32)* %54, i32 (i8*, i32)** %56, align 8
  %57 = load %struct.pending_event*, %struct.pending_event** %11, align 8
  %58 = call i32 @signal_event(%struct.pending_event* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %19, %16
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %64 = icmp ne i32 (i8*, i32)* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 %66(i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62, %59
  ret void
}

declare dso_local %struct.pending_event* @new_pending_event(...) #1

declare dso_local i32 @subtype_data(i8 signext, float, i8 signext, i8 signext) #1

declare dso_local i32 @signal_event(%struct.pending_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
