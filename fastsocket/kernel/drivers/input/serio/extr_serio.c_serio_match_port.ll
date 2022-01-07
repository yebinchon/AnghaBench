; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_match_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_match_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio_device_id = type { i64, i64, i64, i64 }
%struct.serio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SERIO_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio_device_id*, %struct.serio*)* @serio_match_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_match_port(%struct.serio_device_id* %0, %struct.serio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio_device_id*, align 8
  %5 = alloca %struct.serio*, align 8
  store %struct.serio_device_id* %0, %struct.serio_device_id** %4, align 8
  store %struct.serio* %1, %struct.serio** %5, align 8
  br label %6

6:                                                ; preds = %79, %2
  %7 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %82

18:                                               ; preds = %16
  %19 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERIO_ANY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.serio*, %struct.serio** %5, align 8
  %29 = getelementptr inbounds %struct.serio, %struct.serio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %24, %18
  %34 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %35 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SERIO_ANY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %41 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.serio*, %struct.serio** %5, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %39, %33
  %49 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %50 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SERIO_ANY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %56 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.serio*, %struct.serio** %5, align 8
  %59 = getelementptr inbounds %struct.serio, %struct.serio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %54, %48
  %64 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %65 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SERIO_ANY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %71 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.serio*, %struct.serio** %5, align 8
  %74 = getelementptr inbounds %struct.serio, %struct.serio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69, %63
  store i32 1, i32* %3, align 4
  br label %83

79:                                               ; preds = %69, %54, %39, %24
  %80 = load %struct.serio_device_id*, %struct.serio_device_id** %4, align 8
  %81 = getelementptr inbounds %struct.serio_device_id, %struct.serio_device_id* %80, i32 1
  store %struct.serio_device_id* %81, %struct.serio_device_id** %4, align 8
  br label %6

82:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
