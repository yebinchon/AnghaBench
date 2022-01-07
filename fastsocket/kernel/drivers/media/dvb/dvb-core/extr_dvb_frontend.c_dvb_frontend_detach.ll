; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*)*, %struct.TYPE_4__, %struct.TYPE_6__, i32 (%struct.dvb_frontend.3*)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.2*)* }
%struct.dvb_frontend.2 = type opaque
%struct.dvb_frontend.3 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_frontend_detach(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i32 (%struct.dvb_frontend.3*)*, i32 (%struct.dvb_frontend.3*)** %5, align 8
  %7 = icmp ne i32 (%struct.dvb_frontend.3*)* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32 (%struct.dvb_frontend.3*)*, i32 (%struct.dvb_frontend.3*)** %11, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = bitcast %struct.dvb_frontend* %13 to %struct.dvb_frontend.3*
  %15 = call i32 %12(%struct.dvb_frontend.3* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %20, align 8
  %22 = icmp ne i32 (%struct.dvb_frontend.2*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.2*)*, i32 (%struct.dvb_frontend.2*)** %27, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %30 = bitcast %struct.dvb_frontend* %29 to %struct.dvb_frontend.2*
  %31 = call i32 %28(%struct.dvb_frontend.2* %30)
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %36, align 8
  %38 = icmp ne i32 (%struct.dvb_frontend.1*)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %43, align 8
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %46 = bitcast %struct.dvb_frontend* %45 to %struct.dvb_frontend.1*
  %47 = call i32 %44(%struct.dvb_frontend.1* %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %51, align 8
  %53 = icmp ne i32 (%struct.dvb_frontend.0*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %57, align 8
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %60 = bitcast %struct.dvb_frontend* %59 to %struct.dvb_frontend.0*
  %61 = call i32 %58(%struct.dvb_frontend.0* %60)
  br label %62

62:                                               ; preds = %54, %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
